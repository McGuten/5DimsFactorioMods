require ("prototypes.turret-function")
local color = {r=0, g=1, b=1, a=1}
data:extend({
--Beam
{
    type = "beam",
    name = "pikachu-beam",
    flags = {"not-on-map"},
    width = 10.9,
    damage_interval = 20,
    working_sound =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 1, type = "electric"}
          }
        }
      }
    },
    head =
    {
      filename = "__5dim_battlefield__/graphics/icon/tesla-turret/tesla-head.png",
      line_length = 1,
      width = 45,
      height = 39,
      frame_count = 1,
      animation_speed = 0.05,
      blend_mode = beam_blend_mode,
    },
    tail =
    {
      filename = "__5dim_battlefield__/graphics/icon/tesla-turret/tesla-tail.png",
      line_length = 1,
      width = 45,
      height = 39,
      frame_count = 1,
      blend_mode = beam_blend_mode,
    },
    body =
    {
      {
        filename = "__5dim_battlefield__/graphics/icon/tesla-turret/tesla-body.png",
        line_length = 1,
        width = 45,
        height = 39,
        frame_count = 1,
        blend_mode = beam_blend_mode,
      },

    }
  },
--Item
  {
    type = "item",
    name = "5d-tesla-turret",
    icon = "__5dim_battlefield__/graphics/icon/tesla-turret/tesla_turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defense-tesla",
    order = "a",
    place_result = "5d-tesla-turret",
    stack_size = 50
  },
--Recipe
  {
    type = "recipe",
    name = "5d-tesla-turret",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"processing-unit", 10},
      {"alien-artifact", 10},
      {"5d-laser-turret-big", 1},
      {"laser-turret", 1},
      {"5d-laser-turret-small", 1},
    },
    result = "5d-tesla-turret"
  },

--Entity
  {
    type = "electric-turret",
    name = "5d-tesla-turret",
    icon = "__5dim_battlefield__/graphics/icon/tesla-turret/tesla_turret.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation"},
    minable = { mining_time = 0.5, result = "5d-tesla-turret" },
    max_health = 500,
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
      buffer_capacity = "1650kJ",
      input_flow_limit = "500kW",
      drain = "15kW",
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
    ammo_category = "combat-robot-laser",
    cooldown = 0.01,
    range = 50,
    projectile_creation_distance = 0.9,
    damage_modifier = 0.6,
    ammo_type =
    {
      category = "electric",
      energy_consumption = "16kJ",
      action =
      {        
	    type = "direct",
        repeat_count = 16,
        action_delivery =
        {
            type = "beam",
            beam = "pikachu-beam",
            max_length = 15,
            duration = 200,
            source_offset = {0.3, -1.5},
        }
      }
    },
      sound = make_laser_sounds()
  }
  },
})
