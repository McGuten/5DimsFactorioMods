data:extend({
  {
    type = "technology",
    name = "research-speed-7",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "laboratory-speed",
        modifier = 0.6
      }
    },
    prerequisites = {"research-speed-6"},
    unit =
    {
      count_formula = "500*(L-5)",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    max_level = "infinite",
    order = "c-m-d"
  },
})