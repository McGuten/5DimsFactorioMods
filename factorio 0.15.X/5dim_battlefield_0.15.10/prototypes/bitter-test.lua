data:extend({
--Item
  {
    type = "item",
    name = "5d-bitter",
    icon = "__5dim_battlefield__/graphics/icon/artillery.png",
    flags = {"goes-to-quickbar"},
    subgroup = "vehicles-arty",
    order = "a",
    place_result = "small-biter",
    stack_size = 1
  },
  {
    type = "recipe",
    name = "bitter",
    enabled = true,
    energy_required = 3,
    ingredients =
    {
      {"iron-plate", 1},
    },
    result = "5d-bitter"
  },
})
