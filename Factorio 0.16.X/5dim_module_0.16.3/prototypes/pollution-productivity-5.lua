data:extend({
  {
    type = "module",
    name = "5d-pollution-productivity-5",
    icon = "__5dim_module__/graphics/icon/rm5.png",
    flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "module-5",
    order = "f",
    category = "productivity",
    tier = 5,
    stack_size = 50,
    default_request_amount = 10,
    effect = { productivity = {bonus = 0.15}, consumption = {bonus = 1.2}, pollution = {bonus = -0.05}, speed = {bonus = -0.35}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },

--Recipe
  {
    type = "recipe",
    name = "5d-pollution-productivity-5",
    enabled = false,
	category = "welding",
    ingredients =
    {
      {"5d-pollution-module-5", 1},
      {"5d-productivity-module-5", 1},
    },
    energy_required = 60,
    result = "5d-pollution-productivity-5"
  },

--Entity
})