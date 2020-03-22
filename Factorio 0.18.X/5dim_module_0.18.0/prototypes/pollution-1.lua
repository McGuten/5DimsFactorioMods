data:extend({
-- Item
  {
    type = "module",
    name = "5d-pollution-module-1",
    icon = "__5dim_module__/graphics/icon/m1.png",
    -- flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "pollution",
    order = "a",
    category = "pollution",
    tier = 1,
    stack_size = 50,
    default_request_amount = 10,
    effect = { pollution = {bonus = -0.15}},
  },

--Recipe
  {
    type = "recipe",
    name = "5d-pollution-module-1",
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 15,
    result = "5d-pollution-module-1"
  },
})