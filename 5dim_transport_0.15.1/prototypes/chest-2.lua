data:extend({
-- Item
  {
    type = "item",
    name = "5d-iron-chest-mk2",
    icon = "__5dim_transport__/graphics/icon/icon_5d_chest4_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "store-solid",
    order = "e",
    place_result = "5d-iron-chest-mk2",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-iron-chest-mk2",
    enabled = "false",
    ingredients = 
	{
		{"iron-chest", 1},
		{"iron-plate", 20},
	},
    result = "5d-iron-chest-mk2"
  },

--Entity
  {
    type = "container",
    name = "5d-iron-chest-mk2",
    icon = "__5dim_transport__/graphics/icon/icon_5d_chest4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "5d-iron-chest-mk2"},
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
    collision_box = {{-0.85, -0.35}, {0.85, 0.35}},
    selection_box = {{-1.0, -0.5}, {1.0, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 64,
    picture =
    {
      filename = "__5dim_transport__/graphics/icon/icon_5d_chest4.png",
      priority = "extra-high",
      width = 96,
      height = 34,
      shift = {0.4, 0}
    }
  },
})