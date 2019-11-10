data:extend(
  {
    {
      type = "technology",
      name = "turrets",
      icon = "__base__/graphics/technology/turrets.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "5d-gun-turret-small"
        }
      },
      unit = {
        count = 10,
        ingredients = {
          {"automation-science-pack", 1}
        },
        time = 10
      },
      order = "a-j-a"
    },
    {
      type = "technology",
      name = "turrets-2",
      icon = "__base__/graphics/technology/turrets.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "gun-turret"
        }
      },
      prerequisites = {"turrets"},
      unit = {
        count = 20,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1}
        },
        time = 10
      },
      order = "a-j-a"
    },
    {
      type = "technology",
      name = "turrets-3",
      icon = "__base__/graphics/technology/turrets.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "5d-gun-turret-big"
        }
      },
      prerequisites = {"turrets-2"},
      unit = {
        count = 20,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1}
        },
        time = 10
      },
      order = "a-j-a"
    },
    {
      type = "technology",
      name = "laser-turrets",
      icon = "__base__/graphics/technology/laser-turrets.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "5d-laser-turret-small"
        }
      },
      prerequisites = {"turrets", "laser", "battery", "military-2"},
      unit = {
        count = 200,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1}
        },
        time = 30
      },
      order = "a-j-b"
    },
    {
      type = "technology",
      name = "laser-turrets-2",
      icon = "__base__/graphics/technology/laser-turrets.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "laser-turret"
        }
      },
      prerequisites = {"laser-turrets"},
      unit = {
        count = 200,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1}
        },
        time = 30
      },
      order = "a-j-b"
    },
    {
      type = "technology",
      name = "laser-turrets-3",
      icon = "__base__/graphics/technology/laser-turrets.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "5d-laser-turret-big"
        }
      },
      prerequisites = {"laser-turrets-2"},
      unit = {
        count = 200,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1}
        },
        time = 30
      },
      order = "a-j-b"
    },
    {
      type = "technology",
      name = "stone-walls-2",
      icon = "__base__/graphics/technology/stone-walls.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "5d-metal-wall"
        }
      },
      prerequisites = {"stone-walls", "military-2", "steel-processing"},
      unit = {
        count = 50,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1}
        },
        time = 10
      },
      order = "a-k-a"
    },
    {
      type = "technology",
      name = "gates-2",
      icon = "__base__/graphics/technology/gates.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "5d-gate"
        }
      },
      prerequisites = {"stone-walls", "military-2", "steel-processing", "gates"},
      unit = {
        count = 150,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1}
        },
        time = 30
      },
      order = "a-l-a"
    },
    {
      type = "technology",
      name = "tanks-2",
      icon = "__base__/graphics/technology/tanks.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "5d-tank"
        }
      },
      prerequisites = {"tanks"},
      unit = {
        count = 150,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1}
        },
        time = 30
      },
      order = "e-c-c"
    },
    --[[
{
type = "technology",
name = "tanks-3",
icon = "__base__/graphics/technology/tanks.png",
icon_size = 32, 
effects =
{
{
type = "unlock-recipe",
recipe = "5d-artillery"
},
{
type = "unlock-recipe",
recipe = "artillery-shell"
},
},
prerequisites = {"tanks-2"},
unit =
{
count = 200,
ingredients =
{
{"automation-science-pack", 1},
{"logistic-science-pack", 1},
{"chemical-science-pack", 1},
{"military-science-pack", 1},
},
time = 30
},
order = "e-c-c"
},
--]]
    {
      type = "technology",
      name = "tesla-turrets",
      icon = "__base__/graphics/technology/laser-turrets.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "5d-tesla-turret"
        },
        {
          type = "unlock-recipe",
          recipe = "5d-gun-turret-exp"
        }
      },
      prerequisites = {"laser-turrets-3", "turrets-3"},
      unit = {
        count = 300,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1},
          {"utility-science-pack", 1}
        },
        time = 30
      },
      order = "a-j-b"
    },
    {
      type = "technology",
      name = "electric-turrets",
      icon = "__base__/graphics/technology/laser-turrets.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "5d-electric-turret"
        }
      },
      prerequisites = {"tesla-turrets"},
      unit = {
        count = 300,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"utility-science-pack", 1},
          {"space-science-pack", 1}
        },
        time = 30
      },
      order = "a-j-b"
    },
    {
      type = "technology",
      name = "flamethrower-2",
      icon = "__base__/graphics/technology/flamethrower.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "5d-flamethrower-turret-2"
        }
      },
      prerequisites = {"flamethrower"},
      unit = {
        count = 150,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1}
        },
        time = 30
      },
      order = "e-c-b"
    }
  }
)
