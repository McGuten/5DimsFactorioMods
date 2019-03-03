data:extend({
  {
    type = "item",
    name = "5d-battery-mk3-equipment",
    icon = "__5dim_equipment__/graphics/icons/battery-mk3-equipment.png",
    placed_as_equipment_result = "5d-battery-mk3-equipment",
    icon_size = 32,
    -- flags = {"goes-to-main-inventory"},
    subgroup = "armor-baterry",
    order = "c",
    stack_size = 50,
    default_request_amount = 10
  },
  {
    type = "battery-equipment",
    name = "5d-battery-mk3-equipment",
    sprite =
    {
      filename = "__5dim_equipment__/graphics/equipment/battery-mk3-equipment.png",
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
      buffer_capacity = "500MJ",
      input_flow_limit = "5GW",
      output_flow_limit = "5GW",
      usage_priority = "tertiary"
    },
    categories = {"armor"}
  },
  {
    type = "recipe",
    name = "5d-battery-mk3-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"battery-mk2-equipment", 10},
      {"processing-unit", 20}
    },
    result = "5d-battery-mk3-equipment"
  },
})