data:extend({
-- Item
  {
    type = "module",
    name = "5d-pollution-module-4",
    icon = "__5dim_module__/graphics/icon/m4.png",
    flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "pollution",
    order = "d",
    category = "pollution",
    tier = 4,
    stack_size = 50,
    default_request_amount = 10,
    effect = { pollution = {bonus = -0.60}},
  },

--Recipe
  {
    type = "recipe",
    name = "5d-pollution-module-4",
    enabled = false,
    ingredients =
    {
      {"5d-pollution-module-3", 4},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
      ----{"alien-artifact", 1}
    },
    energy_required = 60,
    result = "5d-pollution-module-4"
  },
})