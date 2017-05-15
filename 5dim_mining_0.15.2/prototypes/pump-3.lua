data:extend({
-- Item
  {
    type = "item",
    name = "5d-pumpjack-3",
    icon = "__5dim_mining__/graphics/icon/pumpjack-animation_2_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "liquid-pump",
    order = "c",
    place_result = "5d-pumpjack-3",
    stack_size = 20
  },

--Recipe
  {
    type = "recipe",
    name = "5d-pumpjack-3",
    energy_required = 8,
    ingredients =
    {
      {"steel-plate", 30},
      {"5d-pumpjack-2", 1},
      {"electronic-circuit", 20},
      {"pipe", 25},
    },
    result = "5d-pumpjack-3",
    enabled = false
  },

--Entity
  {
    type = "mining-drill",
    name = "5d-pumpjack-3",
    icon = "__5dim_mining__/graphics/icon/pumpjack-animation_2_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "5d-pumpjack-3"},
    resource_categories = {"basic-fluid"},
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    output_fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "320kW",
    mining_speed = 3,
    mining_power = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    base_picture =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
        priority = "extra-high",
        width = 114,
        height = 113,
        shift = {0.1875, -0.03125}
      }
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__5dim_mining__/graphics/icon/pumpjack-animation_2.png",
        frame_count = 40,
        animation_speed = 0.5
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "pumpjack"
  }
})