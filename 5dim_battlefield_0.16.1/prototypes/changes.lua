data.raw.item["gun-turret"].icon = "__5dim_battlefield__/graphics/icon/icon-normal-gun-turret.png"
data.raw.item["laser-turret"].icon = "__5dim_battlefield__/graphics/icon/icon-normal-laser-turret.png"
require("prototypes.atack-parameters")
require("prototypes.scalecolor")
require("prototypes.damage")
require ("prototypes.turret-function")
local color = {r=1, g=0.1, b=0.1, a=1}

data:extend({
--Gun turret
  {
    type = "ammo-turret",
    name = "gun-turret",
    icon = "__5dim_battlefield__/graphics/icon/icon-normal-gun-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret"},
    icon_size = 32,
    max_health = 400,
    corpse = "medium-remnants",
	fast_replaceable_group = "turret",
    collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
    selection_box = {{-1, -1 }, {1, 1}},
    rotation_speed = 0.015,
    preparing_speed = 0.08,
    folding_speed = 0.08,
    dying_explosion = "medium-explosion",
    inventory_size = 1,
    automated_ammo_count = 10,
    attacking_speed = 0.5,
    folded_animation = 
    {
      layers =
      {
        gun_turret_extension{frame_count=1, line_length = 1},
        gun_turret_extension_mask{frame_count=1, line_length = 1, tint = color},
        gun_turret_extension_shadow{frame_count=1, line_length = 1}
      }
    },
    preparing_animation = 
    {
      layers =
      {
        gun_turret_extension{},
        gun_turret_extension_mask{tint = color},
        gun_turret_extension_shadow{}
      }
    },
    prepared_animation = gun_turret_attack{frame_count=1, tint = color},
    attacking_animation = gun_turret_attack{tint = color},
    folding_animation = 
    { 
      layers = 
      { 
        gun_turret_extension{run_mode = "backward"},
        gun_turret_extension_mask{run_mode = "backward", tint = color},
        gun_turret_extension_shadow{run_mode = "backward"}
      }
    },
    base_picture = gun_turret_base{tint = color},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 6,
      projectile_creation_distance = 1.39375,
      projectile_center = {0.0625, -0.0875}, -- same as gun_turret_attack shift
      damage_modifier = 2,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -1.925,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      range = 17,
      sound = make_heavy_gunshot_sounds(),
    },
	call_for_help_radius = 40,
  },
-- Laser turret
  {
    type = "electric-turret",
    name = "laser-turret",
    icon = "__5dim_battlefield__/graphics/icon/icon-normal-laser-turret.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation"},
    minable = { mining_time = 0.5, result = "laser-turret" },
    icon_size = 32,
    max_health = 1000,
    corpse = "medium-remnants",
	fast_replaceable_group = "turret",
    collision_box = {{ -0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{ -1, -1}, {1, 1}},
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    call_for_help_radius = 40,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "801kJ",
      input_flow_limit = "4800kW",
      drain = "24kW",
      usage_priority = "primary-input"
    },
    folded_animation =
    {
      layers =
      {
        laser_turret_extension{frame_count=1, line_length = 1},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1, tint = color}
      }
    },
    preparing_animation =
    {
      layers =
      {
        laser_turret_extension{},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{tint = color}
      }
    },
    prepared_animation = laser_turret_attack{tint = color},
    folding_animation = 
    {
      layers =
      {
        laser_turret_extension{run_mode = "backward"},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward", tint = color}
      }
    },
    base_picture = laser_turret_base{tint = color},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 20,
      projectile_center = {0, -0.2},
      projectile_creation_distance = 1.4,
      range = 25,
      damage_modifier = 8,
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "800kJ",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser",
                starting_speed = 0.28
              }
            }
          }
        }
      },
      sound = make_laser_sounds()
    }
  },
})
