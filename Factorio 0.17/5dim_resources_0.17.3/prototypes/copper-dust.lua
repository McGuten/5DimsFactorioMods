data:extend(
    {
        -- Item
        {
            type = "item",
            name = "5d-copper-dust",
            icon_size = 32,
            subgroup = "plates-dust",
            order = "b",
            icon = "__5dim_resources__/graphics/icon/icon_5d_copper_dust.png",
            stack_size = 200
        },
        --Recipe
        {
            type = "recipe",
            name = "5d-copper-plate",
            icon = "__base__/graphics/icons/copper-plate.png",
            icon_size = 32,
            subgroup = "plates-plates2",
            order = "b",
            category = "smelting",
            energy_required = 3.2,
            ingredients = {
                {"5d-copper-dust", 1}
            },
            result = "copper-plate"
        },
        {
            type = "recipe",
            name = "5d-copper-dust",
            enabled = "true",
            category = "mashering",
            energy_required = 3.2,
            ingredients = {
                {"copper-ore", 1}
            },
            result = "5d-copper-dust",
            result_count = 2
        }

        --Entity
    }
)
