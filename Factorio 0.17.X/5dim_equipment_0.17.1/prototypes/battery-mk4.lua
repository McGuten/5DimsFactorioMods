data:extend({
  {
    type = "item",
    name = "5d-battery-mk4-equipment",
    icon = "__5dim_equipment__/graphics/icons/battery-mk4-equipment.png",
    placed_as_equipment_result = "5d-battery-mk4-equipment",
    icon_size = 32,
    -- flags = {"goes-to-main-inventory"},
    subgroup = "armor-baterry",
    order = "d",
    stack_size = 50,
    default_request_amount = 10
  },
  {
    type = "battery-equipment",
    name = "5d-battery-mk4-equipment",
    sprite =
    {
      filename = "__5dim_equipment__/graphics/equipment/battery-mk4-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "2GJ",
      input_flow_limit = "25GW",
      output_flow_limit = "25GW",
      usage_priority = "tertiary"
    },
    categories = {"armor"}
  },
  {
    type = "recipe",
    name = "5d-battery-mk4-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"5d-battery-mk3-equipment", 10},
      {"processing-unit", 20}
    },
    result = "5d-battery-mk4-equipment"
  },
})