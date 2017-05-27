data:extend({
-- Item
  {
    type = "item",
    name = "5d-pipe-to-ground-mk3-30",
    icon = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-to-underground_3_30_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport-pipe-ground-30",
    order = "c[basic-pipe-ground]",
    place_result = "5d-pipe-to-ground-mk3-30",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-pipe-to-ground-mk3-30",
    enabled = "false",
    ingredients =
    {
      {"5d-pipe-mk3", 30},
      {"steel-plate", 5},
    },
    result_count = 2,
    result = "5d-pipe-to-ground-mk3-30"
  },

--Entity
  {
    type = "pipe-to-ground",
    name = "5d-pipe-to-ground-mk3-30",
    icon = "__base__/graphics/icons/pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-pipe-to-ground-mk3-30"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    drawing_mask = {{-0.29, -0.29}, {0.29, 0.29}},
	collision_mask = {"object-layer"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 30
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-to-ground-up_3.png",
        priority = "high",
        width = 44,
        height = 32 --, shift = {0.10, -0.04}
      },
      down =
      {
        filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-to-ground-down_3.png",
        priority = "high",
        width = 40,
        height = 32 --, shift = {0.05, 0}
      },
      left =
      {
        filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-to-ground-left_3.png",
        priority = "high",
        width = 32,
        height = 42 --, shift = {-0.12, 0.1}
      },
      right =
      {
        filename = "__5dim_transport__/graphics/icon/pipe/icon_5d_pipe-to-ground-right_3.png",
        priority = "high",
        width = 32,
        height = 40 --, shift = {0.1, 0.1}
      },
    }
  },
})