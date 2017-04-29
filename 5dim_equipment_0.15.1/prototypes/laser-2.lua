require ("prototypes.laser-sounds")

data:extend({
  {
    type = "item",
    name = "personal-laser-defense-equipment",
    icon = "__5dim_equipment__/graphics/icons/personal-laser-defense3-equipment.png",
    placed_as_equipment_result = "personal-laser-defense-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "armor-defense",
    order = "ab",
    stack_size = 20
  },
  --Equipment
  {
    type = "active-defense-equipment",
    name = "personal-laser-defense-equipment",
    sprite =
    {
      filename = "__base__/graphics/equipment/personal-laser-defense-equipment.png",
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
      buffer_capacity = "220kJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 20,
      damage_modifier = 4,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 25,
      sound = make_laser_sounds(),
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "200kJ",
        projectile = "laser",
        speed = 1,
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
      }
    },
    automatic = true,
    categories = {"armor"}
  },
})