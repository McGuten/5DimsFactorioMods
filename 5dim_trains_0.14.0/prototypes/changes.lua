data:extend({
  {
    type = "straight-rail",
    name = "straight-rail",
    icon = "__base__/graphics/icons/rail.png",
    flags = {"placeable-neutral", "player-creation", "building-direction-8-way"},
    minable = {mining_time = 0.5, result = "rail"},
    max_health = 100,
    corpse = "straight-rail-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.8}, {0.7, 0.8}},
    selection_box = {{-0.7, -0.8}, {0.7, 0.8}},
    collision_mask = {"object-layer"},
    rail_category = "regular",
    pictures = railpictures(),
  },
  {
    type = "curved-rail",
    name = "curved-rail",
    icon = "__base__/graphics/icons/curved-rail.png",
    flags = {"placeable-neutral", "player-creation", "building-direction-8-way"},
    minable = {mining_time = 0.5, result = "rail", count = 4},
    max_health = 200,
    corpse = "curved-rail-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.75, -0.55}, {0.75, 1.6}},
    secondary_collision_box = {{-0.65, -2.43}, {0.65, 2.43}},
    selection_box = {{-1.7, -0.8}, {1.7, 0.8}},
    collision_mask = {"object-layer"},
    rail_category = "regular",
    pictures = railpictures(),
    placeable_by = { item="rail", count = 4},
  },
})
