--Tesla Turret

function tesla_turret_extension_mask(inputs)
return
{
  filename = "__5dim_battlefield__/graphics/icon/tesla-turret/laser-turret-gun-start-mask.png",
  flags = { "mask" },
  width = 51,
  height = 47,
  frame_count = inputs.frame_count and inputs.frame_count or 15,
  line_length = inputs.line_length and inputs.line_length or 0,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  axially_symmetrical = false,
  apply_runtime_tint = true,
  direction_count = 4,
  shift = {0.078125, -1.26563},
}
end

function tesla_turret_extension(inputs)
return
{
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

function laser_turret_extension_mask(inputs)
return
{
	filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-start-mask.png",
    tint = inputs.tint and inputs.tint or black,
    frame_count = inputs.frame_count and inputs.frame_count or 15,
    line_length = inputs.line_length and inputs.line_length or 0,
    width = 51,
    height = 47,
    direction_count = 4,
    axially_symmetrical = false,
    shift = {0.078125, -1.26563},
    run_mode = inputs.run_mode and inputs.run_mode or "forward",
}
end

function laser_turret_attack(inputs)
return
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-gun.png",
      line_length = 8,
      width = 68,
      height = 68,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.0625, -1}
    },
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-mask.png",
      line_length = 8,
      width = 54,
      height = 44,
      frame_count = 1,
      axially_symmetrical = false,
      tint = inputs.tint and inputs.tint or black, 
      direction_count = 64,
      shift = {0.0625, -1.3125},
    },
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-shadow.png",
      line_length = 8,
      width = 88,
      height = 52,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 64,
      draw_as_shadow = true,
      shift = {1.59375, 0}
    }
  }
}
end

function laser_turret_base(inputs)
return
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
      priority = "high",
      width = 98,
      height = 82,
      axially_symmetrical = false,
      direction_count = 1,
      frame_count = 1,
      shift = { 0.109375, 0.03125 }
    },
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-base-mask.png",
      line_length = 1,
      width = 54,
      height = 46,
      frame_count = 1,
      frame_count = 1,
      axially_symmetrical = false,
      tint = inputs.tint and inputs.tint or black, 
      direction_count = 1,
      shift = {0.046875, -0.109375},
    }
  }
}
end

-- Gun Turret

function gun_turret_extension_mask(inputs)
return
{
      filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-extension-mask.png",
      tint = inputs.tint and inputs.tint or black,
      frame_count = inputs.frame_count and inputs.frame_count or 5,
      line_length = inputs.line_length and inputs.line_length or 0,
      width = 24,
      height = 31,
      direction_count = 4,
      axially_symmetrical = false,
      shift = {0.0625, -0.890625},
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
}
end

function gun_turret_attack(inputs)
return
{
  layers =
  {
    {
      width = 66,
      height = 64,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.0625, -0.875},
      stripes =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-1.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-2.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        }
      }
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-mask.png",
	  tint = inputs.tint and inputs.tint or black,
      line_length = inputs.frame_count and inputs.frame_count or 2,
      width = 29,
      height = 27,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.078125, -1.01563},
      apply_runtime_tint = true
    },
    {
      width = 91,
      height = 50,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {1.29688, 0},
      draw_as_shadow = true,
      stripes =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-shadow-1.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-shadow-2.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        }
      }
    }
  }
}
end

function gun_turret_base(inputs)
return
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
      priority = "high",
      width = 90,
      height = 75,
      axially_symmetrical = false,
      direction_count = 1,
      frame_count = 1,
      shift = {0.0625, -0.046875},
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
      line_length = 1,
      width = 52,
      height = 47,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      frame_count = 1,
      shift = {0.0625, -0.234375},
      tint = inputs.tint and inputs.tint or black,
    }
  }
}
end