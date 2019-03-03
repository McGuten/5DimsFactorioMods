data:extend(
  {
    -- Item
    {
      type = "item",
      name = "5d-mk4-transport-belt-to-ground-50",
      icon = "__5dim_transport__/graphics/icon/icon_5d_ground-structure_4_50_.png",
      -- flags = {"goes-to-quickbar"},
      icon_size = 32,
      subgroup = "transport-ground-50",
      order = "d",
      place_result = "5d-mk4-transport-belt-to-ground-50",
      stack_size = 50
    },
    --Recipe
    {
      type = "recipe",
      name = "5d-mk4-transport-belt-to-ground-50",
      enabled = "false",
      energy_required = 1,
      ingredients = {
        {"iron-plate", 10},
        {"5d-mk4-transport-belt", 50}
      },
      result_count = 2,
      result = "5d-mk4-transport-belt-to-ground-50"
    },
    --Entity
    {
      type = "underground-belt",
      name = "5d-mk4-transport-belt-to-ground-50",
      icon = "__5dim_transport__/graphics/icon/icon_5d_ground-structure_4_50_.png",
      flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "5d-mk4-transport-belt-to-ground-50"},
      icon_size = 32,
      max_health = 60,
      corpse = "small-remnants",
      max_distance = 50,
      underground_sprite = {
        filename = "__core__/graphics/arrows/underground-lines.png",
        priority = "high",
        width = 64,
        height = 64,
        x = 64,
        scale = 0.5
      },
      underground_remove_belts_sprite = {
        filename = "__core__/graphics/arrows/underground-lines-remove.png",
        priority = "high",
        width = 64,
        height = 64,
        x = 64,
        scale = 0.5
      },
      resistances = {
        {
          type = "fire",
          percent = 60
        },
        {
          type = "impact",
          percent = 30
        }
      },
      collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      animation_speed_coefficient = 32,
      belt_animation_set = express_belt_animation_set,
      fast_replaceable_group = "transport-belt",
      speed = 0.09375,
      structure = {
        direction_in = {
          sheet = {
            filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            y = 96,
            hr_version = {
              filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192,
              scale = 0.5
            }
          }
        },
        direction_out = {
          sheet = {
            filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            hr_version = {
              filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
          }
        },
        direction_in_side_loading = {
          sheet = {
            filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            y = 96 * 3,
            hr_version = {
              filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192 * 3,
              scale = 0.5
            }
          }
        },
        direction_out_side_loading = {
          sheet = {
            filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            y = 96 * 2,
            hr_version = {
              filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192 * 2,
              scale = 0.5
            }
          }
        },
        back_patch = {
          sheet = {
            filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            hr_version = {
              filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure-back-patch.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
          }
        },
        front_patch = {
          sheet = {
            filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            hr_version = {
              filename = "__base__/graphics/entity/express-underground-belt/hr-express-underground-belt-structure-front-patch.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
          }
        }
      }
    }
  }
)
