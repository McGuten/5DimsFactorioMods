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
    name = "5d-mk4-splitter",
    icon = "__5dim_transport__/graphics/icon/icon_5d_splitter_4_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport-splitters",
    order = "d",
    place_result = "5d-mk4-splitter",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-mk4-splitter",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"express-splitter", 1},
      {"advanced-circuit", 15},
      {"iron-plate", 5},
      {"express-transport-belt", 4},
    },
    result = "5d-mk4-splitter"
  },

--Entity
  {
    type = "splitter",
    name = "5d-mk4-splitter",
    icon = "__5dim_transport__/graphics/icon/icon_5d_splitter_4_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-mk4-splitter"},
    max_health = 80,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.9, -0.1}, {0.9, 0.1}},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_horizontal = mk4_belt_horizontal, -- specified in transport-belt-pictures.lua
    belt_vertical = mk4_belt_vertical,
    ending_top = mk4_belt_ending_top,
    ending_bottom = mk4_belt_ending_bottom,
    ending_side = mk4_belt_ending_side,
    starting_top = mk4_belt_starting_top,
    starting_bottom = mk4_belt_starting_bottom,
    starting_side = mk4_belt_starting_side,
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "splitter",
    speed = 0.125,
    structure =
    {
      north =
      {
        filename = "__5dim_transport__/graphics/icon/icon_5d_splitter-north_4.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 80,
        height = 35,
        shift = {0.225, 0}
      },
      east =
      {
        filename = "__5dim_transport__/graphics/icon/icon_5d_splitter-east_4.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 46,
        height = 81,
        shift = {0.075, 0}
      },
      south =
      {
        filename = "__5dim_transport__/graphics/icon/icon_5d_splitter-south_4.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 82,
        height = 36,
        shift = {0.075, 0}
      },
      west =
      {
        filename = "__5dim_transport__/graphics/icon/icon_5d_splitter-west_4.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 47,
        height = 79,
        shift = {0.25, 0.05}
      },
    }
  },
})