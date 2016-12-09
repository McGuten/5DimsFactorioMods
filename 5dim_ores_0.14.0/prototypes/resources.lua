data.raw.recipe["5d-electric-furnace"].ingredients = {
		{"steel-plate", 50},
		{"5d-tin-plate", 75},
		{"electric-furnace", 1},
		{"5d-zinc-gear-wheel", 20},
		{"advanced-circuit", 10},
    };
 data.raw.recipe["5d-furnace"].ingredients = {
		{"lead-plate", 10},
		{"steel-furnace", 1},
		{"iron-plate", 50},
		{"5d-zinc-gear-wheel", 20},
		{"stone-brick", 15}
    };
 data.raw.recipe["5d-masher-2"].ingredients = {
			{"iron-plate",50},
			{"zinc-plate",15},
			{"5d-tin-plate",35},
			{"stone-brick",20},
			{"5d-masher",1},
			{"advanced-circuit",10},
    };
 data.raw.recipe["5d-masher"].ingredients = {
			{"iron-plate",20},
			{"zinc-plate",5},
			{"5d-tin-plate",15},
			{"stone-brick",5},
			{"electronic-circuit",2},
    };
data:extend({
-- Item
	{
		type = "item",
		name = "5d-tin-dust",
		icon = "__5dim_resources__/graphics/icon/tindust-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "plates-dust",
		order = "c",
		stack_size = 200
	},
-- Item
	{
		type = "item",
		name = "5d-gold-dust",
		icon = "__5dim_resources__/graphics/icon/golddust-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "plates-dust",
		order = "g",
		stack_size = 200
	},
-- Item
	{
		type = "item",
		name = "5d-lead-dust",
		icon = "__5dim_resources__/graphics/icon/leaddust-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "plates-dust",
		order = "d",
		stack_size = 200
	},
-- Item
	{
		type = "item",
		name = "5d-zinc-dust",
		icon = "__5dim_resources__/graphics/icon/zincdust-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "plates-dust",
		order = "e",
		stack_size = 200
	},
-- Item
	{
		type = "item",
		name = "5d-aluminium-dust",
		icon = "__5dim_resources__/graphics/icon/bauxitedust-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "plates-dust",
		order = "f",
		stack_size = 200
	},
	--recipes
	{
		type = "recipe",
		name = "5d-lead-plate-2",
		subgroup = "plates-plates2",
		order = "d",
		category = "smelting",
		energy_required = 3.5,
		ingredients = {{ "5d-lead-dust", 1}},
		result = "lead-plate"
	},
	{
		type = "recipe",
		name = "5d-lead-dust",
		enabled = "true",
		category = "mashering",
		energy_required = 3.5,
		ingredients = 
		{
			{"lead-ore",1}
		},
		result = "5d-lead-dust",
		result_count = 2,
	},
	{
		type = "recipe",
		name = "5d-gold-plate-2",
		subgroup = "plates-plates2",
		order = "g",
		category = "smelting",
		energy_required = 3.5,
		ingredients = {{ "5d-gold-dust", 1}},
		result = "gold-plate"
	},
	{
		type = "recipe",
		name = "5d-gold-dust",
		enabled = "true",
		category = "mashering",
		energy_required = 3.5,
		ingredients = 
		{
			{"gold-ore",1}
		},
		result = "5d-gold-dust",
	},
	{
		type = "recipe",
		name = "5d-aluminium-plate-2",
		subgroup = "plates-plates2",
		order = "f",
		category = "smelting",
		energy_required = 3.5,
		ingredients = {{ "5d-aluminium-dust", 1}},
		result = "aluminium-plate"
	},
	{
		type = "recipe",
		name = "5d-aluminium-dust",
		enabled = "true",
		category = "mashering",
		energy_required = 3.5,
		ingredients = 
		{
			{"bauxite-ore",1}
		},
		result = "5d-aluminium-dust",
		result_count = 2,
	},
	{
		type = "recipe",
		name = "5d-zinc-plate-2",
		subgroup = "plates-plates2",
		order = "e",
		category = "smelting",
		energy_required = 3.5,
		ingredients = {{ "5d-zinc-dust", 1}},
		result = "zinc-plate"
	},
	{
		type = "recipe",
		name = "5d-zinc-dust",
		enabled = "true",
		category = "mashering",
		energy_required = 3.5,
		ingredients = 
		{
			{"zinc-ore",1}
		},
		result = "5d-zinc-dust",
		result_count = 2,
	},
	{
		type = "recipe",
		name = "5d-tin-plate-2",
		subgroup = "plates-plates2",
		order = "c",
		category = "smelting",
		energy_required = 3.5,
		ingredients = {{ "5d-tin-dust", 1}},
		result = "5d-tin-plate"
	},
	{
		type = "recipe",
		name = "5d-tin-dust",
		enabled = "true",
		category = "mashering",
		energy_required = 3.5,
		ingredients = 
		{
			{"tin-ore",1}
		},
		result = "5d-tin-dust",
		result_count = 2,
	},
})