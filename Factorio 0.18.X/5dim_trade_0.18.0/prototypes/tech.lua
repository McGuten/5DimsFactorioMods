data:extend({
	{
		type = "technology",
		name = "trade",
		icon = "__5dim_trade__/graphics/icon/trader.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "5d-coin"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-trader"
			},
			{
				type = "unlock-recipe",
				recipe = "5d-coin-to-crude-oil"
			},
		},
		prerequisites = {"rocket-silo"},
		unit =
		{
			count = 500,
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
})