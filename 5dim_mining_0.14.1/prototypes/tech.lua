table.insert(data.raw.technology["advanced-oil-processing"].effects,{type = "unlock-recipe", recipe = "5d-pumpjack-2"})


  --[[{
    type = "technology",
    name = "advanced-oil-processing",
    icon = "__base__/graphics/technology/oil-processing.png",
    prerequisites = {"oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-pumpjack-2"
      },
      {
        type = "unlock-recipe",
        recipe = "advanced-oil-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "heavy-oil-cracking"
      },
      {
        type = "unlock-recipe",
        recipe = "light-oil-cracking"
      }
    },
    unit =
    {
      count = 75,
      ingredients = {{"science-pack-1", 1},
                     {"science-pack-2", 1},
                     {"science-pack-3", 1}},
      time = 30
    },
    order = "d-b"
  },]]
  
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
		{"science-pack-1", 1},
		{"science-pack-2", 1}
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
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
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
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
        {"alien-science-pack", 1},
	  },
      time = 5
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "advanced-oil-processing-2",
    icon = "__base__/graphics/technology/oil-processing.png",
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
      ingredients = {{"science-pack-1", 1},
                     {"science-pack-2", 1},
                     {"science-pack-3", 1}},
      time = 30
    },
    order = "d-b"
  },
})