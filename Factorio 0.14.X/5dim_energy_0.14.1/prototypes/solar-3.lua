data:extend({
-- Item
  {
    type = "item",
    name = "5d-solar-panel-3",
    icon = "__5dim_energy__/graphics/icon/icon_5d_solar-panel_3_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-solar-panel",
    order = "c",
    place_result = "5d-solar-panel-3",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-solar-panel-3",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 10},
      {"advanced-circuit", 2},
      {"copper-plate", 5},
      {"5d-solar-panel-2", 1},
    },
    result = "5d-solar-panel-3"
  },

--Entity
  {
    type = "solar-panel",
    name = "5d-solar-panel-3",
    icon = "__5dim_energy__/graphics/icon/icon_5d_solar-panel_3_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-solar-panel-3"},
    max_health = 100,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__5dim_energy__/graphics/icon/icon_5d_solar-panel_3.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "180kW"
  },
})