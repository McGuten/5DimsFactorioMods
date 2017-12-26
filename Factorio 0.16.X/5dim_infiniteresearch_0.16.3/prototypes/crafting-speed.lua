data:extend({
  {
    type = "technology",
    name="crafting-speed-1",
    icon = "__5dim_infiniteresearch__/graphics/icon/crafting-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = 0.2,
      }
    },
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 10
    },
    upgrade = true,
    max_level = "5",
    order="b-f-h",
  },
  {
    type = "technology",
    name="crafting-speed-6",
    icon = "__5dim_infiniteresearch__/graphics/icon/crafting-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = 0.2,
      }
    },
    prerequisites = {"crafting-speed-1"},
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 10
    },
    upgrade = true,
    max_level = "10",
    order="b-f-h",
  },
  {
    type = "technology",
    name="crafting-speed-11",
    icon = "__5dim_infiniteresearch__/graphics/icon/crafting-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = 0.2,
      }
    },
    prerequisites = {"crafting-speed-6"},
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 10
    },
    upgrade = true,
    max_level = "15",
    order="b-f-h",
  },
  {
    type = "technology",
    name="crafting-speed-16",
    icon = "__5dim_infiniteresearch__/graphics/icon/crafting-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = 0.2,
      }
    },
    prerequisites = {"crafting-speed-11"},
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
      },
      time = 10
    },
    upgrade = true,
    max_level = "20",
    order="b-f-h",
  },
  {
    type = "technology",
    name="crafting-speed-21",
    icon = "__5dim_infiniteresearch__/graphics/icon/crafting-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = 0.2,
      }
    },
    prerequisites = {"crafting-speed-16"},
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1},
      },
      time = 10
    },
    upgrade = true,
    max_level = "25",
    order="b-f-h",
  },
  {
    type = "technology",
    name="crafting-speed-26",
    icon = "__5dim_infiniteresearch__/graphics/icon/crafting-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-crafting-speed",
        modifier = 0.2,
      }
    },
    prerequisites = {"crafting-speed-21"},
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 10
    },
    upgrade = true,
    max_level = "infinite",
    order="b-f-h",
  },
})