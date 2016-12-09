data:extend({
--Item
  {
    type = "repair-tool",
    name = "5d-repair-pack-2",
    icon = "__5dim_logistic__/graphics/icon/repairpack-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "repair",
    order = "b",
    speed = 2,
    durability = 150,
    stack_size = 50
  },
--Recipe
  {
    type = "recipe",
    name = "5d-repair-pack-2",
    ingredients =
    {
      {"electronic-circuit", 2},
      {"iron-gear-wheel", 1}
    },
    result = "5d-repair-pack-2"
  }
--Entity
})
