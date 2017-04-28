data:extend({
  {
    type = "module",
    name = "5d-effectivity-productivity-5",
    icon = "__5dim_module__/graphics/icon/vr5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "module-5",
    order = "e",
    category = "effectivity",
    tier = 5,
    stack_size = 50,
    default_request_amount = 10,
    effect = { productivity = {bonus = 0.15}, consumption = {bonus = 0.45}, pollution = {bonus = 0.7}, speed = {bonus = -0.35}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },

--Recipe
  {
    type = "recipe",
    name = "5d-effectivity-productivity-5",
    enabled = false,
	category = "welding",
    ingredients =
    {
      {"5d-effectivity-module-5", 1},
      {"5d-productivity-module-5", 1},
    },
    energy_required = 90,
    result = "5d-effectivity-productivity-5"
  },

--Entity
})