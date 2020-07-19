data:extend({
-- Item
  {
    type = "module",
    name = "5d-productivity-module-5",
    icon = "__5dim_module__/graphics/icon/r5.png",
    -- flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "productivity",
    order = "e",
    category = "productivity",
    tier = 5,
    stack_size = 50,
    default_request_amount = 10,
    effect = { productivity = {bonus = 0.15}, consumption = {bonus = 1.2}, pollution = {bonus = 0.7}, speed = {bonus = -0.35}},
    limitation = production,
  },

--Recipe
  {
    type = "recipe",
    name = "5d-productivity-module-5",
    enabled = false,
    ingredients =
    {
      {"5d-productivity-module-4", 5},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
      ----{"alien-artifact", 1}
    },
    energy_required = 60,
    result = "5d-productivity-module-5"
  },

--Entity
})