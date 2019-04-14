data:extend(
  {
    -- Item
    {
      type = "item",
      name = "5d-electric-furnace",
      icon = "__5dim_resources__/graphics/icon/icon_5d_electric-furnace_3_.png",
      icon_size = 32,
      subgroup = "furnace-electric",
      order = "b",
      place_result = "5d-electric-furnace",
      stack_size = 50
    },
    --Recipe
    {
      type = "recipe",
      name = "5d-electric-furnace",
      enabled = "false",
      ingredients = {
        {"electric-furnace", 1},
        {"steel-plate", 5},
        {"electronic-circuit", 5},
        {"advanced-circuit", 10}
      },
      result = "5d-electric-furnace",
      energy_required = 5
    },
    --Entity
    {
      type = "furnace",
      name = "5d-electric-furnace",
      icon = "__5dim_resources__/graphics/icon/icon_5d_electric-furnace_3_.png",
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 1, result = "5d-electric-furnace"},
      icon_size = 32,
      max_health = 150,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      light = {intensity = 1, size = 10},
      resistances = {
        {
          type = "fire",
          percent = 80
        }
      },
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      module_specification = {
        module_slots = 4,
        module_info_icon_shift = {0, 0.8}
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"smelting"},
      result_inventory_size = 1,
      crafting_speed = 3,
      energy_usage = "270kW",
      source_inventory_size = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.005
      },
      working_sound = {
        sound = {
          filename = "__base__/sound/electric-furnace.ogg",
          volume = 0.7
        },
        apparent_volume = 1.5
      },
      animation = {
        layers = {
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            shift = {0.421875, 0},
            hr_version = {
              filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace.png",
              priority = "high",
              width = 239,
              height = 219,
              frame_count = 1,
              shift = util.by_pixel(0.75, 5.75),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
            priority = "high",
            width = 129,
            height = 100,
            frame_count = 1,
            shift = {0.421875, 0},
            draw_as_shadow = true,
            hr_version = {
              filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
              priority = "high",
              width = 227,
              height = 171,
              frame_count = 1,
              draw_as_shadow = true,
              shift = util.by_pixel(11.25, 7.75),
              scale = 0.5
            }
          }
        }
      },
      working_visualisations = {
        {
          animation = {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
            priority = "high",
            width = 25,
            height = 15,
            frame_count = 12,
            animation_speed = 0.5,
            shift = {0.015625, 0.890625},
            hr_version = {
              filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
              priority = "high",
              width = 60,
              height = 56,
              frame_count = 12,
              animation_speed = 0.5,
              shift = util.by_pixel(1.75, 32.75),
              scale = 0.5
            }
          },
          light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
        },
        {
          animation = {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
            priority = "high",
            width = 19,
            height = 13,
            frame_count = 4,
            animation_speed = 0.5,
            shift = {-0.671875, -0.640625},
            hr_version = {
              filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
              priority = "high",
              width = 37,
              height = 25,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(-20.5, -18.5),
              scale = 0.5
            }
          }
        },
        {
          animation = {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
            priority = "high",
            width = 12,
            height = 9,
            frame_count = 4,
            animation_speed = 0.5,
            shift = {0.0625, -1.234375},
            hr_version = {
              filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
              priority = "high",
              width = 23,
              height = 15,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(3.5, -38),
              scale = 0.5
            }
          }
        }
      },
      fast_replaceable_group = "electric-furnace"
    }
  }
)
