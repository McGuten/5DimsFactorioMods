data:extend({
  {
    type = "module",
    name = "5d-speed-productivity-4",
    icon = "__5dim_module__/graphics/icon/ar4.png",
    -- flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "module-4",
    order = "b",
    category = "speed",
    tier = 4,
    stack_size = 50,
    default_request_amount = 10,
    effect = { productivity = {bonus = 0.12}, consumption = {bonus = 1}, pollution = {bonus = 0.6}, speed = {bonus = 0.30}},
    limitation = production,
  },

--Recipe
  {
    type = "recipe",
    name = "5d-speed-productivity-4",
    enabled = false,
	category = "welding",
    ingredients =
    {
      {"5d-speed-module-4", 1},
      {"5d-productivity-module-4", 1},
    },
    energy_required = 60,
    result = "5d-speed-productivity-4"
  },

--Entity
})