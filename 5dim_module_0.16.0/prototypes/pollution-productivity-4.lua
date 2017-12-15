data:extend({
  {
    type = "module",
    name = "5d-pollution-productivity-4",
    icon = "__5dim_module__/graphics/icon/rm4.png",
    flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "module-4",
    order = "f",
    category = "productivity",
    tier = 4,
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.6}, pollution = {bonus = -0.60}, consumption = {bonus = 0.8}}
  },

--Recipe
  {
    type = "recipe",
    name = "5d-pollution-productivity-4",
    enabled = false,
	category = "welding",
    ingredients =
    {
      {"5d-pollution-module-4", 1},
      {"5d-productivity-module-4", 1},
    },
    energy_required = 90,
    result = "5d-pollution-productivity-4"
  },

--Entity
})