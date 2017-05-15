data:extend({
-- Item
  {
    type = "module",
    name = "5d-productivity-module-4",
    icon = "__5dim_module__/graphics/icon/r4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity",
    order = "d",
    category = "productivity",
    tier = 4,
    stack_size = 50,
    default_request_amount = 10,
    effect = { productivity = {bonus = 0.12}, consumption = {bonus = 1}, pollution = {bonus = 0.6}, speed = {bonus = -0.30}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },

--Recipe
  {
    type = "recipe",
    name = "5d-productivity-module-4",
    enabled = false,
    ingredients =
    {
      {"productivity-module-3", 5},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
      ----{"alien-artifact", 1}
    },
    energy_required = 90,
    result = "5d-productivity-module-4"
  },

--Entity
})