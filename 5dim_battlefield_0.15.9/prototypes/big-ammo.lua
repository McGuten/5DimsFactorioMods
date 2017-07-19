require ("prototypes.turret-function")
local color = {r=0.2, g=0.2, b=1, a=1}
data:extend({
--Item
  {
    type = "item",
    name = "5d-gun-turret-big",
    icon = "__5dim_battlefield__/graphics/icon/icon-big-gun-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defense-gun",
    order = "c",
    place_result = "5d-gun-turret-big",
    stack_size = 50
  },
--Recipe
  {
    type = "recipe",
    name = "5d-gun-turret-big",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"iron-gear-wheel", 20},
	  {"steel-plate", 5},
      {"copper-plate", 25},
      {"iron-plate", 20}
    },
    result = "5d-gun-turret-big"
  },

--Entity
  {
    type = "ammo-turret",
    name = "5d-gun-turret-big",
    icon = "__5dim_battlefield__/graphics/icon/icon-big-gun-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "5d-gun-turret-big"},
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
    automated_ammo_count = 5,
    attacking_speed = 0.05,
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
      damage_modifier = 12,
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
      range = 35,
      sound = make_heavy_gunshot_sounds(),
    },
	call_for_help_radius = 40,
  },
})
