data:extend({
    
    -- Basic changes
    {
        type = "int-setting", 
        name = "5d-change-inventory", 
        setting_type = "startup", 
        default_value = 60, 
        minimum_value = 1, 
        maximum_value = 1000, 
        localised_name = "[5Dim's mods] Stacks of player inventory (Default: 60)"
        }, 
    {
        type = "int-setting", 
        name = "5d-change-stack", 
        setting_type = "startup", 
        default_value = 1, 
        minimum_value = 1, 
        maximum_value = 1000, 
        localised_name = "Stacks of items (Multiplier)"
        }, 
    {
        type = "int-setting", 
        name = "5d-long-reach", 
        setting_type = "startup", 
        default_value = 6, 
        minimum_value = 1, 
        maximum_value = 1000, 
        localised_name = "[5Dim's mods] Long reach (Default: 6)", 
        localised_description = "Distance for build and open inventories, for can interact with all screen: 125"
        }, 
    {
        type = "int-setting", 
        name = "5d-light-radius", 
        setting_type = "startup", 
        default_value = 25, 
        minimum_value = 1, 
        maximum_value = 1000, 
        localised_name = "[5Dim's mods] Light radius (Default: 25)"
        }, 
    {
        type = "double-setting", 
        name = "5d-crafting-speed", 
        setting_type = "startup", 
        default_value = 1, 
        minimum_value = 0.01, 
        maximum_value = 1000, 
        localised_name = "[5Dim's mods] Crafting speed (Default 1)"
        }, 
    {
        type = "double-setting", 
        name = "5d-mining-speed", 
        setting_type = "startup", 
        default_value = 0.01, 
        minimum_value = 0.001, 
        maximum_value = 1000, 
        localised_name = "[5Dim's mods] Mining speed (Multiplier)"
        }, 
    {
        type = "bool-setting", 
        name = "5d-tree", 
        setting_type = "startup", 
        default_value = false, 
        per_user = false, 
        localised_name = "[5Dim's mods] Small tree collision box"
        }, 
    
    -- Cheat changes
    {
        type = "int-setting", 
        name = "5d-hp", 
        setting_type = "startup", 
        default_value = 250, 
        minimum_value = 1, 
        maximum_value = 100000, 
        localised_name = "[5Dim's mods] Player health (Default 250)"
        }, 
    {
        type = "double-setting", 
        name = "5d-healing", 
        setting_type = "startup", 
        default_value = 0.15, 
        minimum_value = 0.1, 
        maximum_value = 1000, 
        
        localised_name = "[5Dim's mods] Player healing per tick (Default 0.15)"
        }, 
    {
        type = "double-setting", 
        name = "5d-bicho-spawner-hp", 
        setting_type = "startup", 
        default_value = 1, 
        minimum_value = 0.01, 
        maximum_value = 1000, 
        localised_name = "[5Dim's mods] Enemies spawners health (Multiplier)"
        }, 
    {
        type = "double-setting", 
        name = "5d-bicho-hp", 
        setting_type = "startup", 
        default_value = 1, 
        minimum_value = 0.01, 
        maximum_value = 1000, 
        localised_name = "[5Dim's mods] Enemies health (Multiplier)"
        }, 
    {
        type = "double-setting", 
        name = "5d-bicho-healing", 
        setting_type = "startup", 
        default_value = 1, 
        minimum_value = 0.001, 
        maximum_value = 1000, 
        localised_name = "[5Dim's mods] Enemies healing per tick (Multiplier)"
        }, 
    {
        type = "int-setting", 
        name = "5d-long-mine", 
        setting_type = "startup", 
        default_value = 6, 
        minimum_value = 1, 
        maximum_value = 1000, 
        localised_name = "[5Dim's mods] Long Mine (Default: 6)", 
        localised_description = "Extend the mining distance of your player: 125"
        }, 
})

if mods["5dim_battlefield"] then
    data:extend({
        {
            type = "bool-setting", 
            name = "5d-suicide", 
            setting_type = "startup", 
            default_value = true, 
            per_user = false, 
            localised_name = "[5Dim's Battlefield] Suicide bitters", 
            localised_description = "You want to active suicide bitters? (Default: True)"
            }, 
        {
            type = "bool-setting", 
            name = "5d-exp", 
            setting_type = "startup", 
            default_value = true, 
            per_user = false, 
            localised_name = "[5Dim's Battlefield] Experimental enemies", 
            localised_description = "You want to active experimental enemies? (Default: True)"
            }, 
        {
            type = "bool-setting", 
            name = "5d-swimmer", 
            setting_type = "startup", 
            default_value = true, 
            per_user = false, 
            localised_name = "[5Dim's Battlefield] Swimmer bitters", 
            localised_description = "You want to active experimental enemies? (Default: True)"
            }, 
        {
            type = "bool-setting", 
            name = "5d-climber", 
            setting_type = "startup", 
            default_value = true, 
            per_user = false, 
            localised_name = "[5Dim's Battlefield] Climber bitters", 
            localised_description = "You want to active experimental enemies? (Default: True)"
            }, 
    })
end