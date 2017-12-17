data:extend({
  {
    type = "module",
    name = "5d-speed-pollution-5",
    icon = "__5dim_module__/graphics/icon/am5.png",
    flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "module-5",
    order = "c",
    category = "speed",
    tier = 5,
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.75}, pollution = {bonus = -0.75}, consumption = {bonus = 0.9}}
  },

--Recipe
  {
    type = "recipe",
    name = "5d-speed-pollution-5",
    enabled = false,
	category = "welding",
    ingredients =
    {
      {"5d-speed-module-5", 1},
      {"5d-pollution-module-5", 1},
    },
    energy_required = 90,
    result = "5d-speed-pollution-5"
  },

--Entity
})