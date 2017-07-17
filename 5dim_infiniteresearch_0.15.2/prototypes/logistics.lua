data:extend({
  {
    type = "technology",
    name = "character-logistic-slots-7",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
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
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    max_level = "infinite",
    order = "c-k-e-f"
  },
})