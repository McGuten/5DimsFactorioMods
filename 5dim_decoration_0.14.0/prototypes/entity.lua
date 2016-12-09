data:extend({
	{
		type = "tree",
		name = "5d-banner-1",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_banner1.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-banner-1"},
		max_health = 100,
		corpse = "small-remnants",
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
		pictures =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_banner1.png",
			priority = "extra-high",
			width = 168,
			height = 165,
			shift = {1.5, -1.5}
		},
	},
	{
		type = "tree",
		name = "5d-banner-2",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_banner2.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-banner-2"},
		max_health = 100,
		corpse = "small-remnants",
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
		pictures =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_banner2.png",
			priority = "extra-high",
			width = 168,
			height = 165,
			shift = {1.5, -1.5}
		},
	},
	{
		type = "tree",
		name = "5d-banner-3",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_banner3.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-banner-3"},
		max_health = 100,
		corpse = "small-remnants",
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
		pictures =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_banner3.png",
			priority = "extra-high",
			width = 168,
			height = 165,
			shift = {1.5, -1.5}
		},
	},
	{
		type = "tree",
		name = "5d-obelisk",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_obelisk.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-obelisk"},
		max_health = 100,
		corpse = "small-remnants",
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
		pictures =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_obelisk.png",
			priority = "extra-high",
			width = 168,
			height = 200,
			shift = {2.0, -2.5}
		},
	},
	{
		type = "tree",
		name = "5d-statue",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_statue.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-statue"},
		max_health = 100,
		corpse = "small-remnants",
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
		pictures =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_statue.png",
			priority = "extra-high",
			width = 168,
			height = 165,
			shift = {1.5, -1.5}
		},
	},
	
	-----------------------LETTER---------------------------------
	
	{
		type = "lamp",
		name = "5d-letter-01",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter1.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-01"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter1.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter1.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-02",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter2.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-02"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter2.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter2.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-03",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter3.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-03"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter3.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter3.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-04",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter4.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-04"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter4.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter4.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-05",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter5.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-05"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter5.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter5.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-06",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter6.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-06"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter6.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter6.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-07",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter7.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-07"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter7.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter7.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-08",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter8.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-08"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter8.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter8.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-09",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter9.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-09"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter9.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter9.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-10",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter10.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-10"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter10.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter10.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-11",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter11.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-11"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter11.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter11.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-12",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter12.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-12"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter12.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter12.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-13",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter13.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-13"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter13.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter13.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-14",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter14.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-14"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter14.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter14.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-15",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter15.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-15"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter15.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter15.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-16",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter16.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-16"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter16.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter16.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-17",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter17.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-17"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter17.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter17.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-18",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter18.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-18"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter18.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter18.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-19",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter19.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-19"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter19.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter19.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-20",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter20.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-20"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter20.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter20.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-21",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter21.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-21"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter21.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter21.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-22",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter22.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-22"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter22.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter22.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-23",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter22.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-23"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter23.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter23.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-24",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter24.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-24"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter24.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter24.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-25",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter25.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-25"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter25.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter25.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-26",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter26.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-26"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter26.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter26.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-27",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter27.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-27"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter27.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter27.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-28",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter28.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-28"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter28.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter28.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-29",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter29.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-29"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter29.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter29.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-30",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter30.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-30"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter30.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter30.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-31",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter31.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-31"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter31.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter31.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-32",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter32.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-32"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter32.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter32.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-33",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter33.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-33"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter33.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter33.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-34",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter34.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-34"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter34.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter34.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-35",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter35.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-35"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter35.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter35.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-36",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter36.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-36"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter36.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter36.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-37",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter37.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-37"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter37.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter37.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-38",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter38.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-38"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter38.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter38.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-39",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter39.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-39"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter39.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter39.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-40",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter40.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-40"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter40.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter40.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-41",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter41.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-41"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter41.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter41.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-42",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter42.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-42"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter42.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter42.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-43",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter43.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-43"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter43.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter43.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-44",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter44.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-44"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter44.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter44.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-45",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter45.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-45"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter45.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter45.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-46",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter46.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-46"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter46.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter46.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-47",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter47.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-47"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter47.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter47.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-48",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter48.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-48"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter48.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter48.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-49",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter49.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-49"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter49.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter49.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-50",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter50.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-50"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter50.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter50.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-51",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter51.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-51"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter51.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter51.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-52",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter52.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-52"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter52.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter52.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-53",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter53.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-53"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter53.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter53.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-54",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter54.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-54"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter54.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter54.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-letter-55",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_letter55.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-55"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter55.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_letter55.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	
	-----------------------ARROW---------------------------------
	
	{
		type = "lamp",
		name = "5d-arrow-1",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_arrow1.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-arrow-1"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow1.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow1.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-arrow-2",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_arrow2.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-arrow-2"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow2.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow2.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-arrow-3",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_arrow3.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-arrow-3"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow3.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow3.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	{
		type = "lamp",
		name = "5d-arrow-4",
		icon = "__5dim_decoration__/graphics/icon/icon_5d_arrow4.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "5d-arrow-4"},
		max_health = 55,
		corpse = "small-remnants",
		--collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "5KW",
		light = 
		{
			intensity = 0.9,
			size = 15
		},
		picture_off =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow4.png",
			priority = "high",
			width = 83,
			height = 75,
			shift = {0, -0.1}
		},
		picture_on =
		{
			filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow4.png",
			priority = "high",
			width = 83,
			height = 75,
			x = 83,
			shift = {0, -0.1}
		}
	},
	
	-----------------------ICON---------------------------------
	
})