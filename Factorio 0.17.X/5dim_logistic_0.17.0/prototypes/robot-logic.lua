data:extend({
-- Item
  {
    type = "item",
    name = "5d-logistic-robot-2",
    icon = "__5dim_logistic__/graphics/icon/icon-5d-logistic-robot_.png",
    -- flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "logistic-robot",
    order = "b",
    place_result = "5d-logistic-robot-2",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-logistic-robot-2",
    enabled = "false",
    ingredients =
    {
      {"logistic-robot", 1},
      {"advanced-circuit", 2}
    },
    result = "5d-logistic-robot-2"
  },

--Entity
  {
    type = "logistic-robot",
    name = "5d-logistic-robot-2",
    icon = "__5dim_logistic__/graphics/icon/icon-5d-logistic-robot_.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "5d-logistic-robot-2"},
    icon_size = 32,
    max_health = 200,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 2,
    speed = 0.065,
    transfer_distance = 0.5,
    max_energy = "3MJ",
    energy_per_tick = "0.05kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "5kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle =
    {
      filename = "__5dim_logistic__/graphics/icon/icon-5d_logistic-robot_2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 42
    },
    idle_with_cargo =
    {
      filename = "__5dim_logistic__/graphics/icon/icon-5d_logistic-robot_2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16
    },
    in_motion =
    {
      filename = "__5dim_logistic__/graphics/icon/icon-5d_logistic-robot_2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 126
    },
    in_motion_with_cargo =
    {
      filename = "__5dim_logistic__/graphics/icon/icon-5d_logistic-robot_2.png",
      priority = "high",
      line_length = 16,
      width = 41,
      height = 42,
      frame_count = 1,
      shift = {0.015625, -0.09375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 84
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 23
    },
    shadow_idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 23
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16
    },
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
  },
})