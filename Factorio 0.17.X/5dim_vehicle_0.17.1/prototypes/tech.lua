data:extend({
  {
    type = "technology",
    name = "boat-tech",
    icon = "__5dim_vehicle__/graphics/icon/vehiculo2.png",
		icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-boat"
      },
    },
    prerequisites = {"automobilism"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "e-b"
  },
  {
    type = "technology",
    name = "air-plane-tech",
    icon = "__5dim_vehicle__/graphics/icon/vehiculo1.png",
		icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-air-plane"
      },
    },
    prerequisites = {"automobilism", "electric-engine"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "e-b"
  },
  {
    type = "technology",
    name = "truck-tech",
    icon = "__5dim_vehicle__/graphics/icon/vehiculo3.png",
		icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-truck"
      },
    },
    prerequisites = {"automobilism"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "e-b"
  },
})