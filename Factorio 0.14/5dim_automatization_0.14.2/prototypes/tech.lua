data:extend({
	{
		type = "technology",
		name = "automation-4",
		icon = "__base__/graphics/technology/automation.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5d-assembling-machine-4"
			},
		},
		prerequisites = {"automation-3"},
		unit =
		{
			count = 150,
			ingredients =
				{
					{"science-pack-1", 2},
					{"science-pack-2", 1},
					{"science-pack-3", 1}
				},
			time = 70
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "automation-5",
		icon = "__base__/graphics/technology/automation.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5d-assembling-machine-5"
			},
		},
		prerequisites = {"automation-4"},
		unit =
		{
			count = 250,
			ingredients =
				{
					{"science-pack-1", 2},
					{"science-pack-2", 1},
					{"science-pack-3", 1}
				},
			time = 80
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "inserters",
		icon = "__5dim_automatization__/graphics/icon/inserter180.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "long-handed-inserter"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed1-range3"
			},
		},
		unit =
		{
			count = 10,
			ingredients =
				{
					{"science-pack-1", 1},
				},
			time = 5
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "close",
		icon = "__5dim_automatization__/graphics/icon/inserternear.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed1-range1-close"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed1-range2-close"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed1-range3-close"
			},
		},
		prerequisites = {"inserters"},
		unit =
		{
			count = 10,
			ingredients =
				{
					{"science-pack-1", 1},
				},
			time = 5
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "inserters-2",
		icon = "__5dim_automatization__/graphics/icon/inserter180.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "fast-inserter"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed2-range2"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed2-range3"
			},
		},
		prerequisites = {"inserters"},
		unit =
		{
			count = 10,
			ingredients =
				{
					{"science-pack-1", 1},
					{"science-pack-2", 1},
				},
			time = 5
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "close-2",
		icon = "__5dim_automatization__/graphics/icon/inserternear.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed2-range1-close"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed2-range2-close"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed2-range3-close"
			},
		},
		prerequisites = {"inserters-2"},
		unit =
		{
			count = 10,
			ingredients =
				{
					{"science-pack-1", 1},
					{"science-pack-2", 1},
				},
			time = 5
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "inserters-3",
		icon = "__5dim_automatization__/graphics/icon/inserter180.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed3-range1"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed3-range2"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed3-range3"
			},
		},
		prerequisites = {"inserters-2"},
		unit =
		{
			count = 10,
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
		name = "close-3",
		icon = "__5dim_automatization__/graphics/icon/inserternear.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed3-range1-close"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed3-range2-close"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-speed3-range3-close"
			},
		},
		prerequisites = {"inserters-3"},
		unit =
		{
			count = 10,
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
		name = "side-inserters",
		icon = "__5dim_automatization__/graphics/icon/inserterside.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5d-basic-inserter-left-90d"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-basic-inserter-right-90d"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-basic-inserter-left-90d-close"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-basic-inserter-right-90d-close"
			},
		},
		prerequisites = {"inserters"},
		unit =
		{
			count = 10,
			ingredients =
				{
					{"science-pack-1", 1},
				},
			time = 5
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "side-inserters-2",
		icon = "__5dim_automatization__/graphics/icon/inserterside.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5d-fast-inserter-left-90d"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-fast-inserter-right-90d"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-fast-inserter-left-90d-close"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-fast-inserter-right-90d-close"
			},
		},
		prerequisites = {"side-inserters"},
		unit =
		{
			count = 10,
			ingredients =
				{
					{"science-pack-1", 1},
				},
			time = 5
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "side-inserters-3",
		icon = "__5dim_automatization__/graphics/icon/inserterside.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5d-extreme-inserter-left-90d"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-extreme-inserter-right-90d"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-extreme-inserter-left-90d-close"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-extreme-inserter-right-90d-close"
			},
		},
		prerequisites = {"side-inserters"},
		unit =
		{
			count = 10,
			ingredients =
				{
					{"science-pack-1", 1},
				},
			time = 5
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "smart-inserters",
		icon = "__5dim_automatization__/graphics/icon/insertersmart.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-smart-speed2-range1-close"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-smart-speed2-range2"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-smart-speed2-range2-close"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-smart-speed3-range1"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-inserter-smart-speed3-range1-close"
			},
		},
		prerequisites = {"inserters-2"},
		unit =
		{
			count = 10,
			ingredients =
				{
					{"science-pack-1", 1},
				},
			time = 5
		},
		order = "c-a"
	},
  {
    type = "technology",
    name = "oil-processing-2",
    icon = "__base__/graphics/technology/oil-gathering.png",
    prerequisites = {"oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-oil-refinery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-chemical-plant-2"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
	  {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
	  },
      time = 30
    },
    order = "d-a"
  },
  {
    type = "technology",
    name = "oil-processing-3",
    icon = "__base__/graphics/technology/oil-gathering.png",
    prerequisites = {"oil-processing-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-oil-refinery-3"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-chemical-plant-3"
      },
    },
    unit =
    {
      count = 150,
      ingredients = 
	  {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
	  },
      time = 30
    },
    order = "d-a"
  },
  {
    type = "technology",
    name = "loader",
    icon = "__base__/graphics/icons/loader.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "loader"
      },
    },
    prerequisites = {"stack-inserter"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "a-f-c",
  },
  {
    type = "technology",
    name = "loader-2",
    icon = "__base__/graphics/icons/fast-loader.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fast-loader"
      },
    },
    prerequisites = {"loader"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "a-f-c",
  },
  {
    type = "technology",
    name = "loader-3",
    icon = "__base__/graphics/icons/express-loader.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "express-loader"
      },
    },
    prerequisites = {"loader-2"},
    unit =
    {
      count = 350,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "a-f-c",
  },
})