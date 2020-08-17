data:extend(
    {
        {
            type = "item",
            name = "5d-energy-shield-mk3-equipment",
            icon = "__5dim_equipment__/graphics/icons/energy-shield-mk3-equipment.png",
            placed_as_equipment_result = "5d-energy-shield-mk3-equipment",
            -- flags = {"goes-to-main-inventory"},
            icon_size = 32,
            subgroup = "armor-shield",
            order = "c",
            stack_size = 50,
            default_request_amount = 10
        },
        {
            type = "energy-shield-equipment",
            name = "5d-energy-shield-mk3-equipment",
            sprite = {
                filename = "__5dim_equipment__/graphics/equipment/energy-shield-mk3-equipment.png",
                width = 64,
                height = 64,
                priority = "medium"
            },
            shape = {
                width = 2,
                height = 2,
                type = "full"
            },
            max_shield_value = 450,
            energy_source = {
                type = "electric",
                buffer_capacity = "240kJ",
                input_flow_limit = "480kW",
                usage_priority = "primary-input"
            },
            energy_per_shield = "45kJ",
            categories = {"armor"}
        },
        {
            type = "recipe",
            name = "5d-energy-shield-mk3-equipment",
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"energy-shield-mk2-equipment", 10},
                {"processing-unit", 10}
            },
            result = "5d-energy-shield-mk3-equipment"
        }
    }
)
