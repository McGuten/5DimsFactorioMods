data:extend({
--Item
  {
    type = "item",
    name = "5d-radar",
    icon = "__5dim_battlefield__/graphics/icon/radar/icon_radar.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defense-radar",
    order = "b",
    place_result = "5d-radar",
    stack_size = 50
  },
--Recipe
  {
    type = "recipe",
    name = "5d-radar",
    enable = false,
    ingredients =
    {
      {"electronic-circuit", 5},
      {"radar", 5},
      {"iron-gear-wheel", 5},
      {"iron-plate", 10}
    },
    result = "5d-radar"
  },
--Entity
  {
    type = "radar",
    name = "5d-radar",
    icon = "__5dim_battlefield__/graphics/icon/radar/icon_radar.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-radar"},
    max_health = 150,
    corpse = "big-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_per_sector = "10MJ",
    max_distance_of_sector_revealed = 20,
    max_distance_of_nearby_sector_revealed = 5,
    energy_per_nearby_scan = "250kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "300kW",
    pictures =
    {
      filename = "__5dim_battlefield__/graphics/icon/radar/radar.png",
      priority = "low",
      width = 153,
      height = 131,
      apply_projection = false,
      direction_count = 64,
      line_length = 8,
      shift = {0.875, -0.34375}
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 2,
    }
  },
})
