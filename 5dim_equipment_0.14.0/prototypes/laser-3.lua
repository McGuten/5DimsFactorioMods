require ("prototypes.laser-sounds")

data:extend({
--Laser
  {
    type = "projectile",
    name = "laser-blue",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 5, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__base__/graphics/entity/laser/laser-to-tint-medium.png",
      tint = {r=0, g=1.0, b=1.0},
      frame_count = 1,
      width = 12,
      height = 33,
      priority = "high",
      blend_mode = "additive"
    },
    speed = 0.15
  },
  {
    type = "recipe",
    name = "5d-personal-blue-laser-defense-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"processing-unit", 1},
      {"steel-plate", 5},
      {"5d-laser-turret-big", 5}
    },
    result = "5d-personal-blue-laser-defense-equipment"
  },
  {
    type = "item",
    name = "5d-personal-blue-laser-defense-equipment",
    icon = "__5dim_equipment__/graphics/icons/personal-laser-defense2-equipment.png",
    placed_as_equipment_result = "5d-personal-blue-laser-defense-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "armor-defense",
    order = "ac",
    stack_size = 20
  },
  {
    type = "active-defense-equipment",
    name = "5d-personal-blue-laser-defense-equipment",
    sprite =
    {
      filename = "__5dim_equipment__/graphics/equipment/personal-laser-defense-equipment.png",
      width = 64,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "440kJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 60,
      projectile_center = {0, -0.2},
      projectile_creation_distance = 1.4,
      range = 50,
      damage_modifier = 25,
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "400kJ",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser-blue",
                starting_speed = 0.28
              }
            }
          }
        }
      },
	},
    automatic = true,
    categories = {"armor"}
  },
})