--Tesla Turret

function tesla_turret_extension_mask(inputs)
  return {
    filename = "__5dim_battlefield__/graphics/icon/tesla-turret/laser-turret-gun-start-mask.png",
    flags = {"mask"},
    width = 51,
    height = 47,
    frame_count = inputs.frame_count and inputs.frame_count or 15,
    line_length = inputs.line_length and inputs.line_length or 0,
    run_mode = inputs.run_mode and inputs.run_mode or "forward",
    axially_symmetrical = false,
    apply_runtime_tint = false,
    direction_count = 4,
    shift = {0.078125, -1.26563},
    tint = inputs.tint or white
  }
end

function tesla_turret_extension(inputs)
  return {
    filename = "__5dim_battlefield__/graphics/icon/tesla-turret/laser-turret-gun-start.png",
    priority = "medium",
    width = 66,
    height = 67,
    frame_count = inputs.frame_count and inputs.frame_count or 15,
    line_length = inputs.line_length and inputs.line_length or 0,
    run_mode = inputs.run_mode and inputs.run_mode or "forward",
    axially_symmetrical = false,
    direction_count = 4,
    shift = {0.0625, -0.984375}
  }
end
--Laser Turret
function laser_turret_base(inputs)
  return {
    layers = {
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
        priority = "high",
        width = 70,
        height = 52,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(0, 2),
        hr_version = {
          filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-base.png",
          priority = "high",
          width = 138,
          height = 104,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(-0.5, 2),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/laser-turret/laser-turret-base-shadow.png",
        flags = {"mask"},
        line_length = 1,
        width = 66,
        height = 42,
        draw_as_shadow = true,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(6, 3),
        hr_version = {
          filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-base-shadow.png",
          flags = {"mask"},
          line_length = 1,
          width = 132,
          height = 82,
          draw_as_shadow = true,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(6, 3),
          scale = 0.5
        }
      }
    }
  }
end

function laser_turret_extension(inputs)
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-raising.png",
    priority = "medium",
    width = 66,
    height = 64,
    frame_count = inputs.frame_count and inputs.frame_count or 15,
    line_length = inputs.line_length and inputs.line_length or 0,
    run_mode = inputs.run_mode and inputs.run_mode or "forward",
    axially_symmetrical = false,
    direction_count = 4,
    shift = util.by_pixel(0, -32),
    hr_version = {
      filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-raising.png",
      priority = "medium",
      width = 130,
      height = 126,
      frame_count = inputs.frame_count and inputs.frame_count or 15,
      line_length = inputs.line_length and inputs.line_length or 0,
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      axially_symmetrical = false,
      direction_count = 4,
      shift = util.by_pixel(0, -32.5),
      scale = 0.5
    }
  }
end

function laser_turret_extension_shadow(inputs)
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-raising-shadow.png",
    width = 92,
    height = 50,
    frame_count = inputs.frame_count and inputs.frame_count or 15,
    line_length = inputs.line_length and inputs.line_length or 0,
    run_mode = inputs.run_mode and inputs.run_mode or "forward",
    axially_symmetrical = false,
    direction_count = 4,
    draw_as_shadow = true,
    shift = util.by_pixel(47, 3),
    hr_version = {
      filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-raising-shadow.png",
      width = 182,
      height = 96,
      frame_count = inputs.frame_count and inputs.frame_count or 15,
      line_length = inputs.line_length and inputs.line_length or 0,
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      axially_symmetrical = false,
      direction_count = 4,
      draw_as_shadow = true,
      shift = util.by_pixel(47, 2.5),
      scale = 0.5
    }
  }
end

function laser_turret_extension_mask(inputs)
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-raising-mask.png",
    flags = {"mask"},
    width = 44,
    height = 40,
    frame_count = inputs.frame_count and inputs.frame_count or 15,
    line_length = inputs.line_length and inputs.line_length or 0,
    run_mode = inputs.run_mode and inputs.run_mode or "forward",
    axially_symmetrical = false,
    apply_runtime_tint = false,
    direction_count = 4,
    shift = util.by_pixel(0, -43),
    tint = inputs.tint or white,
    hr_version = {
      filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-raising-mask.png",
      flags = {"mask"},
      width = 86,
      height = 80,
      frame_count = inputs.frame_count and inputs.frame_count or 15,
      line_length = inputs.line_length and inputs.line_length or 0,
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      axially_symmetrical = false,
      apply_runtime_tint = false,
      direction_count = 4,
      shift = util.by_pixel(0, -43),
      scale = 0.5,
      tint = inputs.tint or white
    }
  }
end

function laser_turret_shooting()
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting.png",
    line_length = 8,
    width = 64,
    height = 60,
    frame_count = 1,
    direction_count = 64,
    shift = util.by_pixel(0, -35),
    hr_version = {
      filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-shooting.png",
      line_length = 8,
      width = 126,
      height = 120,
      frame_count = 1,
      direction_count = 64,
      shift = util.by_pixel(0, -35),
      scale = 0.5
    }
  }
end

function laser_turret_shooting_glow()
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-light.png",
    line_length = 8,
    width = 62,
    height = 58,
    frame_count = 1,
    direction_count = 64,
    blend_mode = "additive",
    shift = util.by_pixel(0, -35),
    hr_version = {
      filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-shooting-light.png",
      line_length = 8,
      width = 122,
      height = 116,
      frame_count = 1,
      direction_count = 64,
      shift = util.by_pixel(-0.5, -35),
      blend_mode = "additive",
      scale = 0.5
    }
  }
end

function laser_turret_shooting_mask(inputs)
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-mask.png",
    flags = {"mask"},
    line_length = 8,
    width = 46,
    height = 42,
    frame_count = 1,
    apply_runtime_tint = false,
    direction_count = 64,
    shift = util.by_pixel(0, -43),
    tint = inputs.tint or white,
    hr_version = {
      filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-shooting-mask.png",
      flags = {"mask"},
      line_length = 8,
      width = 92,
      height = 80,
      frame_count = 1,
      apply_runtime_tint = false,
      direction_count = 64,
      shift = util.by_pixel(0, -43.5),
      scale = 0.5,
      tint = inputs.tint or white,
    }
  }
end

function laser_turret_shooting_shadow()
  return {
    filename = "__base__/graphics/entity/laser-turret/laser-turret-shooting-shadow.png",
    line_length = 8,
    width = 86,
    height = 46,
    frame_count = 1,
    direction_count = 64,
    draw_as_shadow = true,
    shift = util.by_pixel(51, 2),
    hr_version = {
      filename = "__base__/graphics/entity/laser-turret/hr-laser-turret-shooting-shadow.png",
      line_length = 8,
      width = 170,
      height = 92,
      frame_count = 1,
      direction_count = 64,
      draw_as_shadow = true,
      shift = util.by_pixel(50.5, 2.5),
      scale = 0.5
    }
  }
end

-- -- Gun Turret
function gun_turret_base(inputs)
  return {
    layers = {
      {
        filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
        priority = "high",
        width = 76,
        height = 60,
        axially_symmetrical = false,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(1, -1),
        hr_version = {
          filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-base.png",
          priority = "high",
          width = 150,
          height = 118,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(0.5, -1),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
        flags = {"mask"},
        line_length = 1,
        width = 62,
        height = 52,
        axially_symmetrical = false,
        direction_count = 1,
        frame_count = 1,
        shift = util.by_pixel(0, -4),
        apply_runtime_tint = true,
        hr_version = {
          filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-base-mask.png",
          flags = {"mask"},
          line_length = 1,
          width = 122,
          height = 102,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(0, -4.5),
          apply_runtime_tint = true,
          scale = 0.5
        }
      }
    }
  }
end

function gun_turret_extension(inputs)
  return {
    filename = "__base__/graphics/entity/gun-turret/gun-turret-raising.png",
    priority = "medium",
    width = 66,
    height = 64,
    direction_count = 4,
    frame_count = inputs.frame_count or 5,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    shift = util.by_pixel(0, -26),
    axially_symmetrical = false,
    hr_version = {
      filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-raising.png",
      priority = "medium",
      width = 130,
      height = 126,
      direction_count = 4,
      frame_count = inputs.frame_count or 5,
      line_length = inputs.line_length or 0,
      run_mode = inputs.run_mode or "forward",
      shift = util.by_pixel(0, -26.5),
      axially_symmetrical = false,
      scale = 0.5
    }
  }
end

function gun_turret_extension_mask(inputs)
  return {
    filename = "__base__/graphics/entity/gun-turret/gun-turret-raising-mask.png",
    flags = {"mask"},
    width = 24,
    height = 32,
    direction_count = 4,
    frame_count = inputs.frame_count or 5,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    shift = util.by_pixel(0, -28),
    axially_symmetrical = false,
    apply_runtime_tint = false,
    tint = inputs.tint or white,
    hr_version = {
      filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-raising-mask.png",
      flags = {"mask"},
      width = 48,
      height = 62,
      direction_count = 4,
      frame_count = inputs.frame_count or 5,
      line_length = inputs.line_length or 0,
      run_mode = inputs.run_mode or "forward",
      shift = util.by_pixel(0, -28),
      axially_symmetrical = false,
      apply_runtime_tint = false,
      scale = 0.5,
      tint = inputs.tint or white
    }
  }
end

function gun_turret_extension_shadow(inputs)
  return {
    filename = "__base__/graphics/entity/gun-turret/gun-turret-raising-shadow.png",
    width = 126,
    height = 62,
    direction_count = 4,
    frame_count = inputs.frame_count or 5,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    shift = util.by_pixel(19, 2),
    axially_symmetrical = false,
    draw_as_shadow = true,
    hr_version = {
      filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-raising-shadow.png",
      width = 250,
      height = 124,
      direction_count = 4,
      frame_count = inputs.frame_count or 5,
      line_length = inputs.line_length or 0,
      run_mode = inputs.run_mode or "forward",
      shift = util.by_pixel(19, 2.5),
      axially_symmetrical = false,
      draw_as_shadow = true,
      scale = 0.5
    }
  }
end

function gun_turret_attack(inputs)
  return {
    layers = {
      {
        width = 66,
        height = 66,
        frame_count = inputs.frame_count or 2,
        axially_symmetrical = false,
        direction_count = 64,
        shift = util.by_pixel(0, -27),
        stripes = {
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-1.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-2.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-3.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-4.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          }
        },
        hr_version = {
          width = 132,
          height = 130,
          frame_count = inputs.frame_count and inputs.frame_count or 2,
          axially_symmetrical = false,
          direction_count = 64,
          shift = util.by_pixel(0, -27.5),
          stripes = {
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-1.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-2.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-3.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-4.png",
              width_in_frames = inputs.frame_count or 2,
              height_in_frames = 16
            }
          },
          scale = 0.5
        }
      },
      {
        flags = {"mask"},
        line_length = inputs.frame_count or 2,
        width = 30,
        height = 28,
        frame_count = inputs.frame_count or 2,
        axially_symmetrical = false,
        direction_count = 64,
        shift = util.by_pixel(0, -32),
        apply_runtime_tint = true,
        stripes = {
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-1.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-2.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-3.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-mask-4.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          }
        },
        hr_version = {
          flags = {"mask"},
          line_length = inputs.frame_count or 2,
          width = 58,
          height = 54,
          frame_count = inputs.frame_count or 2,
          axially_symmetrical = false,
          direction_count = 64,
          shift = util.by_pixel(0, -32.5),
          apply_runtime_tint = true,
          stripes = {
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-1.png",
              width_in_frames = inputs.frame_count and inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-2.png",
              width_in_frames = inputs.frame_count and inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-3.png",
              width_in_frames = inputs.frame_count and inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-mask-4.png",
              width_in_frames = inputs.frame_count and inputs.frame_count or 2,
              height_in_frames = 16
            }
          },
          scale = 0.5
        }
      },
      {
        width = 126,
        height = 62,
        frame_count = inputs.frame_count and inputs.frame_count or 2,
        axially_symmetrical = false,
        direction_count = 64,
        shift = util.by_pixel(23, 2),
        draw_as_shadow = true,
        stripes = {
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-1.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-2.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-3.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__base__/graphics/entity/gun-turret/gun-turret-shooting-shadow-4.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          }
        },
        hr_version = {
          width = 250,
          height = 124,
          frame_count = inputs.frame_count and inputs.frame_count or 2,
          axially_symmetrical = false,
          direction_count = 64,
          shift = util.by_pixel(22, 2.5),
          draw_as_shadow = true,
          stripes = {
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-1.png",
              width_in_frames = inputs.frame_count and inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-2.png",
              width_in_frames = inputs.frame_count and inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-3.png",
              width_in_frames = inputs.frame_count and inputs.frame_count or 2,
              height_in_frames = 16
            },
            {
              filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-shooting-shadow-4.png",
              width_in_frames = inputs.frame_count and inputs.frame_count or 2,
              height_in_frames = 16
            }
          },
          scale = 0.5
        }
      }
    }
  }
end
