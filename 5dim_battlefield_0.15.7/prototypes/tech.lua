data:extend({
  {
    type = "technology",
    name = "turrets",
    icon = "__base__/graphics/technology/turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-gun-turret-small"
      }
    },
    unit =
    {
      count = 10,
      ingredients = 
	  {
		{"science-pack-1", 1},
	  },
      time = 10
    },
    order = "a-j-a"
  },
  {
    type = "technology",
    name = "turrets-2",
    icon = "__base__/graphics/technology/turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gun-turret"
      }
    },
    prerequisites = {"turrets"},
    unit =
    {
      count = 20,
      ingredients = 
	  {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
	  },
      time = 10
    },
    order = "a-j-a"
  },
  {
    type = "technology",
    name = "turrets-3",
    icon = "__base__/graphics/technology/turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-gun-turret-big"
      }
    },
    prerequisites = {"turrets-2"},
    unit =
    {
      count = 20,
      ingredients = 
	  {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
	  },
      time = 10
    },
    order = "a-j-a"
  },
  {
    type = "technology",
    name = "laser-turrets",
    icon = "__base__/graphics/technology/laser-turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-laser-turret-small"
      }
    },
    prerequisites = {"turrets", "laser", "battery"},
    unit =
    {
      count = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "a-j-b"
  },
  {
    type = "technology",
    name = "laser-turrets-2",
    icon = "__base__/graphics/technology/laser-turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-turret"
      }
    },
    prerequisites = {"laser-turrets"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "a-j-b"
  },
  {
    type = "technology",
    name = "laser-turrets-3",
    icon = "__base__/graphics/technology/laser-turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-laser-turret-big"
      }
    },
    prerequisites = {"laser-turrets-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "a-j-b"
  },
  {
    type = "technology",
    name = "stone-walls-2",
    icon = "__base__/graphics/technology/stone-walls.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-metal-wall"
      }
    },
    prerequisites = {"stone-walls", "military-2", "steel-processing"},
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 10
    },
    order = "a-k-a"
  },
  {
    type = "technology",
    name = "gates-2",
    icon = "__base__/graphics/technology/gates.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-gate"
      }
    },
    prerequisites = {"stone-walls", "military-2", "steel-processing", "gates"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "a-l-a"
  },
  {
    type = "technology",
    name = "tanks-2",
    icon = "__base__/graphics/technology/tanks.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-tank"
      },
    },
    prerequisites = {"tanks"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 20
    },
    order = "e-c-c"
  },
  {
    type = "technology",
    name = "tanks-3",
    icon = "__base__/graphics/technology/tanks.png",
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
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 20
    },
    order = "e-c-c"
  },
  {
    type = "technology",
    name = "tesla-turrets",
    icon = "__base__/graphics/technology/laser-turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-tesla-turret"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-gun-turret-exp"
      }
    },
    prerequisites = {"laser-turrets-3"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "a-j-b"
  },
  {
    type = "technology",
    name = "flamethrower-2",
    icon = "__base__/graphics/technology/flamethrower.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-flamethrower-turret-2"
      }
    },
    prerequisites = {"flamethrower"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"military-science-pack", 1}
      },
      time = 30
    },
    order = "e-c-b"
  },
})