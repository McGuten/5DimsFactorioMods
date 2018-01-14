data:extend({
-- Item
  {
    type = "module",
    name = "5d-speed-module-4",
    icon = "__5dim_module__/graphics/icon/a4.png",
    flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "speed",
    order = "d",
    category = "speed",
    tier = 4,
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.6}, consumption = {bonus = 0.8}}
  },

--Recipe
  {
    type = "recipe",
    name = "5d-speed-module-4",
    enabled = false,
    ingredients =
    {
      {"speed-module-3", 4},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
      ----{"alien-artifact", 1}
    },
    energy_required = 60,
    result = "5d-speed-module-4"
  },

--Entity
})