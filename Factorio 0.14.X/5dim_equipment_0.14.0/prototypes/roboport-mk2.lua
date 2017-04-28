data:extend({
  {
    type = "item",
    name = "5d-personal-roboport-mk2-equipment",
    icon = "__5dim_equipment__/graphics/icons/personal-roboport2-equipment.png",
    placed_as_equipment_result = "5d-personal-roboport-mk2-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "armor-roboport",
    order = "b",
    stack_size = 5
  },
  {
    type = "roboport-equipment",
    name = "5d-personal-roboport-mk2-equipment",
    take_result = "5d-personal-roboport-mk2-equipment",
    sprite =
    {
      filename = "__5dim_equipment__/graphics/equipment/personal-roboport2-equipment.png",
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
      buffer_capacity = "40MJ",
      input_flow_limit = "4000KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1200kW",
    energy_consumption = "30kW",
    robot_limit = 15,
    logistics_radius = 10,
    construction_radius = 25,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"armor"}
  },
  
  {
    type = "recipe",
    name = "5d-personal-roboport-mk2-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"personal-roboport-equipment", 1},
      {"processing-unit", 10},
      {"iron-gear-wheel", 40},
      {"steel-plate", 20},
      {"battery", 45},
    },
    result = "5d-personal-roboport-mk2-equipment"
  }
})