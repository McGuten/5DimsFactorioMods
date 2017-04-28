data:extend({
  {
    type = "item",
    name = "5d-exoskeleton-mk2-equipment",
    icon = "__5dim_equipment__/graphics/icons/exoskeleton2-equipment.png",
    placed_as_equipment_result = "5d-exoskeleton-mk2-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "armor-exoesqueleto",
    order = "b",
    stack_size = 10
  },
  {
    type = "movement-bonus-equipment",
    name = "5d-exoskeleton-mk2-equipment",
    sprite =
    {
      filename = "__5dim_equipment__/graphics/equipment/exoskeleton2-equipment.png",
      width = 64,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_consumption = "300kW",
    movement_bonus = 0.4,
    categories = {"armor"}
  },
  {
    type = "recipe",
    name = "5d-exoskeleton-mk2-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"exoskeleton-equipment", 1},
      {"processing-unit", 10},
      {"speed-module", 1},
    },
    result = "5d-exoskeleton-mk2-equipment"
  },
})