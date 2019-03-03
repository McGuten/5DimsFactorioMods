data:extend({
--Item
  {
    type = "item",
    name = "5d-gate",
    icon = "__5dim_battlefield__/graphics/icon/gate.png",
    icon_size = 32,
    subgroup = "defense-gate",
    order = "b",
    place_result = "5d-gate",
    stack_size = 50
  },
--Recipe
  {
    type = "recipe",
    name = "5d-gate",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 3},
      {"iron-plate", 6},
      {"electronic-circuit", 3},
    },
    result = "5d-gate"
  },
--Entity
  {
    type = "gate",
    name = "5d-gate",
    icon = "__5dim_battlefield__/graphics/icon/gate.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    icon_size = 32,
    fast_replaceable_group = "wall",
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-gate"},
    max_health = 600,
    corpse = "small-remnants",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    opening_speed = 0.0666666,
    activation_distance = 3,
    timeout_to_close = 5,
    resistances =
    {
      {
        type = "acid",
        decrease = 3,
        percent = 20
      },
      {
        type = "impact",
        decrease = 45,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 30
      },
    },
    vertical_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-vertical.png",
          line_length = 8,
          width = 38,
          height = 62,
          frame_count = 16,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-vertical.png",
            line_length = 8,
            width = 78,
            height = 120,
            frame_count = 16,
            shift = util.by_pixel(-1, -13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-vertical-shadow.png",
          line_length = 8,
          width = 40,
          height = 54,
          frame_count = 16,
          shift = util.by_pixel(10, 8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-vertical-shadow.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-horizontal.png",
          line_length = 8,
          width = 34,
          height = 48,
          frame_count = 16,
          shift = util.by_pixel(0, -4),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-horizontal.png",
            line_length = 8,
            width = 66,
            height = 90,
            frame_count = 16,
            shift = util.by_pixel(0, -3),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-horizontal-shadow.png",
          line_length = 8,
          width = 62,
          height = 30,
          frame_count = 16,
          shift = util.by_pixel(12, 10),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-horizontal-shadow.png",
            line_length = 8,
            width = 122,
            height = 60,
            frame_count = 16,
            shift = util.by_pixel(12, 10),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    horizontal_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-left.png",
          line_length = 8,
          width = 34,
          height = 40,
          frame_count = 16,
          shift = util.by_pixel(0, -8),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-horizontal-left.png",
            line_length = 8,
            width = 66,
            height = 74,
            frame_count = 16,
            shift = util.by_pixel(0, -7),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-left.png",
          line_length = 8,
          width = 62,
          height = 30,
          frame_count = 16,
          shift = util.by_pixel(12, 10),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-horizontal-shadow-left.png",
            line_length = 8,
            width = 122,
            height = 60,
            frame_count = 16,
            shift = util.by_pixel(12, 10),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    horizontal_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-right.png",
          line_length = 8,
          width = 34,
          height = 40,
          frame_count = 16,
          shift = util.by_pixel(0, -8),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-horizontal-right.png",
            line_length = 8,
            width = 66,
            height = 74,
            frame_count = 16,
            shift = util.by_pixel(0, -7),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-right.png",
          line_length = 8,
          width = 62,
          height = 30,
          frame_count = 16,
          shift = util.by_pixel(12, 10),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-horizontal-shadow-right.png",
            line_length = 8,
            width = 122,
            height = 58,
            frame_count = 16,
            shift = util.by_pixel(12, 11),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    vertical_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-left.png",
          line_length = 8,
          width = 22,
          height = 62,
          frame_count = 16,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-vertical-left.png",
            line_length = 8,
            width = 42,
            height = 118,
            frame_count = 16,
            shift = util.by_pixel(0, -13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-left.png",
          line_length = 8,
          width = 44,
          height = 54,
          frame_count = 16,
          shift = util.by_pixel(8, 8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-vertical-shadow-left.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    vertical_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-right.png",
          line_length = 8,
          width = 22,
          height = 62,
          frame_count = 16,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-vertical-right.png",
            line_length = 8,
            width = 42,
            height = 118,
            frame_count = 16,
            shift = util.by_pixel(0, -13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-right.png",
          line_length = 8,
          width = 44,
          height = 54,
          frame_count = 16,
          shift = util.by_pixel(8, 8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-rail-vertical-shadow-right.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    vertical_rail_base =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-vertical.png",
      line_length = 8,
      width = 68,
      height = 66,
      frame_count = 16,
      shift = util.by_pixel(0, 0),
      hr_version =
      {
        filename = "__base__/graphics/entity/gate/hr-gate-rail-base-vertical.png",
        line_length = 8,
        width = 138,
        height = 130,
        frame_count = 16,
        shift = util.by_pixel(-1, 0),
        scale = 0.5
      }
    },
    horizontal_rail_base =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-horizontal.png",
      line_length = 8,
      width = 66,
      height = 54,
      frame_count = 16,
      shift = util.by_pixel(0, 2),
      hr_version =
      {
        filename = "__base__/graphics/entity/gate/hr-gate-rail-base-horizontal.png",
        line_length = 8,
        width = 130,
        height = 104,
        frame_count = 16,
        shift = util.by_pixel(0, 3),
        scale = 0.5
      }
    },
    wall_patch =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-wall-patch.png",
          line_length = 8,
          width = 34,
          height = 48,
          frame_count = 16,
          shift = util.by_pixel(0, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-wall-patch.png",
            line_length = 8,
            width = 70,
            height = 94,
            frame_count = 16,
            shift = util.by_pixel(-1, 13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/gate/gate-wall-patch-shadow.png",
          line_length = 8,
          width = 44,
          height = 38,
          frame_count = 16,
          shift = util.by_pixel(8, 32),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gate/hr-gate-wall-patch-shadow.png",
            line_length = 8,
            width = 82,
            height = 72,
            frame_count = 16,
            shift = util.by_pixel(9, 33),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    },
    close_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    }
  },
})
