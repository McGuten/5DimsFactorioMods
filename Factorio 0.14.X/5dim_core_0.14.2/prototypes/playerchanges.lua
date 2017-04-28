data:extend({
  {
    type = "player",
    name = "player",
    icon = "__base__/graphics/icons/player.png",
    flags = {"pushable", "placeable-off-grid", "breaths-air", "not-repairable", "not-on-map"},
    max_health = 100,
    alert_when_damaged = false,
    healing_per_tick = 0.01,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -1.4}, {0.4, 0.2}},
    crafting_categories = {"crafting"},
    mining_categories = {"basic-solid"},
    inventory_size = 100,
    build_distance = 6,
    drop_item_distance = 6,
    reach_distance = 6,
    item_pickup_distance = 1,
    loot_pickup_distance = 2,
    reach_resource_distance = 2.7,
    ticks_to_keep_gun = 600,
    ticks_to_keep_aiming_direction = 100,
    damage_hit_tint = {r = 1, g = 0, b = 0, a = 0},
    running_speed = 0.15,
    distance_per_frame = 0.13,
    maximum_corner_sliding_distance = 0.7,
    subgroup = "creatures",
    order="a",
    eat =
    {
      {
        filename = "__base__/sound/eat.ogg",
        volume = 1
      }
    },
    heartbeat =
    {
      {
        filename = "__base__/sound/heartbeat.ogg"
      }
    },

    animations =
    {
      {
        idle =
        {
          layers =
          {
            playeranimations.level1.idle,
            playeranimations.level1.idlemask,
          }
        },
        idle_with_gun =
        {
          layers =
          {
            playeranimations.level1.idlewithgun,
            playeranimations.level1.idlewithgunmask,
          }
        },
        mining_with_hands =
        {
          layers =
          {
            playeranimations.level1.miningwithhands,
            playeranimations.level1.miningwithhandsmask,
          }
        },
        mining_with_tool =
        {
          layers =
          {
            playeranimations.level1.miningwithtool,
            playeranimations.level1.miningwithtoolmask,
          }
        },
        running_with_gun =
        {
          layers =
          {
            playeranimations.level1.runningwithgun,
            playeranimations.level1.runningwithgunmask,
          }
        },
        running =
        {
          layers =
          {
            playeranimations.level1.running,
            playeranimations.level1.runningmask,
          }
        }
      },
      {
        -- heavy-armor is not in the demo
        armors = data.is_demo and {"light-armor"} or {"light-armor", "heavy-armor"},
        idle =
        {
          layers =
          {
            playeranimations.level1.idle,
            playeranimations.level1.idlemask,
            playeranimations.level2addon.idle,
            playeranimations.level2addon.idlemask
          }
        },
        idle_with_gun =
        {
          layers =
          {
            playeranimations.level1.idlewithgun,
            playeranimations.level1.idlewithgunmask,
            playeranimations.level2addon.idlewithgun,
            playeranimations.level2addon.idlewithgunmask,
          }
        },
        mining_with_hands =
        {
          layers =
          {
            playeranimations.level1.miningwithhands,
            playeranimations.level1.miningwithhandsmask,
            playeranimations.level2addon.miningwithhands,
            playeranimations.level2addon.miningwithhandsmask,
          }
        },
        mining_with_tool =
        {
          layers =
          {
            playeranimations.level1.miningwithtool,
            playeranimations.level1.miningwithtoolmask,
            playeranimations.level2addon.miningwithtool,
            playeranimations.level2addon.miningwithtoolmask,
          }
        },
        running_with_gun =
        {
          layers =
          {
            playeranimations.level1.runningwithgun,
            playeranimations.level1.runningwithgunmask,
            playeranimations.level2addon.runningwithgun,
            playeranimations.level2addon.runningwithgunmask,
          }
        },
        running =
        {
          layers =
          {
            playeranimations.level1.running,
            playeranimations.level1.runningmask,
            playeranimations.level2addon.running,
            playeranimations.level2addon.runningmask,
          }
        }
      },
      {
        -- modular armors are not in the demo
        armors = data.is_demo and {} or {"modular-armor", "power-armor", "power-armor-mk2"},
        idle =
        {
          layers =
          {
            playeranimations.level1.idle,
            playeranimations.level1.idlemask,
            playeranimations.level3addon.idle,
            playeranimations.level3addon.idlemask
          }
        },
        idle_with_gun =
        {
          layers =
          {
            playeranimations.level1.idlewithgun,
            playeranimations.level1.idlewithgunmask,
            playeranimations.level3addon.idlewithgun,
            playeranimations.level3addon.idlewithgunmask,
          }
        },
        mining_with_hands =
        {
          layers =
          {
            playeranimations.level1.miningwithhands,
            playeranimations.level1.miningwithhandsmask,
            playeranimations.level3addon.miningwithhands,
            playeranimations.level3addon.miningwithhandsmask,
          }
        },
        mining_with_tool =
        {
          layers =
          {
            playeranimations.level1.miningwithtool,
            playeranimations.level1.miningwithtoolmask,
            playeranimations.level3addon.miningwithtool,
            playeranimations.level3addon.miningwithtoolmask,
          }
        },
        running_with_gun =
        {
          layers =
          {
            playeranimations.level1.runningwithgun,
            playeranimations.level1.runningwithgunmask,
            playeranimations.level3addon.runningwithgun,
            playeranimations.level3addon.runningwithgunmask,
          }
        },
        running =
        {
          layers =
          {
            playeranimations.level1.running,
            playeranimations.level1.runningmask,
            playeranimations.level3addon.running,
            playeranimations.level3addon.runningmask,
          }
        }
      }
    },
    light =
    {
      {
        minimum_darkness = 0.3,
        intensity = 0.9,
        size = 40,
      },
    },
    mining_speed = 0.01,
    mining_with_hands_particles_animation_positions = {29, 63},
    mining_with_tool_particles_animation_positions = {28},
    running_sound_animation_positions = {5, 16}
  },
})