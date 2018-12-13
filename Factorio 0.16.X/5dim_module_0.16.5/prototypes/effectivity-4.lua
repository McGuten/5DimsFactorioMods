data:extend({
-- Item
  {
    type = "module",
    name = "5d-effectivity-module-4",
    icon = "__5dim_module__/graphics/icon/v4.png",
    flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "effectivity",
    order = "d",
    category = "effectivity",
    tier = 4,
    stack_size = 50,
    default_request_amount = 10,
    effect = { consumption = {bonus = -0.6}}
  },

--Recipe
  {
    type = "recipe",
    name = "5d-effectivity-module-4",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-3", 5},
      {"advanced-circuit", 5},
      {"processing-unit", 5},
      ----{"alien-artifact", 1}
    },
    energy_required = 60,
    result = "5d-effectivity-module-4"
  },

--Entity
})