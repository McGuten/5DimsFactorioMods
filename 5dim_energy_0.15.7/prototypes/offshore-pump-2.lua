data:extend({
-- Item
  {
    type = "item",
    name = "5d-offshore-pump",
    icon = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_2_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-offshore-pump",
    order = "b",
    place_result = "5d-offshore-pump",
    stack_size = 20
  },

--Recipe
  {
    type = "recipe",
    name = "5d-offshore-pump",
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 20},
      {"copper-plate", 20},
      {"steel-plate", 20},
      {"electronic-circuit", 5},
      {"pipe", 10},
      {"offshore-pump", 1},
      {"iron-gear-wheel", 5}
    },
    result = "5d-offshore-pump"
  },

--Entity
  {
    type = "offshore-pump",
    name = "5d-offshore-pump",
    icon = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_2_.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "5d-offshore-pump"},
    max_health = 80,
    corpse = "small-remnants",
    fluid = "water",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.6, -0.3}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
    fluid_box =
    {
      base_area = 60,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 1} },
      },
    },
    pumping_speed = 60,
    tile_width = 1,
    picture =
    {
      north =
      {
        filename = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_2.png",
        priority = "high",
        shift = {0.9, 0.05},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_2.png",
        priority = "high",
        shift = {0.9, 0.05},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_2.png",
        priority = "high",
        shift = {0.9, 0.65},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__5dim_energy__/graphics/icon/icon_5d_offshore-pump_2.png",
        priority = "high",
        shift = {1.0, 0.05},
        x = 480,
        width = 160,
        height = 102
      }
    },
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {2.7125, 0.20625},
          green = {2.7125, 0.20625},
        },
        wire =
        {
          red = {0.4, -0.41875},
          green = {0.4, -0.41875},
        }
      },
      {
        shadow =
        {
          red = {2.025, 0.83125},
          green = {2.025, 0.83125},
        },
        wire =
        {
          red = {0.36875, -0.1375},
          green = {0.36875, -0.1375},
        }
      },
      {
        shadow =
        {
          red = {1.09, 1.025},
          green = {1.09, 1.025},
        },
        wire =
        {
          red = {-0.50625, 0.2125},
          green = {-0.50625, 0.2125},
        }
      },
      {
        shadow =
        {
          red = {1.6875, -0.10625},
          green = {1.6875, -0.10625},
        },
        wire =
        {
          red = {-0.34375, -0.73125},
          green = {-0.34375, -0.73125},
        }
      }
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({0.90625, -0.15625}, nil, 0),
      get_circuit_connector_sprites({0, 0.03125}, nil, 6),
      get_circuit_connector_sprites({-0.9375, -0.25}, nil, 4),
      get_circuit_connector_sprites({0.125, -1.3125}, nil, 2),
    },
    circuit_wire_max_distance = 7.5
  },
})