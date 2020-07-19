data:extend({
-- Item
  {
    type = "module",
    name = "5d-pollution-module-3",
    icon = "__5dim_module__/graphics/icon/m3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution",
    order = "c",
    category = "pollution",
    tier = 3,
    stack_size = 50,
    default_request_amount = 10,
    effect = { pollution = {bonus = -0.45}},
  },

--Recipe
  {
    type = "recipe",
    name = "5d-pollution-module-3",
    enabled = false,
    ingredients =
    {
      {"5d-pollution-module-2", 4},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
      ----{"alien-artifact", 1}
    },
    energy_required = 60,
    result = "5d-pollution-module-3"
  },
})