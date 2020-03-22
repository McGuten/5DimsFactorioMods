data:extend({
  {
    type = "item",
    name = "5d-fusion-reactor-mk2-equipment",
    icon = "__5dim_equipment__/graphics/icons/fusion-reactor2-equipment.png",
    placed_as_equipment_result = "5d-fusion-reactor-mk2-equipment",
    -- flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "armor-reactor",
    order = "b",
    stack_size = 20
  },
  {
    type = "generator-equipment",
    name = "5d-fusion-reactor-mk2-equipment",
    sprite =
    {
      filename = "__5dim_equipment__/graphics/equipment/fusion-reactor2-equipment.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "3750kW",
    categories = {"armor"}
  },
  {
    type = "recipe",
    name = "5d-fusion-reactor-mk2-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"fusion-reactor-equipment", 1},
      {"processing-unit", 50},
      ----{"alien-artifact", 50},
      {"productivity-module", 1},
    },
    result = "5d-fusion-reactor-mk2-equipment"
  },
})