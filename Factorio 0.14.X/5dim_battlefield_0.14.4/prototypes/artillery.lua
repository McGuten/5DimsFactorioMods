data:extend({
--Item
  {
    type = "item",
    name = "5d-artillery",
    icon = "__5dim_battlefield__/graphics/icon/artillery.png",
    flags = {"goes-to-quickbar"},
    subgroup = "vehicles-arty",
    order = "a",
    place_result = "5d-artillery",
    stack_size = 1
  },
  {
    type = "projectile",
    name = "artillery-shell",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "medium-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true
            }
          }
        }
      },
      {
        type = "area",
        perimeter = 5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
			{
				type = "damage",
				damage = { amount = 150 , type = "physical"}
			},
			{
				type = "damage",
				damage = { amount = 50 , type = "explosion"}
			}
		  }
        }	
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
    smoke = capsule_smoke,
  },
  {
    type = "recipe",
    name = "artillery-shell",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {"steel-plate", 6},
      {"plastic-bar", 5},
      {"explosives", 2},
    },
    result = "artillery-shell"
  },
  {
    type = "ammo",
    name = "artillery-shell",
    icon = "__5dim_battlefield__/graphics/icon/artillery-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "artillery-shell",
      target_type = "position",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "artillery-shell",
          starting_speed = 0.3,
          max_range = 150,
        }
      }
    },
    subgroup = "vehicles-arty",
    order = "z",
    stack_size = 100
  },
  {
    type = "gun",
    name = "5d-tank-cannon",
    icon = "__base__/graphics/icons/tank-cannon.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "artillery-shell",
      cooldown = 360,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 150,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 5
  },
  {
    type = "gun",
    name = "5d-tank-machine-gun",
    icon = "__base__/graphics/icons/submachine-gun.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "a[basic-clips]-b[tank-machine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 4,
      movement_slow_down_factor = 0.7,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_center = {-0.15625, -0.07812},
      projectile_creation_distance = 1,
      range = 15,
      sound = make_heavy_gunshot_sounds(),
    },
    stack_size = 1
  },
--Recipe
  {
    type = "recipe",
    name = "5d-artillery",
    enabled = false,
    ingredients =
    {
      {"engine-unit", 16},
      {"steel-plate", 50},
      {"iron-gear-wheel", 15},
      {"advanced-circuit", 5}
    },
    result = "5d-artillery"
  },
--Entity
  {
    type = "car",
    name = "5d-artillery",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "5d-artillery"},
    max_health = 750,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.5,
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
          width = 139,
          height = 110,
          frame_count = 2,
          direction_count = 64,
          shift = {-0.140625, -0.28125},
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
            {
             filename = "__5dim_battlefield__/graphics/icon/base-1.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__5dim_battlefield__/graphics/icon/base-2.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__5dim_battlefield__/graphics/icon/base-3.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__5dim_battlefield__/graphics/icon/base-4.png",
             width_in_frames = 2,
             height_in_frames = 16,
            }
          }
        },
        {
          width = 109,
          height = 88,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {-0.140625, -0.65625},
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          })
        },
        {
          width = 154,
          height = 99,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0.59375, 0.328125},
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
           {
            filename = "__base__/graphics/entity/tank/base-shadow-1.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/base-shadow-2.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/base-shadow-3.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/base-shadow-4.png",
            width_in_frames = 1,
            height_in_frames = 16,
           }
          })
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__5dim_battlefield__/graphics/icon/turret.png",
          line_length = 8,
          width = 92,
          height = 69,
          frame_count = 1,
          direction_count = 64,
          shift = {-0.15625, -1.07812},
          animation_speed = 8,
        },
        {
          filename = "__base__/graphics/entity/tank/turret-mask.png",
          line_length = 8,
          width = 38,
          height = 29,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {-0.15625, -1.23438},
        },
        {
          filename = "__base__/graphics/entity/tank/turret-shadow.png",
          line_length = 8,
          width = 95,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {1.70312, 0.640625},
        }
      }
    },
    turret_rotation_speed = 0.20 / 35,
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
    weight = 200000,
    inventory_size = 5,
    guns = { "5d-tank-cannon", "5d-tank-machine-gun"},
  },
})
