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
        {"automation-science-pack", 4},
        {"logistic-science-pack", 4},
        {"chemical-science-pack", 3},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-o-h"
  }
})