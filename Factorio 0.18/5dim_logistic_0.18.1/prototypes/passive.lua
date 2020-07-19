data:extend({
-- Item
  {
    type = "item",
    name = "5d-passive",
    icon = "__5dim_logistic__/graphics/icon/5d_icon_logistic-chest-passive-provider_2_.png",
    -- flags = {"goes-to-quickbar"},
    icon_size = 32,
    subgroup = "logistic-pasive",
    order = "b",
    place_result = "5d-passive",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-passive",
    enabled = "false",
    ingredients =
    {
      {"logistic-chest-passive-provider", 1},
      --{"smart-chest", 1},
      {"advanced-circuit", 1}
    },
    result = "5d-passive"
  },

--Entity
  {
    type = "logistic-container",
    name = "5d-passive",
    icon = "__5dim_logistic__/graphics/icon/5d_icon_logistic-chest-passive-provider_2_.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-passive"},
    icon_size = 32,
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/logistic-chest/logistic-chest-passive-provider.png",
          priority = "extra-high",
          width = 34,
          height = 38,
          frame_count = 7,
          shift = util.by_pixel(0, -2),
          hr_version =
          {
            filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-passive-provider.png",
            priority = "extra-high",
            width = 66,
            height = 74,
            frame_count = 7,
            shift = util.by_pixel(0, -2),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/logistic-chest/logistic-chest-shadow.png",
          priority = "extra-high",
          width = 48,
          height = 24,
          repeat_count = 7,
          shift = util.by_pixel(8.5, 5.5),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-shadow.png",
            priority = "extra-high",
            width = 96,
            height = 44,
            repeat_count = 7,
            shift = util.by_pixel(8.5, 5),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = 7.5
  },
})