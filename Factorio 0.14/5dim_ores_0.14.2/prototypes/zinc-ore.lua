zinc =
{
  name = "zinc-ore",
  tint = {r=0.34, g=0.9, b=0.81},
  map_color = {r=0.47, g=1, b=0.96},
  hardness = 1.4,
  mining_time = 2,
  enabled = true,
  icon = "__5dim_ores__/graphics/icon/zinc-ore.png",
  stage_mult = 10,
  item =
  {
    create = true,
    stack_size = 200
  },
  sprite =
  {
    sheet = 2
  },
  autoplace =
  {
    create = true,
    starting_area = false,
    richness = 1,
    size = 1.2
  }
}


data:extend({
-- Item
  {
    type = "item",
    name = "zinc-plate",
    icon = "__5dim_core__/graphics/icon/zinc-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "plates-plates",
    order = "e",
    stack_size = 200
  },

--Recipe
  {
    type = "recipe",
    name = "5d-zinc-plate",
    category = "smelting",
    energy_required = 4.5,
    ingredients = {{ "zinc-ore", 1}},
    result = "zinc-plate"
  },

--Item
  {
    type = "item",
    name = "5d-zinc-gear-wheel",
    icon = "__5dim_core__/graphics/icon/icon_5dim_zinc-gear-wheel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-gear",
    order = "c",
    stack_size = 100
  },

--Recipe
  {
    type = "recipe",
    name = "5d-zinc-gear-wheel",
    ingredients = {{"zinc-plate", 2}},
    result = "5d-zinc-gear-wheel"
  },
})