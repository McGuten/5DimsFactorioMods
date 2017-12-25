data:extend({
-- Item
  {
    type = "item",
    name = "5d-furnace",
    icon = "__5dim_resources__/graphics/icon/icon_5d_steel-furnace_3_.png",
    flags = {"goes-to-quickbar"},
    icon_size = 32,
    subgroup = "furnace-coal",
    order = "c",
    place_result = "5d-furnace",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-furnace",
    enabled = "false",
    ingredients = 
	{
    {"steel-furnace", 1},
		{"steel-plate", 10},
		{"stone-brick", 7}
	},
    result = "5d-furnace",
    energy_required = 3,
  },

--Entity
  {
    type = "furnace",
    name = "5d-furnace",
    icon = "__5dim_resources__/graphics/icon/icon_5d_steel-furnace_3_.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "5d-furnace"},
    icon_size = 32,
    max_health = 200,
    corpse = "medium-remnants",
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    energy_usage = "270kW",
    crafting_speed = 3,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      emissions = 0.02,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.5,
          position = {0, 0},
          starting_vertical_speed = 0.05
        }
      }
    },
    animation =
    {
      filename = "__5dim_resources__/graphics/icon/icon_5d_steel-furnace_3.png",
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
          filename = "__5dim_resources__/graphics/icon/icon_5d_steel-furnace-fire_3.png",
          priority = "high",
          width = 36,
          height = 19,
          frame_count = 12,
          shift = { 0.0625, 0.375}
        },
        light = {intensity = 1, size = 1}
      }
    },
    fast_replaceable_group = "furnace"
  },
})