data:extend({
-- Item
  {
    type = "module",
    name = "5d-pollution-module-2",
    icon = "__5dim_module__/graphics/icon/m2.png",
    flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "pollution",
    order = "b",
    category = "pollution",
    tier = 2,
    stack_size = 50,
    default_request_amount = 10,
    effect = { pollution = {bonus = -0.30}},
  },

--Recipe
  {
    type = "recipe",
    name = "5d-pollution-module-2",
    enabled = false,
    ingredients =
    {
      {"5d-pollution-module-1", 4},
      {"processing-unit", 5},
      {"advanced-circuit", 5},
    },
    energy_required = 30,
    result = "5d-pollution-module-2"
  },
})