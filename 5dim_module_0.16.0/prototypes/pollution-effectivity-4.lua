data:extend({
  {
    type = "module",
    name = "5d-pollution-effectivity-4",
    icon = "__5dim_module__/graphics/icon/vm4.png",
    flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "module-4",
    order = "d",
    category = "effectivity",
    tier = 4,
    stack_size = 50,
    default_request_amount = 10,
    effect = { pollution = {bonus = -0.60}, consumption = {bonus = -0.6}},
  },

--Recipe
  {
    type = "recipe",
    name = "5d-pollution-effectivity-4",
    enabled = false,
	category = "welding",
    ingredients =
    {
      {"5d-pollution-module-4", 1},
      {"5d-effectivity-module-4", 1},
    },
    energy_required = 90,
    result = "5d-pollution-effectivity-4"
  },

--Entity
})