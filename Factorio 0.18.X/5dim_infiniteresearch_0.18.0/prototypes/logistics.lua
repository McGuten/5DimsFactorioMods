data:extend({
  {
    type = "technology",
    name = "character-logistic-slots-7",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 6
      }
    },
    prerequisites = {"character-logistic-slots-6"},
    unit =
    {
      count_formula = "500*(L-4)",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    max_level = "infinite",
    order = "c-k-e-f"
  },
})