bauxite =
{
  name = "bauxite-ore",
  tint = {r=0.777, g=0.7, b=0.333},
  map_color = {r=0.777, g=0.7, b=0.333},
  hardness = 1.4,
  mining_time = 2,
  enabled = true,
  icon = "__5dim_ores__/graphics/icon/bauxite-ore.png",
  stage_mult = 10,
  item =
  {
    create = true,
    stack_size = 200
  },
  sprite =
  {
    sheet = 1
  },
  autoplace =
  {
    create = true,
    starting_area = false,
    richness = 0.8,
    size = 1.5
  },
}

data:extend({
-- Item
  {
    type = "item",
    name = "aluminium-plate",
    icon = "__5dim_core__/graphics/icon/aluminium-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "plates-plates",
    order = "f",
    stack_size = 200
  },

--Recipe
  {
    type = "recipe",
    name = "5d-aluminium-plate",
    category = "smelting",
    energy_required = 10,
    ingredients = {{ "bauxite-ore", 2}},
    result = "aluminium-plate"
  },
  
-- Item
  {
    type = "item",
    name = "5d-aluminium-wire",
    icon = "__5dim_core__/graphics/icon/5dim_icon_aluminiunwire.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "logistic-wire",
    order = "e",
    stack_size = 500
  },

--Recipe
  {
    type = "recipe",
    name = "5d-aluminium-wire",
    ingredients = {{"aluminium-plate", 1}},
    result_count = 4,
    result = "5d-aluminium-wire"
  },
-- Item
  {
    type = "item",
    name = "5d-aluminium-gear-wheel",
    icon = "__5dim_core__/graphics/icon/icon_5dim_aluminio-gear-wheel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-gear",
    order = "d",
    stack_size = 500
  },

--Recipe
  {
    type = "recipe",
    name = "5d-aluminium-gear-wheel",
    ingredients = {{"aluminium-plate", 1}},
    result_count = 4,
    result = "5d-aluminium-gear-wheel"
  },
})