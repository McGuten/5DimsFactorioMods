data:extend({
  {
    type = "module",
    name = "5d-effectivity-productivity-4",
    icon = "__5dim_module__/graphics/icon/vr4.png",
    flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "module-4",
    order = "e",
    category = "effectivity",
    tier = 4,
    stack_size = 50,
    default_request_amount = 10,
    effect = { productivity = {bonus = 0.12}, consumption = {bonus = 0.4}, pollution = {bonus = 0.6}, speed = {bonus = -0.30}},
  },

--Recipe
  {
    type = "recipe",
    name = "5d-effectivity-productivity-4",
    enabled = false,
	category = "welding",
    ingredients =
    {
      {"5d-effectivity-module-4", 1},
      {"5d-productivity-module-4", 1},
    },
    energy_required = 90,
    result = "5d-effectivity-productivity-4"
  },

--Entity
})