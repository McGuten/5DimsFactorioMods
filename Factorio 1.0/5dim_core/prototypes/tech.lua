data:extend(
    {
        {
            type = "technology",
            name = "toolbelt-2",
            icon = "__base__/graphics/technology/toolbelt.png",
            icon_size = 128,
            effects = {
                {
                    type = "character-inventory-slots-bonus",
                    modifier = 10
                }
            },
            prerequisites = {"toolbelt"},
            unit = {
                count = 150,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1}
                },
                time = 30
            },
            order = "c-k-m"
        },
        {
            type = "technology",
            name = "toolbelt-3",
            icon = "__base__/graphics/technology/toolbelt.png",
            icon_size = 128,
            effects = {
                {
                    type = "character-inventory-slots-bonus",
                    modifier = 10
                }
            },
            prerequisites = {"toolbelt-2"},
            unit = {
                count = 250,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1}
                },
                time = 30
            },
            order = "c-k-m"
        }
    }
)
