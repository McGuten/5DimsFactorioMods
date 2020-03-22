data:extend({
--Item
  {
    type = "item-with-entity-data",
    name = "5d-tank",
    icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    subgroup = "vehicles-tank",
    order = "b",
    place_result = "5d-tank",
    stack_size = 1
  },
--Recipe
  {
    type = "recipe",
    name = "5d-tank",
    enabled = false,
    ingredients =
    {
        {"tank", 1},
        {"engine-unit", 16},
        {"steel-plate", 50},
        {"iron-gear-wheel", 15},
        {"advanced-circuit", 5}
    },
    result = "5d-tank"
  },
--Entity
  {
    type = "car",
    name = "5d-tank",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
    minable = {mining_time = 1, result = "5d-tank"},
    icon_size = 32,
    max_health = 3000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.6,
    braking_power = "400kW",
    burner =
    {
      effectivity = 0.75,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "600kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6
      }
    },
    animation =
    {
      layers =
      {
        {
          priority = "low",
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
            {
             filename = "__base__/graphics/entity/tank/tank-base-1.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__base__/graphics/entity/tank/tank-base-2.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__base__/graphics/entity/tank/tank-base-3.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__base__/graphics/entity/tank/tank-base-4.png",
             width_in_frames = 2,
             height_in_frames = 16,
            }
          },
          hr_version = {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
              {
               filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
               width_in_frames = 2,
               height_in_frames = 16,
              },
              {
               filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
               width_in_frames = 2,
               height_in_frames = 16,
              },
              {
               filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
               width_in_frames = 2,
               height_in_frames = 16,
              },
              {
               filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
               width_in_frames = 2,
               height_in_frames = 16,
              }
            },
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 104,
          height = 84,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -21),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -21),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 20,
              },
            }),
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
           {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
            width_in_frames = 1,
            height_in_frames = 16,
           }
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
             {
              filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
              width_in_frames = 1,
              height_in_frames = 16,
             },
             {
              filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
              width_in_frames = 1,
              height_in_frames = 16,
             },
             {
              filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
              width_in_frames = 1,
              height_in_frames = 16,
             },
             {
              filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
              width_in_frames = 1,
              height_in_frames = 16,
             }
            }),
            scale = 0.5
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(-5, -34.5),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -34.5),
            animation_speed = 8,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -35.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-5, -35.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(51.5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(51.25, 6.5),
            scale = 0.5
          }
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 20000,
    inventory_size = 80,
    guns = { "tank-cannon", "tank-machine-gun" },
  },
})
