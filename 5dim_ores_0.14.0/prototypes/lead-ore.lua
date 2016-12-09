lead =
{
  name = "lead-ore",
  icon = "__5dim_ores__/graphics/icon/lead-ore.png",
  hardness = 0.7,
  mining_time = 1.5,
  tint = {r = 0.5, g = 0.5, b = 0.5},
  map_color = {r=0.250, g=0.250, b=0.250},
  item =
  {
    create = true,
    stack_size = 200
  },
  stage_mult = 10,
  sprite =
  {
    sheet = 1
  },
  enabled = true,
  autoplace =
  {
    create = true,
    starting_area = true,
    richness = 1.2,
    size = 1
  }
}
  data:extend({
-- Item
  {
    type = "item",
    name = "lead-plate",
    icon = "__5dim_core__/graphics/icon/lead-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "plates-plates",
    order = "d",
    stack_size = 200
  },

--Recipe
  {
    type = "recipe",
    name = "5d-lead-plate",
    category = "smelting",
    energy_required = 2,
    ingredients = {{ "lead-ore", 3}},
    result = "lead-plate"
  },
})