data:extend({
  {
    type = "technology",
    name = "character-logistic-trash-slots-3",
    icon = "__base__/graphics/technology/character-logistic-trash-slots.png",
    icon_size = 128, 
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
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-b"
  },
})