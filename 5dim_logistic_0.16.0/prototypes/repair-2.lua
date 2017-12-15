data:extend({
--Item
  {
    type = "repair-tool",
    name = "5d-repair-pack-2",
    icon = "__5dim_logistic__/graphics/icon/repairpack-2.png",
    flags = {"goes-to-quickbar"},
    icon_size = 32,
    subgroup = "repair",
    order = "b",
    speed = 2,
    durability = 400,
    stack_size = 50
  },
--Recipe
  {
    type = "recipe",
    name = "5d-repair-pack-2",
    ingredients =
    {
      {"repair-pack", 1},
      {"electronic-circuit", 2},
      {"iron-gear-wheel", 1}
    },
    result = "5d-repair-pack-2"
  }
--Entity
})
