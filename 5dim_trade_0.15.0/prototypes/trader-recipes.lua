data:extend({
-- Item
	{
		type = "item",
		name = "5d-coin",
		icon = "__5dim_trade__/graphics/icon/coin.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "trade-item",
		order = "b",
		stack_size = 500
	},

--Recipe
	{
		type = "recipe",
		name = "5d-coin",
		enabled = "false",
		ingredients = 
		{
			{"iron-plate",1},
			{"copper-plate",1},
		},
		result = "5d-coin"
	},
  {
    type = "recipe",
    name = "5d-coin-to-crude-oil",
    enabled = "false",
    category = "trade",
    subgroup = "trade-buy",
    order = "b",
    energy_required = 30,
    ingredients = 
    {
      {"5d-coin",1000},
    },
    result_count = 4,
    result = "crude-oil-barrel"
  },
})