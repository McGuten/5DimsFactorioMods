data:extend({
-- Item
  {
    type = "item",
    name = "pipe",
    icon = "__base__/graphics/icons/pipe.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport-pipe",
    order = "a[pipe]-a[pipe]",
    place_result = "pipe",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "pipe",
    ingredients = {{"iron-plate", 1}},
    result = "pipe"
  },

--Entity
  {
    type = "pipe",
    name = "pipe",
    icon = "__base__/graphics/icons/pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "pipe"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    drawing_mask = {{-0.29, -0.29}, {0.29, 0.29}},
	collision_mask = {"object-layer"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = pipepictures(),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}}
  },
})