data:extend({
  {
    type = "module",
    name = "5d-speed-effectivity-5",
    icon = "__5dim_module__/graphics/icon/av5.png",
    -- flags = {"goes-to-main-inventory"},
    icon_size = 32,
    subgroup = "module-5",
    order = "a",
    category = "speed",
    tier = 5,
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.75}, consumption = {bonus = 0.15}}
  },

--Recipe
  {
    type = "recipe",
    name = "5d-speed-effectivity-5",
    enabled = false,
	category = "welding",
    ingredients =
    {
      {"5d-speed-module-5", 1},
      {"5d-effectivity-module-5", 1},
    },
    energy_required = 60,
    result = "5d-speed-effectivity-5"
  },

--Entity
})