data:extend(
    {
        {
            type = "item",
            name = "5d-solar-panel-mk2-equipment",
            icon = "__5dim_equipment__/graphics/icons/solar-panel2-equipment.png",
            placed_as_equipment_result = "5d-solar-panel-mk2-equipment",
            -- flags = {"goes-to-main-inventory"},
            icon_size = 32,
            subgroup = "armor-solar",
            order = "b",
            stack_size = 20
        },
        {
            type = "solar-panel-equipment",
            name = "5d-solar-panel-mk2-equipment",
            sprite = {
                filename = "__5dim_equipment__/graphics/equipment/solar-panel2-equipment.png",
                width = 32,
                height = 32,
                priority = "medium"
            },
            shape = {
                width = 1,
                height = 1,
                type = "full"
            },
            energy_source = {
                type = "electric",
                usage_priority = "primary-output"
            },
            power = "200kW",
            categories = {"armor"}
        },
        {
            type = "recipe",
            name = "5d-solar-panel-mk2-equipment",
            enabled = false,
            energy_required = 10,
            ingredients = {
                {"solar-panel-equipment", 10},
                {"processing-unit", 1},
                {"steel-plate", 5}
            },
            result = "5d-solar-panel-mk2-equipment"
        }
    }
)
