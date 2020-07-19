--Function
mk5_belt_horizontal =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32
  }
mk5_belt_vertical =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 40,
  }
mk5_belt_ending_top =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 80
  }
mk5_belt_ending_bottom =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 120
  }
mk5_belt_ending_side =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 160
  }
mk5_belt_starting_top =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 200
  }
mk5_belt_starting_bottom =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 240
  }
mk5_belt_starting_side =
  {
    filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
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
    name = "5d-mk5-transport-belt",
    icon = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5_.png",
    flags = {"goes-to-quickbar"},
    icon_size = 32,
    subgroup = "transport-belt",
    order = "r",
    place_result = "5d-mk5-transport-belt",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-mk5-transport-belt",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-plate", 10},
      {"steel-plate", 10},
      {"processing-unit", 2},
      {"5d-mk4-transport-belt", 2},
    },
    result = "5d-mk5-transport-belt"
  },

--Entity
  {
    type = "transport-belt",
    name = "5d-mk5-transport-belt",
    icon = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.3, result = "5d-mk5-transport-belt"},
    icon_size = 32,
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
        filename = "__base__/sound/express-transport-belt.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3
    },
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__5dim_transport__/graphics/icon/icon_5d_tbelt_5.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12
    },
    belt_horizontal = mk5_belt_horizontal, -- specified in transport-belt-pictures.lua
    belt_vertical = mk5_belt_vertical,
    ending_top = mk5_belt_ending_top,
    ending_bottom = mk5_belt_ending_bottom,
    ending_side = mk5_belt_ending_side,
    starting_top = mk5_belt_starting_top,
    starting_bottom = mk5_belt_starting_bottom,
    starting_side = mk5_belt_starting_side,
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "transport-belt",
    speed = 0.15,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
})