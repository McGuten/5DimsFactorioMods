data:extend({
-- Item
  {
    type = "module",
    name = "5d-effectivity-module-5",
    icon = "__5dim_module__/graphics/icon/v5.png",
    -- flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "effectivity",
    order = "e",
    category = "effectivity",
    tier = 5,
    stack_size = 50,
    default_request_amount = 10,
    effect = { consumption = {bonus = -0.75}}
  },

--Recipe
  {
    type = "recipe",
    name = "5d-effectivity-module-5",
    enabled = false,
    ingredients =
    {
      {"5d-effectivity-module-4", 5},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
      ----{"alien-artifact", 1}
    },
    energy_required = 60,
    result = "5d-effectivity-module-5"
  },

--Entity
})