data:extend({
  {
    type = "technology",
    name = "braking-force-8",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "train-braking-force-bonus",
        modifier = 0.2
      }
    },
    prerequisites = {"braking-force-7"},
    unit =
    {
      count_formula = "100*(L)",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    max_level = "infinite",
    order = "b-f-h"
  },
})