data:extend({
-- Item
  {
    type = "item",
    name = "5d-oil-refinery-2",
    icon = "__5dim_automatization__/graphics/icon/oil-refinery_2_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "liquid-refinery",
    order = "b",
    place_result = "5d-oil-refinery-2",
    stack_size = 10
  },

--Recipe
  {
    type = "recipe",
    name = "5d-oil-refinery-2",
    energy_required = 8,
    ingredients =
    {
      {"steel-plate", 15},
      {"iron-plate", 35},
      {"oil-refinery", 1},
      {"iron-gear-wheel", 20},
      {"stone-brick", 5},
      {"electronic-circuit", 20},
      {"pipe", 15}
    },
    result = "5d-oil-refinery-2",
    enabled = false
  },

--Entity
  {
    type = "assembling-machine",
    name = "5d-oil-refinery-2",
    icon = "__5dim_automatization__/graphics/icon/oil-refinery_2_.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "5d-oil-refinery-2"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
	fast_replaceable_group = "oil-refinery",
    module_specification =
    {
      module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"oil-processing"},
    crafting_speed = 2,
    has_backer_name = true,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "850kW",
    ingredient_count = 5,
    animation =
    {
      north =
      {
        filename = "__5dim_automatization__/graphics/icon/oil-refinery_2.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      east =
      {
        filename = "__5dim_automatization__/graphics/icon/oil-refinery_2.png",
        x = 337,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      south =
      {
        filename = "__5dim_automatization__/graphics/icon/oil-refinery_2.png",
        x = 674,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      west =
      {
        filename = "__5dim_automatization__/graphics/icon/oil-refinery_2.png",
        x = 1011,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      }
    },
    working_visualisations =
    {
      {
        north_position = {1.03125, -1.55},
        east_position = {-1.65625, -1.3},
        south_position = {-1.875, -2.0},
        west_position = {1.8437, -1.2},
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          frame_count = 29,
          width = 16,
          height = 35,
          scale = 1.5,
          shift = {0, -0.5625},
          run_mode="backward"
        },
        light = {intensity = 0.4, size = 6}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
  },
})