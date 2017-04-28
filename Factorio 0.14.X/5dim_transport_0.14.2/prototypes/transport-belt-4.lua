--Function
mk4_belt_horizontal =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_4.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32
  }
mk4_belt_vertical =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_4.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 40
  }
mk4_belt_ending_top =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_4.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 80
  }
mk4_belt_ending_bottom =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_4.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 120
  }
mk4_belt_ending_side =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_4.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 160
  }
mk4_belt_starting_top =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_4.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 200
  }
mk4_belt_starting_bottom =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_4.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 240
  }
mk4_belt_starting_side =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_4.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 280
  }
data:extend({
-- Item
  {
    type = "item",
    name = "5d-mk4-transport-belt",
    icon = "__5dim_transport__/graphics/icon/icon_5d_tbelt_4_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport-belt",
    order = "d",
    place_result = "5d-mk4-transport-belt",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-mk4-transport-belt",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-plate", 10},
      {"steel-plate", 10},
      {"advanced-circuit", 2},
      {"express-transport-belt", 2},
    },
    result = "5d-mk4-transport-belt"
  },

--Entity
  {
    type = "transport-belt",
    name = "5d-mk4-transport-belt",
    icon = "__base__/graphics/icons/fast-transport-belt.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.3, result = "5d-mk4-transport-belt"},
    max_health = 50,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 50
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/transport-belt.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3
    },
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_4.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12
    },
    belt_horizontal = mk4_belt_horizontal, -- specified in transport-belt-pictures.lua
    belt_vertical = mk4_belt_vertical,
    ending_top = mk4_belt_ending_top,
    ending_bottom = mk4_belt_ending_bottom,
    ending_side = mk4_belt_ending_side,
    starting_top = mk4_belt_starting_top,
    starting_bottom = mk4_belt_starting_bottom,
    starting_side = mk4_belt_starting_side,
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "transport-belt",
    speed = 0.12,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_connector_sprites = transport_belt_circuit_connector_sprites,
    circuit_wire_connection_point = transport_belt_circuit_wire_connection_point,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
})