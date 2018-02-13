![logo](logo.png)

# **5Dim's mod**

## **Global Links**

- [Patreon](https://www.patreon.com/5Dim)
- [Download from ModPortal](https://mods.factorio.com/mods/McGuten)
- [Issues](https://github.com/McGuten/5DimsFactorioMods/issues)
- [Discord comunity](https://discord.gg/CTEMFd9)

## Description

This mod has **21 modules** and we recommend use all in your game.

### Mod list
#### Core module
  - **Core**.
    - Core and settings of 5Dim's mod.

#### Optional modules
  - **Automated Fuel and Ammo**.
    - Automatically fills vehicles and building when you place it in the floor.
  - **Automatization**.
    - Add a lot of new inserters, side inserters, more faster inserter, loaders, new tiers of oil refineries and new tiers of assembling machine.
  - **Battlefield**.
    - Add 2 new laser turret, 2 new gun turret, new electrical turret, new tier wall and gates and a lot of new biters, spitter and spawners, be carefull.
  - **Bot Recaller**.
    - Utility mod to help recall/collect bots within a network.
  - **Decoration**.
    - Add a lot of new items to decorate your base.
  - **Energy**.
    - Add 2 tier of accumulators, boilers, steam engine, solar panel, pumps, new electric poles and a new big lamp.
  - **Equipment**.
    - Add 2 tier of batteries, exoskeleton, personal laser defense, shields and a new solar, roboport and reactor.
  - **Infinite Research**.
    - Make a lot of tech infinite (braking, all speed ammo, crafting speed, logistics slots, stack of construction robots, inserter stack, research speed and logistic trash slots).
  - **Locales**.
    - Add translates.
  - **Logistics**.
    - Add 3 new tiers of construction and logistics robots, a new roboport and a new tier of logistics chest.
  - **Mining**.
    - Add 3 speedy mining drill and 3 range mining drills, 2 new tiers of pumpjack and a water pumpjack.
  - **Module**.
    - Add pollution module, add tier 4 and 5 of all modules and make welded modules (you can combine 2 modules).
  - **Nuclear**.
    - Add a new tier of nuclear energy.
  - **Ores**.
    - Add a lot of new ores to make factorio more funny (**Require [Bob Library](https://mods.factorio.com/mod/boblibrary)**).
  - **Resources**.
    - Add new tier of steel furnace and electric furnace, add a new masher that allow you duplicate your ores making dust and smelting it.
  - **Trade**.
    - Add a trader that allow you to trade coins and resources.
  - **Trains**.
    - Add 2 new tiers of wagon and fluid wagon, a new speedy locomotive and reinforced locomotive.
  - **Transport**.
    - Add 2 new tiers of transport belts and pipes, x30 and x50 belts and pipes to ground and a lot of new chest.
  - **Vehicle**.
    - Add air plane, truck and boat also active grids to all vehicles (of any mod).


## Translations
1. If you want to translate the mod to other lang you should use the follow template
2. [5Dim's Locale > locale > en.example](Factorio%200.16.X/5dim_locale_0.16.6/locale/en.example)
3. You should use this template to translate the mod and upload it with [Pull Request](https://github.com/McGuten/5DimsFactorioMods/pulls)

## Errors

### **If you have problems with missing items or you add the mod in mid game you should use this command**
You also should empty your inventory, sometimes your inventory would lost.

This command will refresh all your technologies.
```lua
/c tech = {}
for name,technology in pairs(game.player.force.technologies) do
  if technology.researched == true then
    table.insert( tech, technology.name )
  end
end
game.player.force.reset()
for _, tech_name in pairs(tech) do
  for name,technology in pairs(game.player.force.technologies) do
    if (technology.name == tech_name) then
      technology.researched = true
    end
  end
end
```
