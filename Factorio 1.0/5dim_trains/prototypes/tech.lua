data:extend({
    {
        type = "technology", 
        name = "railway-2", 
        icon = "__base__/graphics/technology/railway.png", 
        icon_size = 128, 
        effects = 
        {
            {
                type = "unlock-recipe", 
                recipe = "5d-locomotive-reinforced"
            }, 
            {
                type = "unlock-recipe", 
                recipe = "5d-cargo-wagon-2"
            }
        }, 
        prerequisites = {"railway"}, 
        unit = 
        {
            count = 130, 
            ingredients = 
            {
                {"automation-science-pack", 2}, 
                {"logistic-science-pack", 1}, 
            }, 
            time = 30
        }, 
        order = "c-g-a", 
    }, 
    {
        type = "technology", 
        name = "railway-3", 
        icon = "__base__/graphics/technology/railway.png", 
        icon_size = 128, 
        effects = 
        {
            {
                type = "unlock-recipe", 
                recipe = "5d-locomotive-hs"
            }, 
            {
                type = "unlock-recipe", 
                recipe = "5d-cargo-wagon-3"
            }
        }, 
        prerequisites = {"railway-2"}, 
        unit = 
        {
            count = 150, 
            ingredients = 
            {
                {"automation-science-pack", 2}, 
                {"logistic-science-pack", 1}, 
                {"chemical-science-pack", 1}, 
            }, 
            time = 30
        }, 
        order = "c-g-a", 
    }, 
    {
        type = "technology", 
        name = "fluid-wagon-2", 
        icon = "__base__/graphics/technology/fluid-wagon.png", 
        icon_size = 128, 
        effects = 
        {
            {
                type = "unlock-recipe", 
                recipe = "5d-fluid-wagon-2"
            }
        }, 
        prerequisites = {"railway-2", "fluid-wagon"}, 
        unit = 
        {
            count = 200, 
            ingredients = 
            {
                {"automation-science-pack", 1}, 
                {"logistic-science-pack", 1}, 
            }, 
            time = 30
        }, 
        order = "c-g-a-b", 
    }, 
    {
        type = "technology", 
        name = "fluid-wagon-3", 
        icon = "__base__/graphics/technology/fluid-wagon.png", 
        icon_size = 128, 
        effects = 
        {
            {
                type = "unlock-recipe", 
                recipe = "5d-fluid-wagon-3"
            }
        }, 
        prerequisites = {"railway-3", "fluid-wagon-2"}, 
        unit = 
        {
            count = 200, 
            ingredients = 
            {
                {"automation-science-pack", 2}, 
                {"logistic-science-pack", 1}, 
                {"chemical-science-pack", 1}, 
            }, 
            time = 30
        }, 
        order = "c-g-a-b", 
    }, 
})