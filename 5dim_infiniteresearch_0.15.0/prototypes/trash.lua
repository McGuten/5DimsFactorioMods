data:extend({
  {
    type = "technology",
    name = "character-logistic-trash-slots-3",
    icon = "__base__/graphics/technology/character-logistic-trash-slots.png",
    effects =
    {
      {
        type = "character-logistic-trash-slots",
        modifier = 6
      }
    },
    prerequisites = {"character-logistic-trash-slots-2"},
    unit =
    {
      count_formula = "500*(L-2)",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-b"
  },
})