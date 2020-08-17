require("prototypes.laser-sounds")

data:extend(
    {
        {
            type = "recipe",
            name = "5d-personal-blue-laser-defense-equipment",
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"processing-unit", 1},
                {"steel-plate", 5},
                {"5d-laser-turret-big", 5}
            },
            result = "5d-personal-blue-laser-defense-equipment"
        },
        {
            type = "item",
            name = "5d-personal-blue-laser-defense-equipment",
            icon = "__5dim_equipment__/graphics/icons/personal-laser-defense2-equipment.png",
            placed_as_equipment_result = "5d-personal-blue-laser-defense-equipment",
            icon_size = 32,
            -- flags = {"goes-to-main-inventory"},
            subgroup = "armor-defense",
            order = "ac",
            stack_size = 20
        },
        {
            type = "active-defense-equipment",
            name = "5d-personal-blue-laser-defense-equipment",
            sprite = {
                filename = "__base__/graphics/equipment/personal-laser-defense-equipment.png", --"__5dim_equipment__/graphics/equipment/personal-laser-defense-equipment.png",
                width = 64,
                height = 64,
                priority = "medium"
            },
            shape = {
                width = 2,
                height = 2,
                type = "full"
            },
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input",
                buffer_capacity = "440kJ"
            },
            attack_parameters = {
                type = "beam",
                cooldown = 60,
                range = 30,
                damage_modifier = 6,
                ammo_type = {
                    category = "laser-turret",
                    energy_consumption = "50kJ",
                    action = {
                        type = "direct",
                        action_delivery = {
                            type = "beam",
                            beam = "laser-beam",
                            max_length = 30,
                            duration = 60,
                            source_offset = {0, -1.31439}
                        }
                    }
                }
            },
            automatic = true,
            categories = {"armor"}
        }
    }
)
