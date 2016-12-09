data:extend({
--Recipe
	{
		type = "recipe",
		name = "5d-iron-plate-industrial-dust",
		icon = "__base__/graphics/icons/iron-plate.png",
		subgroup = "plates-plates3",
		order = "aa",
		category = "industrial-furnace",
		energy_required = 130,
		ingredients =
		{
			{ "5d-iron-dust", 170},
		},
		result = "iron-plate",
		result_count = 200,
	},
	{
		type = "recipe",
		name = "5d-iron-plate-industrial",
		icon = "__base__/graphics/icons/iron-plate.png",
		subgroup = "plates-plates3",
		order = "ab",
		category = "industrial-furnace",
		energy_required = 130,
		ingredients =
		{
			{ "iron-ore", 170},
		},
		result = "iron-plate",
		result_count = 200,
	},
	{
		type = "recipe",
		name = "5d-copper-plate-industrial-dust",
		icon = "__base__/graphics/icons/copper-plate.png",
		subgroup = "plates-plates3",
		order = "ba",
		category = "industrial-furnace",
		energy_required = 130,
		ingredients =
		{
			{ "copper-ore", 170},
		},
		result = "copper-plate",
		result_count = 200,
	},
	{
		type = "recipe",
		name = "5d-copper-plate-industrial",
		icon = "__base__/graphics/icons/copper-plate.png",
		subgroup = "plates-plates3",
		order = "bb",
		category = "industrial-furnace",
		energy_required = 130,
		ingredients =
		{
			{ "5d-copper-dust", 170},
		},
		result = "copper-plate",
		result_count = 200,
	},
})