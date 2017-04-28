data:extend({
--Item
  {
    type = "item",
    name = "5d-mining-drill-speed-1",
    icon = "__5dim_mining__/graphics/icon/icon_5d_mining_drill_speed1_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "mining-speed",
    order = "c",
    place_result = "5d-mining-drill-speed-1",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-mining-drill-speed-1",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"electric-mining-drill", 1},
      {"iron-gear-wheel", 10},
      {"iron-plate", 50},
      {"electronic-circuit", 10},
    },
    result = "5d-mining-drill-speed-1"
  },

--Entity
  {
    type = "mining-drill",
    name = "5d-mining-drill-speed-1",
    icon = "__5dim_mining__/graphics/icon/icon_5d_mining_drill_speed1_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "5d-mining-drill-speed-1"},
    max_health = 300,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "mining-drill",
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__5dim_mining__/graphics/icon/icon_5d_mining_drill_speed1_north.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__5dim_mining__/graphics/icon/icon_5d_mining_drill_speed1_east.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__5dim_mining__/graphics/icon/icon_5d_mining_drill_speed1_south.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__5dim_mining__/graphics/icon/icon_5d_mining_drill_speed1_west.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      }
    },
    mining_speed = 1.0,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.30 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "180kW",
    mining_power = 3,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
})