--Function
pipepictures3 = function()
  return {
    straight_vertical_single =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-straight-vertical-single_3.png",
      priority = "extra-high",
      width = 44,
      height = 58
    },
    straight_vertical =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-straight-vertical_3.png",
      priority = "extra-high",
      width = 44,
      height = 42
    },
    straight_vertical_window =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-straight-vertical-window_3.png",
      priority = "extra-high",
      width = 44,
      height = 32
    },
    straight_horizontal_window =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-straight-horizontal-window_3.png",
      priority = "extra-high",
      width = 32,
      height = 42
    },
    straight_horizontal =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-straight-horizontal_3.png",
      priority = "extra-high",
      width = 32,
      height = 42
    },
    corner_up_right =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-corner-up-right_3.png",
      priority = "extra-high",
      width = 32,
      height = 40
    },
    corner_up_left =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-corner-up-left_3.png",
      priority = "extra-high",
      width = 44,
      height = 44
    },
    corner_down_right =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-corner-down-right_3.png",
      priority = "extra-high",
      width = 32,
      height = 32
    },
    corner_down_left =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-corner-down-left_3.png",
      priority = "extra-high",
      width = 36,
      height = 32
    },
    t_up =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-t-up_3.png",
      priority = "extra-high",
      width = 32,
      height = 42
    },
    t_down =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-t-down_3.png",
      priority = "extra-high",
      width = 40,
      height = 44
    },
    t_right =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-t-right_3.png",
      priority = "extra-high",
      width = 40,
      height = 32
    },
    t_left =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-t-left_3.png",
      priority = "extra-high",
      width = 44,
      height = 42
    },
    cross =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-cross_3.png",
      priority = "extra-high",
      width = 40,
      height = 40
    },
    ending_up =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-ending-up_3.png",
      priority = "extra-high",
      width = 44,
      height = 42
      },
    ending_down =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-ending-down_3.png",
      priority = "extra-high",
      width = 44,
      height = 32
    },
    ending_right =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-ending-right_3.png",
      priority = "extra-high",
      width = 32,
      height = 44
    },
    ending_left =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-ending-left_3.png",
      priority = "extra-high",
      width = 58,
      height = 44
    },
    horizontal_window_background =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-horizontal-window-background_3.png",
      priority = "extra-high",
      width = 32,
      height = 42
    },
    vertical_window_background =
    {
      filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-vertical-window-background_3.png",
      priority = "extra-high",
      width = 44,
      height = 32
    },
    fluid_background =
    {
      filename = "__base__/graphics/entity/pipe/fluid-background.png",
      priority = "extra-high",
      width = 32,
      height = 20
    },
    low_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    middle_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    high_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    }
  }
end
data:extend({
-- Item
  {
    type = "item",
    name = "5d-pipe-mk3",
    icon = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe_3_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport-pipe",
    order = "a[transport-pipe]-c[pipe-mk3]",
    place_result = "5d-pipe-mk3",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-pipe-mk3",
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 1},
    },
    result = "5d-pipe-mk3"
  },

--Entity
  {
    type = "pipe",
    name = "5d-pipe-mk3",
    icon = "__base__/graphics/icons/pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-pipe-mk3"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    drawing_mask = {{-0.29, -0.29}, {0.29, 0.29}},
	collision_mask = {"object-layer"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = pipepictures3(),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}}
  },
})