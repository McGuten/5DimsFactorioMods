data:extend({
-- Item
  {
    type = "item",
    name = "5d-mk2-transport-belt-to-ground-50",
    icon = "__5dim_transport__/graphics/icon/icon_5d_ground-structure_2_50_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport-ground-50",
    order = "b",
    place_result = "5d-mk2-transport-belt-to-ground-50",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-mk2-transport-belt-to-ground-50",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-plate", 10},
      {"fast-transport-belt", 50}
    },
    result_count = 2,
    result = "5d-mk2-transport-belt-to-ground-50"
  },

--Entity
  {
    type = "underground-belt",
    name = "5d-mk2-transport-belt-to-ground-50",
    icon = "__base__/graphics/icons/fast-underground-belt.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-mk2-transport-belt-to-ground-50"},
    max_health = 60,
    corpse = "small-remnants",
    max_distance = 50,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances = 
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.15}, {0.4, 0.1}},
    selection_box = {{-0.5, -0.25}, {0.5, 0.75}},
    distance_to_enter = 0.35,
    animation_speed_coefficient = 32,
    belt_horizontal = fast_belt_horizontal, -- specified in transport-belt-pictures.lua
    belt_vertical = fast_belt_vertical,
    ending_top = fast_belt_ending_top,
    ending_bottom = fast_belt_ending_bottom,
    ending_side = fast_belt_ending_side,
    starting_top = fast_belt_starting_top,
    starting_bottom = fast_belt_starting_bottom,
    starting_side = fast_belt_starting_side,
    fast_replaceable_group = "transport-belt-to-ground",
    speed = 0.0625,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43,
          y = 43
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43
        }
      }
    },
    ending_patch = ending_patch_prototype
  },
})