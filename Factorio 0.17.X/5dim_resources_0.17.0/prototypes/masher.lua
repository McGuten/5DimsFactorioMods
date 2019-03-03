data:extend({
-- Item
	{
		type = "item",
		name = "5d-masher",
		icon = "__5dim_resources__/graphics/icon/icon_5d_masher_.png",
    icon_size = 32,
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
    icon_size = 32,
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
    layers =
    {
      {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
        priority = "high",
        width = 85,
        height = 87,
        frame_count = 1,
        shift = util.by_pixel(-1.5, 1.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace.png",
          priority = "high",
          width = 171,
          height = 174,
          frame_count = 1,
          shift = util.by_pixel(-1.25, 2),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
        priority = "high",
        width = 139,
        height = 43,
        frame_count = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(39.5, 11.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-shadow.png",
          priority = "high",
          width = 277,
          height = 85,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(39.25, 11.25),
          scale = 0.5
        }
      }
    }
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
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
        priority = "high",
        line_length = 8,
        width = 29,
        height = 40,
        frame_count = 48,
        direction_count = 1,
        shift = util.by_pixel(-0.5, 6),
        hr_version =
        {
          filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-fire.png",
          priority = "high",
          line_length = 8,
          width = 57,
          height = 81,
          frame_count = 48,
          direction_count = 1,
          shift = util.by_pixel(-0.75, 5.75),
          scale = 0.5
        }
      },
      light = {intensity = 1, size = 1, color = {r = 1.0, g = 1.0, b = 1.0}}
    },
    {
      north_position = {0.0, 0.0},
      east_position = {0.0, 0.0},
      south_position = {0.0, 0.0},
      west_position = {0.0, 0.0},
      effect = "flicker", -- changes alpha based on energy source light intensity
      animation =
      {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
        priority = "high",
        width = 60,
        height = 43,
        frame_count = 1,
        shift = {0.03125, 0.640625},
        blend_mode = "additive"
      }
    },
    {
      north_position = {0.0, 0.0},
      east_position = {0.0, 0.0},
      south_position = {0.0, 0.0},
      west_position = {0.0, 0.0},
      effect = "flicker", -- changes alpha based on energy source light intensity
      animation =
      {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working.png",
        priority = "high",
        line_length = 8,
        width = 64,
        height = 75,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -4.5),
        blend_mode = "additive",
        hr_version =
        {
          filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-working.png",
          priority = "high",
          line_length = 8,
          width = 130,
          height = 149,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(0, -4.25),
          blend_mode = "additive",
          scale = 0.5
        }
      }
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
    fast_replaceable_group = "masher",
  },
})