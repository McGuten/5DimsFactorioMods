data:extend({
  {
    type = "technology",
    name="mining-speed-1",
    icon = "__5dim_infiniteresearch__/graphics/icon/mining-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 0.2,
      }
    },
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"automation-science-pack", 1},
      },
      time = 10
    },
    upgrade = true,
    max_level = "5",
    order="b-f-h",
  },
  {
    type = "technology",
    name="mining-speed-6",
    icon = "__5dim_infiniteresearch__/graphics/icon/mining-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 0.2,
      }
    },
    prerequisites = {"mining-speed-1"},
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 10
    },
    upgrade = true,
    max_level = "10",
    order="b-f-h",
  },
  {
    type = "technology",
    name="mining-speed-11",
    icon = "__5dim_infiniteresearch__/graphics/icon/mining-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 0.2,
      }
    },
    prerequisites = {"mining-speed-6"},
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 10
    },
    upgrade = true,
    max_level = "15",
    order="b-f-h",
  },
  {
    type = "technology",
    name="mining-speed-16",
    icon = "__5dim_infiniteresearch__/graphics/icon/mining-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 0.2,
      }
    },
    prerequisites = {"mining-speed-11"},
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
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
    name="mining-speed-21",
    icon = "__5dim_infiniteresearch__/graphics/icon/mining-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 0.2,
      }
    },
    prerequisites = {"mining-speed-16"},
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 10
    },
    upgrade = true,
    max_level = "25",
    order="b-f-h",
  },
  {
    type = "technology",
    name="mining-speed-26",
    icon = "__5dim_infiniteresearch__/graphics/icon/mining-speed.png",
    icon_size = 128,
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 0.2,
      }
    },
    prerequisites = {"mining-speed-21"},
    unit =
    {
      count_formula = "20*(L)",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 10
    },
    upgrade = true,
    max_level = "infinite",
    order="b-f-h",
  },
})