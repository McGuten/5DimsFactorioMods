data:extend({
-- Item
  {
    type = "item",
    name = "5d-electric-furnace",
    icon = "__5dim_resources__/graphics/icon/icon_5d_electric-furnace_3_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "furnace-electric",
    order = "b",
    place_result = "5d-electric-furnace",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-electric-furnace",
    enabled = "false",
    ingredients = 
	{
		{"steel-plate", 50},
		{"iron-plate", 50},
		{"electric-furnace", 1},
		{"copper-plate", 50},
		{"advanced-circuit", 10},
	},
    result = "5d-electric-furnace",
    energy_required = 5,
  },

--Entity
  {
    type = "furnace",
    name = "5d-electric-furnace",
    icon = "__5dim_resources__/graphics/icon/icon_5d_electric-furnace_3_.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "5d-electric-furnace"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 10},
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    crafting_speed = 3,
    energy_usage = "270kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__5dim_resources__/graphics/icon/icon_5d_electric-furnace-base_3.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__5dim_resources__/graphics/icon/icon_5d_electric-furnace-heater_3.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
      {
        animation =
        {
          filename = "__5dim_resources__/graphics/icon/icon_5d_electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625}
        }
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375}
        }
      }
    },
    fast_replaceable_group = "furnace"
  },
})