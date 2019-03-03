require ("prototypes.laser-sounds")

data:extend({
  {
    type = "item",
    name = "personal-laser-defense-equipment",
    icon = "__5dim_equipment__/graphics/icons/personal-laser-defense3-equipment.png",
    placed_as_equipment_result = "personal-laser-defense-equipment",
    -- flags = {"goes-to-main-inventory"},
    icon_size = 32,
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
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
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
      type = "beam",
      cooldown = 20,
      range = 15,
      --source_direction_count = 64,
      --source_offset = {0, -3.423489 / 4},
      damage_modifier = 4,
      ammo_type =
      {
        category = "laser-turret",
        energy_consumption = "50kJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "laser-beam",
            max_length = 15,
            duration = 20,
            source_offset = {0, -1.31439 }
          }
        }
      }
    },

    automatic = true,
    categories = {"armor"}
  },
})