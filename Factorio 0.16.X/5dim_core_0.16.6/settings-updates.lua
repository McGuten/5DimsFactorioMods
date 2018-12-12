data:extend(
    {
        {
            type = "int-setting",
            name = "5d-change-inventory",
            order = "aa",
            setting_type = "startup",
            default_value = 60,
            minimum_value = 1,
            maximum_value = 1000,
            localised_name = {"5dim-setting.5d-change-inventory"}
        },
        {
            type = "int-setting",
            name = "5d-change-stack",
            order = "ab",
            setting_type = "startup",
            default_value = 1,
            minimum_value = 1,
            maximum_value = 1000,
            localised_name = {"5dim-setting.5d-change-stack"}
        },
        {
            type = "int-setting",
            name = "5d-long-reach",
            order = "ba",
            setting_type = "startup",
            default_value = 6,
            minimum_value = 1,
            maximum_value = 1000,
            localised_name = {"5dim-setting.5d-long-reach"},
            localised_description = {"5dim-setting-description.5d-long-reach"}
        },
        {
            type = "int-setting",
            name = "5d-long-mine",
            order = "bb",
            setting_type = "startup",
            default_value = 6,
            minimum_value = 1,
            maximum_value = 1000,
            localised_name = {"5dim-setting.5d-long-mine"},
            localised_description = {"5dim-setting-description.5d-long-mine"}
        },
        {
            type = "double-setting",
            name = "5d-mining-speed",
            order = "bc",
            setting_type = "startup",
            default_value = 0.01,
            minimum_value = 0.001,
            maximum_value = 1000,
            localised_name = {"5dim-setting.5d-mining-speed"}
        },
        {
            type = "int-setting",
            name = "5d-light-radius",
            order = "bd",
            setting_type = "startup",
            default_value = 25,
            minimum_value = 1,
            maximum_value = 1000,
            localised_name = {"5dim-setting.5d-light-radius"}
        },
        {
            type = "bool-setting",
            name = "5d-ores",
            order = "be",
            setting_type = "startup",
            default_value = false,
            per_user = false,
            localised_name = {"5dim-setting.5d-ores"}
        },
        {
            type = "bool-setting",
            name = "5d-yield",
            order = "bf",
            setting_type = "startup",
            default_value = false,
            per_user = false,
            localised_name = {"5dim-setting.5d-yield"}
        },
        {
            type = "bool-setting",
            name = "5d-tree",
            order = "ca",
            setting_type = "startup",
            default_value = false,
            per_user = false,
            localised_name = {"5dim-setting.5d-tree"}
        },
        {
            type = "string-setting",
            name = "5d-item-start",
            order = "cb",
            setting_type = "startup",
            default_value = "Nothing",
            allowed_values = {"Nothing", "Small amount", "Medium amount", "Big amount", "Huge amount"},
            localised_name = {"5dim-setting.5d-item-start"}
        },
        {
            type = "string-setting",
            name = "5d-equip-start",
            order = "cc",
            setting_type = "startup",
            default_value = "Nothing",
            allowed_values = {"Nothing", "Modular armor", "Power armor", "Power armor MK2"},
            localised_name = {"5dim-setting.5d-equip-start"}
        },
        {
            type = "bool-setting",
            name = "5d-train-tech",
            order = "cd",
            setting_type = "startup",
            default_value = false,
            per_user = false,
            localised_name = {"5dim-setting.5d-change-inventory"}
        },
        {
            type = "bool-setting",
            name = "5d-robot-tech",
            order = "ce",
            setting_type = "startup",
            default_value = false,
            per_user = false,
            localised_name = {"5dim-setting.5d-robot-tech"}
        },
        {
            type = "int-setting",
            name = "5d-hp",
            order = "da",
            setting_type = "startup",
            default_value = 250,
            minimum_value = 1,
            maximum_value = 100000,
            localised_name = {"5dim-setting.5d-hp"}
        },
        {
            type = "double-setting",
            name = "5d-healing",
            order = "db",
            setting_type = "startup",
            default_value = 0.15,
            minimum_value = 0.1,
            maximum_value = 1000,
            localised_name = {"5dim-setting.5d-healing"}
        },
        {
            type = "double-setting",
            name = "5d-bicho-spawner-hp",
            order = "dc",
            setting_type = "startup",
            default_value = 1,
            minimum_value = 0.01,
            maximum_value = 1000,
            localised_name = {"5dim-setting.5d-bicho-spawner-hp"}
        },
        {
            type = "double-setting",
            name = "5d-bicho-hp",
            order = "dd",
            setting_type = "startup",
            default_value = 1,
            minimum_value = 0.01,
            maximum_value = 1000,
            localised_name = {"5dim-setting.5d-bicho-hp"}
        },
        {
            type = "double-setting",
            name = "5d-bicho-healing",
            order = "de",
            setting_type = "startup",
            default_value = 1,
            minimum_value = 0.001,
            maximum_value = 1000,
            localised_name = {"5dim-setting.5d-bicho-healing"}
        }
    }
)
if mods["5dim_battlefield"] then
    --order d for battelfield
    data:extend(
        {
            {
                type = "bool-setting",
                name = "5d-suicide",
                order = "df",
                setting_type = "startup",
                default_value = true,
                per_user = false,
                localised_name = {"5dim-setting.5d-suicide"},
                localised_description = {"5dim-setting-description.5d-suicide"}
            },
            {
                type = "bool-setting",
                name = "5d-exp",
                order = "dg",
                setting_type = "startup",
                default_value = true,
                per_user = false,
                localised_name = {"5dim-setting.5d-exp"},
                localised_description = {"5dim-setting-description.5d-exp"}
            },
            {
                type = "bool-setting",
                name = "5d-swimmer",
                order = "dh",
                setting_type = "startup",
                default_value = true,
                per_user = false,
                localised_name = {"5dim-setting.5d-swimmer"},
                localised_description = {"5dim-setting-description.5d-swimmer"}
            },
            {
                type = "bool-setting",
                name = "5d-climber",
                order = "di",
                setting_type = "startup",
                default_value = true,
                per_user = false,
                localised_name = {"5dim-setting.5d-climber"},
                localised_description = {"5dim-setting-description.5d-climber"}
            },
            {
                type = "bool-setting",
                name = "5d-worm",
                order = "dj",
                setting_type = "startup",
                default_value = true,
                per_user = false,
                localised_name = {"5dim-setting.5d-worm"},
                localised_description = {"5dim-setting-description.5d-worm"}
            }
        }
    )
end

if mods["5dim_infiniteresearch"] then
    --order e for infinite research
    data:extend(
        {
            {
                type = "bool-setting",
                name = "5d-trash",
                order = "ea",
                setting_type = "startup",
                default_value = false,
                per_user = false,
                localised_name = {"5dim-setting.5d-trash"},
                localised_description = {"5dim-setting-description.5d-trash"}
            },
            {
                type = "bool-setting",
                name = "5d-logistics",
                order = "eb",
                setting_type = "startup",
                default_value = false,
                per_user = false,
                localised_name = {"5dim-setting.5d-logistics"},
                localised_description = {"5dim-setting-description.5d-logistics"}
            },
            {
                type = "bool-setting",
                name = "5d-storage",
                order = "ec",
                setting_type = "startup",
                default_value = true,
                per_user = false,
                localised_name = {"5dim-setting.5d-storage"},
                localised_description = {"5dim-setting-description.5d-storage"}
            },
            {
                type = "bool-setting",
                name = "5d-stack",
                order = "ed",
                setting_type = "startup",
                default_value = true,
                per_user = false,
                localised_name = {"5dim-setting.5d-stack"},
                localised_description = {"5dim-setting-description.5d-stack"}
            },
            {
                type = "bool-setting",
                name = "5d-speed",
                order = "ee",
                setting_type = "startup",
                default_value = true,
                per_user = false,
                localised_name = {"5dim-setting.5d-speed"},
                localised_description = {"5dim-setting-description.5d-speed"}
            },
            {
                type = "bool-setting",
                name = "5d-speed-gun-turret",
                order = "ef",
                setting_type = "startup",
                default_value = true,
                per_user = false,
                localised_name = {"5dim-setting.5d-speed-gun-turret"},
                localised_description = {"5dim-setting-description.5d-speed-gun-turret"}
            },
            {
                type = "bool-setting",
                name = "5d-braking",
                order = "eg",
                setting_type = "startup",
                default_value = true,
                per_user = false,
                localised_name = {"5dim-setting.5d-braking"},
                localised_description = {"5dim-setting-description.5d-braking"}
            }
        }
    )
end

if mods["5dim_vehicle"] and mods["5dim_equipment"] then
    --order z for misc
    data:extend(
        {
            {
                type = "bool-setting",
                name = "5d-grid",
                order = "za",
                setting_type = "startup",
                default_value = true,
                per_user = false,
                localised_name = {"5dim-setting.5d-grid"},
                localised_description = {"5dim-setting-description.5d-grid"}
            },
            {
                type = "bool-setting",
                name = "5d-grid-override",
                order = "zb",
                setting_type = "startup",
                default_value = false,
                per_user = false,
                localised_name = {"5dim-setting.5d-grid-override"},
                localised_description = {"5dim-setting-description.5d-grid-override"}
            }
        }
    )
end
