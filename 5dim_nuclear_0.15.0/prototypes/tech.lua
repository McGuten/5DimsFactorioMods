data:extend({
  {
    type = "technology",
    name = "nuclear-power-2",
    icon = "__base__/graphics/technology/nuclear-power.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-nuclear-reactor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-centrifuge-2"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-heat-exchanger-2"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-steam-turbine-2"
      }
    },
    prerequisites = {"nuclear-power"},
    unit =
    {
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30,
      count = 2000
    },
    order = "e-p-b-c"
  },
})