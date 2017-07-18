data:extend({
  {
    type = "technology",
    name = "speed-module-4",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-speed-module-4"
      }
    },
    prerequisites = {"speed-module-3"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-c-c"
  },
  {
    type = "technology",
    name = "speed-module-5",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-speed-module-5"
      }
    },
    prerequisites = {"speed-module-4"},
    unit =
    {
      count = 900,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-c-c"
  },
  {
    type = "technology",
    name = "productivity-module-4",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-productivity-module-4"
      }
    },
    prerequisites = {"productivity-module-3"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-e-c"
  },
  {
    type = "technology",
    name = "productivity-module-5",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-productivity-module-5"
      }
    },
    prerequisites = {"productivity-module-4"},
    unit =
    {
      count = 900,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-e-c"
  },
  {
    type = "technology",
    name = "effectivity-module-4",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-effectivity-module-4"
      }
    },
    prerequisites = {"effectivity-module-3"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-g-c"
  },
  {
    type = "technology",
    name = "effectivity-module-5",
    icon = "__base__/graphics/technology/effectivity-module.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-effectivity-module-5"
      }
    },
    prerequisites = {"effectivity-module-4"},
    unit =
    {
      count = 900,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-g-c"
  },
  {
    type = "technology",
    name = "pollution-module-1",
    icon = "__5dim_module__/graphics/icon/polution-module.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-pollution-module-1"
      }
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-c-c"
  },
  {
    type = "technology",
    name = "pollution-module-2",
    icon = "__5dim_module__/graphics/icon/polution-module.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-pollution-module-2"
      }
    },
    prerequisites = {"pollution-module-1"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-c-c"
  },
  {
    type = "technology",
    name = "pollution-module-3",
    icon = "__5dim_module__/graphics/icon/polution-module.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-pollution-module-3"
      }
    },
    prerequisites = {"pollution-module-2"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-c-c"
  },
  {
    type = "technology",
    name = "pollution-module-4",
    icon = "__5dim_module__/graphics/icon/polution-module.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-pollution-module-4"
      }
    },
    prerequisites = {"pollution-module-3"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-c-c"
  },
  {
    type = "technology",
    name = "pollution-module-5",
    icon = "__5dim_module__/graphics/icon/polution-module.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-pollution-module-5"
      }
    },
    prerequisites = {"pollution-module-4"},
    unit =
    {
      count = 900,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-c-c"
  },
  {
    type = "technology",
    name = "mix-modules",
    icon = "__5dim_module__/graphics/icon/mix-module.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-pollution-effectivity-4"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-effectivity-productivity-4"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-welder"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-speed-productivity-4"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-speed-pollution-4"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-speed-effectivity-4"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-pollution-productivity-4"
      },
    },
    prerequisites = {"speed-module-4", "effectivity-module-4", "pollution-module-4", "productivity-module-4"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-c-c"
  },
  {
    type = "technology",
    name = "mix-modules-2",
    icon = "__5dim_module__/graphics/icon/mix-module.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-pollution-effectivity-5"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-effectivity-productivity-5"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-speed-productivity-5"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-speed-pollution-5"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-speed-effectivity-5"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-pollution-productivity-5"
      },
    },
    prerequisites = {"mix-modules", "speed-module-5", "effectivity-module-5", "pollution-module-5", "productivity-module-5"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-c-c"
  },
})