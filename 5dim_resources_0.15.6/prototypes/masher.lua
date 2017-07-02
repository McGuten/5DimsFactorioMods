data:extend({
-- Item
	{
		type = "item",
		name = "5d-masher",
		icon = "__5dim_resources__/graphics/icon/icon_5d_masher_.png",
		flags = {"goes-to-quickbar"},
		subgroup = "masher",
		order = "a",
		place_result = "5d-masher",
		stack_size = 50
	},

--Recipe
	{
		type = "recipe",
		name = "5d-masher",
		enabled = "false",
		ingredients = 
		{
			{"iron-plate",20},
			{"stone-brick",5},
			{"electronic-circuit",2},
		},
		result = "5d-masher"
	},

--Entity
    {
	type = "furnace",
    name = "5d-masher",
    icon = "__5dim_resources__/graphics/icon/icon_5d_masher_.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-masher"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
	resistances = 
    {
	  {
        type = "physical",
        percent = 100,
		decrease = 0,
      },
	  {
        type = "fire",
		percent = 100,
		decrease = 0,
      },
    },
	collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
	selection_box = {{-0.8, -1}, {0.8, 1}},
	animation =
    {
      filename = "__5dim_resources__/graphics/icon/icon_5d_masher.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05}
    },
    working_visualisations =
    {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation =
        {
          filename = "__5dim_resources__/graphics/icon/icon_5d_masher-fire.png",
          priority = "high",
          width = 36,
          height = 19,
          frame_count = 12,
          shift = { 0.0625, 0.375}
        },
        light = {intensity = 1, size = 1}
      }
    },
    crafting_categories = {"mashering"},
    module_specification =
    {
      module_slots = 3
    },
	allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	result_inventory_size = 1,
	source_inventory_size = 1,
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.025
    },
    energy_usage = "360kW",
    ingredient_count = 1,
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
  },
})