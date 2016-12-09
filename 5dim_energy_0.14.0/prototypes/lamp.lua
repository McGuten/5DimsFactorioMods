data:extend({
-- Item
  {
    type = "item",
    name = "5d-lamp",
    icon = "__5dim_energy__/graphics/icon/icon_5d_small-lamp_2_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-lamp",
    order = "b",
    place_result = "5d-lamp",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-lamp",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit", 5},
      {"small-lamp", 1},
      {"iron-plate", 5},
      {"steel-plate", 2},
    },
    result = "5d-lamp"
  },

--Entity
  {
    type = "lamp",
    name = "5d-lamp",
    icon = "__5dim_energy__/graphics/icon/icon_5d_small-lamp_2_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-lamp"},
    max_health = 55,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = {intensity = 0.9, size = 200},
    picture_off =
    {
      filename = "__5dim_energy__/graphics/icon/icon_5d_small-lamp_2.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_energy__/graphics/icon/icon_5d_small-lamp_2.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    }
  },
})