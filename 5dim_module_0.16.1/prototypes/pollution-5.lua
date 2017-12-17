data:extend({
-- Item
  {
    type = "module",
    name = "5d-pollution-module-5",
    icon = "__5dim_module__/graphics/icon/m5.png",
    flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "pollution",
    order = "e",
    category = "pollution",
    tier = 5,
    stack_size = 50,
    default_request_amount = 10,
    effect = { pollution = {bonus = -0.75}},
  },

--Recipe
  {
    type = "recipe",
    name = "5d-pollution-module-5",
    enabled = false,
    ingredients =
    {
      {"5d-pollution-module-4", 4},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
      ----{"alien-artifact", 1}
    },
    energy_required = 120,
    result = "5d-pollution-module-5"
  },
})