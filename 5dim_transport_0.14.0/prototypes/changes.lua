data:extend({
  {
    type = "storage-tank",
    name = "storage-tank",
    icon = "__base__/graphics/icons/storage-tank.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "storage-tank"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "storage-tank",
    fluid_box =
    {
      base_area = 250,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} },
      },
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    pictures =
    {
      picture =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/storage-tank/storage-tank.png",
          priority = "extra-high",
          frames = 2,
          width = 140,
          height = 115,
          shift = {0.6875, 0.109375}
        }
      },
      fluid_background =
      {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15
      },
      window_background =
      {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 17,
        height = 24
      },
      flow_sprite =
      {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20
      }
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {-0.40625, -0.375},
          green = {-0.53125, -0.46875},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {0.46875, -0.53125},
          green = {0.375, -0.4375},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {-0.40625, -0.375},
          green = {-0.53125, -0.46875},
        }
      },
      {
        shadow =
        {
          red = {2.35938, 0.890625},
          green = {2.29688, 0.953125},
        },
        wire =
        {
          red = {0.46875, -0.53125},
          green = {0.375, -0.4375},
        }
      },
    },
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({-0.1875, -0.375}, nil, 7),
      get_circuit_connector_sprites({0.375, -0.53125}, nil, 1),
      get_circuit_connector_sprites({-0.1875, -0.375}, nil, 7),
      get_circuit_connector_sprites({0.375, -0.53125}, nil, 1),
    },
    circuit_wire_max_distance = 7.5
  },
})