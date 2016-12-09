data:extend({
-- Item
  {
    type = "module",
    name = "5d-speed-module-5",
    icon = "__5dim_module__/graphics/icon/a5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed",
    order = "e",
    category = "speed",
    tier = 5,
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.75}, consumption = {bonus = 0.9}}
  },

--Recipe
  {
    type = "recipe",
    name = "5d-speed-module-5",
    enabled = false,
    ingredients =
    {
      {"5d-speed-module-4", 4},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
      {"alien-artifact", 1}
    },
    energy_required = 120,
    result = "5d-speed-module-5"
  },

--Entity
})