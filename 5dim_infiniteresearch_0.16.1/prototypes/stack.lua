data:extend({
  {
    type = "technology",
    name = "inserter-capacity-bonus-8",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1 -- result of 3
      },
    },
    prerequisites = {"inserter-capacity-bonus-7"},
    unit =
    {
      count_formula = "1000*(L-7)",
      ingredients =
      {
        {"science-pack-1", 4},
        {"science-pack-2", 4},
        {"science-pack-3", 3},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-o-h"
  }
})