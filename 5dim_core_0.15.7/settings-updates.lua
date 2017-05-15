data:extend({

-- Basic changes
    {type = "int-setting", name = "5d-change-inventory", setting_type = "startup", default_value = 60, minimum_value = 1, maximum_value = 1000,localised_name = "Stacks of player inventory (Default: 60)"},
    {type = "int-setting", name = "5d-change-stack", setting_type = "startup", default_value = 1, minimum_value = 1, maximum_value = 1000, localised_name = "Stacks of items (Multiplier)"},
    {type = "int-setting", name = "5d-long-reach", setting_type = "startup", default_value = 6, minimum_value = 1, maximum_value = 1000, localised_name = "Long reach (Default: 6)", localised_description = "Distance for build and open inventories, for can interact with all screen: 125"},
    {type = "int-setting", name = "5d-light-radius", setting_type = "startup", default_value = 25, minimum_value = 1, maximum_value = 1000, localised_name = "Light radius (Default: 25)"},
    {type = "double-setting", name = "5d-crafting-speed", setting_type = "startup", default_value = 1, minimum_value = 0.01, maximum_value = 1000, localised_name = "Crafting speed (Default 1)"},
    {type = "double-setting", name = "5d-mining-speed", setting_type = "startup", default_value = 0.01, minimum_value = 0.001, maximum_value = 1000, localised_name = "Mining speed (Multiplier)"},
    {type = "bool-setting", name = "5d-tree", setting_type = "startup", default_value = false, per_user = false, localised_name = "Small tree collision box"},

-- Cheat changes
    {type = "int-setting", name = "5d-hp", setting_type = "startup", default_value = 250, minimum_value = 1, maximum_value = 100000, localised_name = "Player health (Default 250)"},
    {type = "double-setting", name = "5d-healing", setting_type = "startup", default_value = 0.15, minimum_value = 0.1, maximum_value = 1000, localised_name = "Player healing per tick (Default 0.15)"},

-- Harded game
    --{type = "int-setting", name = "5d-recipe", setting_type = "startup", default_value = 1, minimum_value = 1, maximum_value = 1000, localised_name = "Recipes more expensive (Multiplier)"},
    --{type = "double-setting", name = "5d-technology", setting_type = "startup", default_value = 1, minimum_value = 1, maximum_value = 1000, localised_name = "Technologies more expensive (Multiplier)"},
    {type = "double-setting", name = "5d-bicho-spawner-hp", setting_type = "startup", default_value = 1, minimum_value = 0.01, maximum_value = 1000, localised_name = "Enemies spawners health (Multiplier)"},
    {type = "double-setting", name = "5d-bicho-hp", setting_type = "startup", default_value = 1, minimum_value = 0.01, maximum_value = 1000, localised_name = "Enemies health (Multiplier)"},
    {type = "double-setting", name = "5d-bicho-healing", setting_type = "startup", default_value = 1, minimum_value = 0.001, maximum_value = 1000, localised_name = "Enemies healing per tick (Multiplier)"},
    {type = "int-setting", name = "5d-long-mine", setting_type = "startup", default_value = 6, minimum_value = 1, maximum_value = 1000, localised_name = "Long Mine (Default: 6)", localised_description = "Extend the mining distance of your player: 125"},
})