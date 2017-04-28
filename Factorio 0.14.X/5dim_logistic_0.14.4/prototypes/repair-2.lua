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
    durability = 400,
    stack_size = 50
  },
--Recipe
  {
    type = "recipe",
    name = "5d-repair-pack-2",
    ingredients =
    {
      {"electronic-circuit", 5},
      {"iron-gear-wheel", 3}
    },
    result = "5d-repair-pack-2"
  }
--Entity
})
