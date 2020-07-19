table.insert(data.raw.technology["advanced-oil-processing"].effects,{type = "unlock-recipe", recipe = "5d-pumpjack-2"})
  
data:extend({
  {
    type = "technology",
    name = "mining",
    icon = "__5dim_mining__/graphics/icon/tmining.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-mining-drill-speed-1"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-mining-drill-range-1"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
	  {
  		{"automation-science-pack", 1},
  		{"logistic-science-pack", 1},
	  },
      time = 5
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "mining-2",
    icon = "__5dim_mining__/graphics/icon/tmining.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-mining-drill-speed-2"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-mining-drill-range-2"
      },
    },
    prerequisites = {"mining"},
    unit =
    {
      count = 150,
      ingredients = 
	  {
  		{"automation-science-pack", 1},
  		{"logistic-science-pack", 1},
  		{"chemical-science-pack", 1},
      {"production-science-pack", 1},
	  },
      time = 5
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "mining-3",
    icon = "__5dim_mining__/graphics/icon/tmining.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-mining-drill-speed-3"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-mining-drill-range-3"
      },
    },
    prerequisites = {"mining-2"},
    unit =
    {
      count = 250,
      ingredients = 
	  {
  		{"automation-science-pack", 1},
  		{"logistic-science-pack", 1},
  		{"chemical-science-pack", 1},
      {"production-science-pack", 1},
      {"utility-science-pack", 1}
	  },
      time = 5
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "advanced-oil-processing-2",
    icon = "__base__/graphics/technology/oil-processing.png",
    icon_size = 128, 
    prerequisites = {"advanced-oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-pumpjack-3"
      },
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    order = "d-b"
  },
  {
    type = "technology",
    name = "water-pumpjack",
    icon = "__5dim_mining__/graphics/icon/pumpjack_.png",
    icon_size = 32, 
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-water-pumpjack"
      },
    },
    prerequisites = {"steel-processing"},
    unit =
    {
      count = 15,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 15
    },
    order = "d-b"
  },
})