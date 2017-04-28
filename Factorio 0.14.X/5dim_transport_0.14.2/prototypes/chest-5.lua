data:extend({
-- Item
  {
    type = "item",
    name = "5d-iron-chest-mk2-3",
    icon = "__5dim_transport__/graphics/icon/icon_5d_chest7_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "store-solid",
    order = "h",
    place_result = "5d-iron-chest-mk2-3",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-iron-chest-mk2-3",
    enabled = "false",
    ingredients = 
	{
		{"iron-chest", 5},
		{"iron-plate", 80},
		{"steel-plate", 40},
	},
    result = "5d-iron-chest-mk2-3"
  },

--Entity
  {
    type = "container",
    name = "5d-iron-chest-mk2-3",
    icon = "__5dim_transport__/graphics/icon/icon_5d_chest7.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "5d-iron-chest-mk2-3"},
    max_health = 100,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-2.85, -2.35}, {2.35, 2.85}},
    selection_box = {{-3.0, -2.4}, {2.4, 3.0}},
    fast_replaceable_group = "container",
    inventory_size = 250,
    picture =
    {
      filename = "__5dim_transport__/graphics/icon/icon_5d_chest7.png",
      priority = "extra-high",
      width = 345,
      height = 223,
        shift = {2.5, 0.4}
    }
  },
})