-------------------------------------------------------------------------------
-- CONFIGURATION
--

-- Can be either entity name or type.
-- Simply adding new entities to the list does not make them work.
-- But adding new entities through other mods to the categories enabled below should work.
local CONFIG_ENABLE = {
    -- Categories
    ["ammo-turret"] = true,
    car = true,
    locomotive = true,
    -- Specific items
    ["burner-inserter"] = true,
    ["stone-furnace"] = true,
    ["steel-furnace"] = true,
    ["burner-mining-drill"] = true,
    boiler = true
}

-- ZZZ we could figure CONFIG_UNIQUE_TYPES out by inspecting data.projectile.final_action and such.
-- But I can't be arsed.
-- If an ammo_category is set to true in this table, it means that:
--  - If the entity has more than one slot that accepts this category,
--    we will attempt to insert a unique item from this category in every slot.
-- THEORETICAL SCENARIO
-- So if a tank has 3x rocket slots:
--  - There's 6 types of rockets
--  - We sort the rockets by order
--  - When we place this tank type on a surface, we look in the players
--    inventory for 1 stack of the top 3 sorted rocket types.
--  - If we dont find that, we will in with whatever we find.
local CONFIG_UNIQUE_TYPES = {
    rocket = true,
    ["cannon-shell"] = true
}

-------------------------------------------------------------------------------
-- DOCS
--

-- HOW SORTING WORKS
-- https://forums.factorio.com/viewtopic.php?f=25&t=24163#p152955
-- quote Rseding:
-- "In simple terms: It's pure string alphabetical order comparison"
-- item1.order = "a-[b]-b[car]";
-- item2.order = "a-[a]-b[car]";
-- return item1.order < item2.order;
-- That's how the game compares them internally

-- STACK SIZE
-- It seems it doesn't really matter what stack size we insert, because if
-- there's more in your inventory it gets automatically inserted by the game
-- once the equipped clip is empty. So we can always insert 1, really.
-- But that doesnt look good, so we insert a bit more.

-- For ammunition:
-- I think stack size/4 is a good number. I certainly dont want 10 or 100 clips.
-- If we dont have enough for that, we insert math.ceil(count/4)

-- defines.inventory.fuel: 1
-- defines.inventory.car_fuel: 1
-- defines.inventory.car_ammo: 3
-- defines.inventory.turret_ammo: 1
-- defines.inventory.car_trunk: 2

--                     #Weapons      fuel      car_fuel      car_ammo      turret_ammo      car_trunk
-- Vanilla Car         1             1         1             1             1                80
-- Vanilla Tank        2             2         2             2             2                80
-- Tankwerkz Goliath   3             2         2             3             2                80
-- Tankwerkz Flame     2             2         2             2             2                80
-- Tankwerkz Hydra     2             2         2             2             2                80
-- Flame Tumbler       1             1         1             1             1                20

-- Gun Turret          1             1         1             -             1                -

-- So each car can have several weapons of the same type. The Goliath
-- has 2x cannon and 1x minigun.
-- They share the same inventory in car_ammo, but turret_ammo only reflects the 2x cannons I think.
-- This is almost - but not quite - impossible to account for.

-- ammo categories:
-- bullet: piercing-rounds-magazine, firearm-magazine
-- cannon-shell: tankwerkz-ap-cannon-shell, tankwerkz-hiex-cannon-shell, explosive-cannon-shell, cannon-shell
-- flame-thrower: flame-thrower-ammo
-- rocket: explosive-rocket, rocket
-- shotgun-shell: piercing-shotgun-shell, shotgun-shell
-- tankwerkz-heavy-mg: tankwerkz-heavy-mg-ammo
-- tankwerkz-hydra-rocket: tankwerkz-hydra-rocket
-- tankwerkz-tank-flame-thrower: tankwerkz-tank-flame-thrower-ammo

-------------------------------------------------------------------------------
-- CACHE TABLES
--

-- key: entityname, value: indexed table of slots from 0-N with whatever category fits in that slot
local slotCategories = {}
-- Sorted array of fuel item names by real fuel value (fuel_value * stack_size)
local sortedFuels = nil
-- key: ammo_category, value: sorted list of ammunition for that category
local ammoCategories = nil

local itemStackCache
do
    local cache = {}
    itemStackCache =
        setmetatable(
        {},
        {
            __index = cache,
            __newindex = function(_, key, value)
                if cache[key] then
                    cache[key].count = value
                else
                    cache[key] = {name = key, count = value}
                end
            end
        }
    )
end

-------------------------------------------------------------------------------
-- CACHE BUILDERS
--

local getStackSize
do
    -- ini == best format ever
    local iniFuel = "folk-fill-fuel-stack-size"
    local iniAmmo = "folk-fill-ammo-stack-size"
    local playerSettings = {}

    local type = type
    local meta = {
        __index = function(self, item)
            local ret = nil
            if type(item) ~= "string" then
                return 20
            end
            local p = game.item_prototypes[item]
            if type(p) == "table" then
                local max = type(p.stack_size) ~= "nil" and tonumber(p.stack_size) or 50
                if max > 1 then
                    local percent
                    if p.fuel_category then
                        percent = playerSettings[self.player_index].fuel
                    else
                        percent = playerSettings[self.player_index].ammo
                    end
                    -- This can sometimes happen because the mod-settings system is not entirely stable yet.
                    -- It seems to index stored mod settings instead of mapping them, so a previously
                    -- registered boolean-setting at one point bled into an int-setting when I removed
                    -- the boolean one.
                    if type(percent) ~= "number" then
                        percent = 75
                    end
                    ret = math.max(1, math.ceil(max * (percent / 100)))
                else
                    ret = 1
                end
            end
            if type(ret) ~= "number" then
                return 10
            end
            rawset(self, item, ret)
            return ret
        end
    }
    local players = {}

    local function resetPlayer(index)
        local ini = settings.get_player_settings(game.players[index])
        playerSettings[index] = {
            fuel = ini[iniFuel].value,
            ammo = ini[iniAmmo].value
        }
        players[index] =
            setmetatable(
            {
                player_index = index
            },
            meta
        )
    end

    getStackSize = function(player, item)
        if not players[player.index] then
            resetPlayer(player.index)
        end
        return players[player.index][item]
    end

    script.on_event(
        defines.events.on_runtime_mod_setting_changed,
        function(event)
            if not event then
                return
            end
            if event.setting == iniFuel or event.setting == iniAmmo then
                if not players[event.player_index] then
                    return
                end
                resetPlayer(event.player_index)
            end
        end
    )
end

-- Only done once per session per player. Could share between players I guess, but whatever.
local buildFuelTable
do
    -- Map of fuel names to real fuel values, multiplied by stack size
    local fuelValues = nil
    local function sortFuels(a, b)
        return fuelValues[a] > fuelValues[b]
    end
    buildFuelTable = function()
        -- Dump previous tables for garbage collection
        sortedFuels = {}
        fuelValues = {}

        for name, item in pairs(game.item_prototypes) do
            if item.fuel_value and item.fuel_value > 0 then
                -- Dang these values are crazy, up in the trillions
                local realScore = (item.stack_size * item.fuel_value) / 10000000
                fuelValues[name] = realScore
                sortedFuels[#sortedFuels + 1] = name
            end
        end
        table.sort(sortedFuels, sortFuels)
        --print(serpent.block(sortedFuels))
        fuelValues = nil
    end
end

-- Only done once per session per player. Could share between players I guess, but whatever.
local buildAmmoData
do
    -- ZZZ We dont really use the ammo categories at all, it could be a flat
    -- sorted list of ammo items.
    local ammoOrder = nil
    local function sortByOrder(a, b)
        return ammoOrder[a] > ammoOrder[b]
    end
    buildAmmoData = function()
        ammoCategories = {}
        ammoOrder = {}
        for name, item in pairs(game.item_prototypes) do
            local ammoType = item.get_ammo_type()
            if ammoType and ammoType.category then
                local c = ammoType.category
                if not ammoCategories[c] then
                    ammoCategories[c] = {}
                end
                ammoCategories[c][#ammoCategories[c] + 1] = name
                ammoOrder[name] = item.order
            end
        end
        for _, tbl in pairs(ammoCategories) do
            table.sort(tbl, sortByOrder)
        end
        ammoOrder = nil
    end
end

-------------------------------------------------------------------------------
-- AMMUNITION INSERTERTS FOR CARS/TURRETS
--

-- Car ammo slots support filters
local function insertCarAmmo(entity, player, invAmmo)
    if not ammoCategories then
        buildAmmoData()
    end

    -- Find out which ammo types belong in each slot
    -- This block is only run once per entity entry
    if not slotCategories[entity.name] then
        slotCategories[entity.name] = {}
        for i = 1, #invAmmo do
            for category, validitems in pairs(ammoCategories) do
                if invAmmo.can_set_filter(i, validitems[1]) then
                    slotCategories[entity.name][i] = category
                    break
                end
            end
        end
    end

    -- player inventory reference, set when we need it
    -- because I dont know how expensive get_inventory is
    local fromInv = nil

    local lastInsertedItem = nil
    local lastInsertedCategory = nil
    for slot, category in next, slotCategories[entity.name] do
        if lastInsertedCategory and category ~= lastInsertedCategory then
            lastInsertedCategory = nil
            lastInsertedItem = nil
        end

        -- The reason we use these two variables is a bit complicated
        -- 1. We dont want to insert full stacks into the placed item, because it is a waste of resources
        -- 2. If there is more than 1 weapon slot of the same type (Tankwerkz Goliath), the only
        --    way I can find to do this without inserting a full stack into the first slot is to
        --    first insert the configured amount into slot 1, then set an item filter on slot 2
        --    and the game will prioritize slot 2 for the next inventory.insert call.
        local skip = false
        local filter = false

        for i, ammoItemName in next, ammoCategories[category] do
            if
                CONFIG_UNIQUE_TYPES[category] and lastInsertedCategory and lastInsertedItem and
                    lastInsertedItem == ammoItemName
             then
                -- We already inserted this item type in the previous slot of the same category
                -- So just skip this iteration and jump to next item type
                skip = true
                -- UNLESS the ammo item is the last entry in ammoCategories[category], because that means
                -- it's the most primitive type, and there is no "next kind of ammo".
                if (#ammoCategories[category]) == i then
                    skip = false
                    filter = true
                end
            end
            if not skip then
                if not fromInv then
                    fromInv = player.get_inventory(defines.inventory.character_main)
                    if not fromInv or not fromInv.valid or fromInv.is_empty() then
                        return
                    end
                end
                local count = fromInv.get_item_count(ammoItemName)
                local toInsert = getStackSize(player, ammoItemName)

                -- Do we have enough items on us to insert stack/4 ?
                if count >= toInsert then
                    -- We dont have enough, insert math.ceil(count/4) - minimum 1
                    itemStackCache[ammoItemName] = toInsert
                    if filter then
                        invAmmo.set_filter(slot, ammoItemName)
                    end
                    local inserted = invAmmo.insert(itemStackCache[ammoItemName])
                    if inserted and inserted > 0 then
                        lastInsertedItem = ammoItemName
                        lastInsertedCategory = category
                        itemStackCache[ammoItemName] = inserted
                        fromInv.remove(itemStackCache[ammoItemName])
                    end
                    -- Get to next slot
                    break
                elseif count > 0 then
                    if filter then
                        invAmmo.set_filter(slot, ammoItemName)
                    end
                    itemStackCache[ammoItemName] = math.ceil(count / 4)
                    local inserted = invAmmo.insert(itemStackCache[ammoItemName])
                    if inserted and inserted > 0 then
                        lastInsertedItem = ammoItemName
                        lastInsertedCategory = category
                        itemStackCache[ammoItemName] = inserted
                        fromInv.remove(itemStackCache[ammoItemName])
                    end
                    -- Get to next slot
                    break
                end
            end
            skip = false
            filter = false
        end
    end
end

-- Turret ammo slots do not support filters
-- So we basically just have to try everything and see what works
local function insertTurretAmmo(entity, player, invAmmo)
    if not ammoCategories then
        buildAmmoData()
    end

    -- Find out which ammo types belong in each slot
    -- This block is only run once per entity entry
    if not slotCategories[entity.name] then
        slotCategories[entity.name] = {}
        local i = 1
        for category, validitems in pairs(ammoCategories) do
            if invAmmo.can_insert(validitems[1]) then
                slotCategories[entity.name][i] = category
                i = i + 1
            end
        end
    end

    local fromInv = nil
    local lastInsertedItem = nil
    local lastInsertedCategory = nil
    for _, category in next, slotCategories[entity.name] do
        if lastInsertedCategory and category ~= lastInsertedCategory then
            lastInsertedCategory = nil
            lastInsertedItem = nil
        end
        local skip = false
        local filter = false
        for i, ammoItemName in next, ammoCategories[category] do
            if
                CONFIG_UNIQUE_TYPES[category] and lastInsertedCategory and lastInsertedItem and
                    lastInsertedItem == ammoItemName
             then
                skip = true
                if (#ammoCategories[category]) == i then
                    skip = false
                    filter = true
                end
            end
            if not skip then
                if not fromInv then
                    fromInv = player.get_inventory(defines.inventory.character_main)
                    if not fromInv or not fromInv.valid or fromInv.is_empty() then
                        return
                    end
                end
                local count = fromInv.get_item_count(ammoItemName)
                local toInsert = getStackSize(player, ammoItemName)

                -- XXX THIS IS NOT TESTED BECAUSE I DONT HAVE A TURRET WITH MORE THAN ONE AMMO SLOT
                -- If |filter| is set here, it means that this slot is the N-th
                -- slot in a row with the same ammo category.
                -- Since turret ammo slots can not be filtered, it means we need
                -- to increase the amount to the stack size so that it "overflows"
                -- into the next slot.
                if filter then
                    -- I presume this is exceptionally rare. In fact, I do presume that it will never happen.
                    -- But obviously only a fool would presume that.
                    -- The point is, we dont cache the stack_sizes, just look it up here.
                    local size = game.item_prototypes[ammoItemName].stack_size
                    if size and size > 1 then
                        if (count - toInsert) < (size + 1) then
                            break
                        end -- Just escape out if we dont have enough
                        toInsert = size
                    end
                end

                -- Do we have enough items on us to insert?
                if count >= toInsert then
                    -- We dont have enough, insert math.ceil(count/4) - minimum 1
                    -- unless this is the N-th slot with the same type, then just stop.
                    itemStackCache[ammoItemName] = toInsert
                    local inserted = invAmmo.insert(itemStackCache[ammoItemName])
                    if inserted and inserted > 0 then
                        lastInsertedItem = ammoItemName
                        lastInsertedCategory = category
                        itemStackCache[ammoItemName] = inserted
                        fromInv.remove(itemStackCache[ammoItemName])
                    end
                    -- Get to next slot
                    break
                elseif count > 0 and not filter then
                    itemStackCache[ammoItemName] = math.ceil(count / 4)
                    local inserted = invAmmo.insert(itemStackCache[ammoItemName])
                    if inserted and inserted > 0 then
                        lastInsertedItem = ammoItemName
                        lastInsertedCategory = category
                        itemStackCache[ammoItemName] = inserted
                        fromInv.remove(itemStackCache[ammoItemName])
                    end
                    -- Get to next slot
                    break
                elseif filter then
                    break
                end
            end
            skip = false
            filter = false
        end
    end
end

-------------------------------------------------------------------------------
-- FUEL INSERTERS FOR TRAINS/CARS
--

local insertFuel
do
    local function insert(fuel, to, from)
        local inserted = to.insert(itemStackCache[fuel])
        if inserted and inserted > 0 then -- Just in case this fuel type doesnt work or something
            itemStackCache[fuel] = inserted
            from.remove(itemStackCache[fuel])
            return true
        end
    end
    insertFuel = function(entity, player, invFuel)
        local fromInv = player.get_inventory(defines.inventory.character_main)
        if not fromInv or not fromInv.valid or fromInv.is_empty() then
            return
        end

        if not sortedFuels then
            buildFuelTable()
        end
        -- Haxx; if we are not passed an invFuel argument, we set it to the entity
        -- itself (which accepts .insert)
        if not invFuel then
            invFuel = entity
        end -- .get_inventory(defines.inventory.fuel)

        for _, fuel in next, sortedFuels do
            local count = fromInv.get_item_count(fuel)
            local should = getStackSize(player, fuel)

            if count >= should then
                itemStackCache[fuel] = should
                if insert(fuel, invFuel, fromInv) then
                    break
                end
            elseif count > 0 then
                itemStackCache[fuel] = count
                if insert(fuel, invFuel, fromInv) then
                    break
                end
            end
        end
    end
end

-------------------------------------------------------------------------------
-- EVENT HANDLERS
--
do
    -- For entities where we probably want to just look at every type that
    -- is placed
    local typeHandlers = {}

    -- For entities where we only want to look at specific ones, and not the
    -- whole category of entity types
    -- ZZZ Obviously this does not scale to modded items
    local nameHandlers = {}

    typeHandlers["ammo-turret"] = function(entity, player)
        local invAmmo = entity.get_inventory(defines.inventory.turret_ammo)
        if invAmmo and invAmmo.valid and invAmmo.is_empty() then
            insertTurretAmmo(entity, player, invAmmo)
        end
    end

    typeHandlers.car = function(entity, player)
        local invAmmo = entity.get_inventory(defines.inventory.car_ammo)
        if invAmmo and invAmmo.valid and invAmmo.is_empty() then
            insertCarAmmo(entity, player, invAmmo)
        end

        local invFuel = entity.get_inventory(defines.inventory.fuel)
        if invFuel and invFuel.valid and invFuel.is_empty() then
            insertFuel(entity, player, invFuel)
        end
    end

    typeHandlers.locomotive = insertFuel
    nameHandlers["stone-furnace"] = insertFuel
    nameHandlers["steel-furnace"] = insertFuel
    nameHandlers["burner-inserter"] = insertFuel
    nameHandlers["burner-mining-drill"] = insertFuel
    nameHandlers.boiler = insertFuel

    -- created_entity: LuaEntity
    -- player_index: int
    local function onBuildEntity(e)
        local entity = e.created_entity
        if not entity or not entity.valid or (not CONFIG_ENABLE[entity.type] and not CONFIG_ENABLE[entity.name]) then
            return
        end

        -- Just in case someone inserts an unknown type into CONFIG_ENABLE
        if typeHandlers[entity.type] then
            typeHandlers[entity.type](entity, game.players[e.player_index])
        elseif nameHandlers[entity.name] then
            nameHandlers[entity.name](entity, game.players[e.player_index])
        end
    end

    script.on_event(defines.events.on_built_entity, onBuildEntity)

    -- It is too imba. No longer works with the above function either.
    --script.on_event(defines.events.on_robot_built_entity, onBuildEntity)
end
