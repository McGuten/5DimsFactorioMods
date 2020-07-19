data:extend({
-- Item
  {
    type = "item",
    name = "5d-belt-blocker",
    icon = "__5dim_transport__/graphics/icon/icon_5d_blocker-32.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport-belt",
    order = "z[items]-z[belt-blocker]",
    place_result = "5d-belt-blocker",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-belt-blocker",
    ingredients = 
	{
		{"stone-brick", 1},
		{"iron-plate", 1}
	},
    result = "5d-belt-blocker"
  },

--Entity
  {
    type = "tree",
    name = "5d-belt-blocker",
    icon = "__5dim_transport__/graphics/icon/icon_5d_blocker-32.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable =
    {
      mining_time = 1,
      result = "5d-belt-blocker",
      count = 1
    },
    max_health = 20,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
	selection_box = {{-0.2, -0.2}, {0.2, 0.2}},
	collision_mask = {"item-layer"},	
	pictures =
    {
		{
      filename = "__5dim_transport__/graphics/icon/icon_5d_blocker-32.png",
      priority = "high",
      width = 32,
      height = 32,
	  },
    },
    },
})