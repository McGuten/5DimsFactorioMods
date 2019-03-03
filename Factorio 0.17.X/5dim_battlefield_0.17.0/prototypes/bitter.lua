require("prototypes.atack-parameters")
require("prototypes.scalecolor")
require("prototypes.damage")

data:extend(
{
  {
    type = "unit-spawner",
    name = "biter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    icon_size = 32,
    max_health = 500,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
      },
      {
        type = "laser",
        percent = 20,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 15,
      }
    },
    working_sound = {
      sound =
      {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0
        }
      },
      apparent_volume = 2
    },
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0
      }
    },
    healing_per_tick = 0.02,
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
    -- in ticks per 1 pu
    pollution_absorbtion_absolute = 20,
    pollution_absorbtion_proportional = 0.01,
    corpse = "biter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    max_count_of_owned_units = 7,
    max_friends_around_to_spawn = 5,
    animations =
    {
      spawner_idle_animation(0, small_biter_tint1),
      spawner_idle_animation(1, small_biter_tint1),
      spawner_idle_animation(2, small_biter_tint1),
      spawner_idle_animation(3, small_biter_tint1)
    },
    result_units = (function()
                     local res = {}
                     res[1] = {"small-biter", {{0.0, 0.3}, {0.7, 0.0}}}
                     res[2] = {"medium-biter", {{0.2, 0.0}, {0.6, 0.3}, {0.8, 0.1}}}
                     res[3] = {"big-biter", {{0.4, 0.0}, {1.0, 0.4}}}
                     res[4] = {"behemoth-biter", {{0.6, 0.0}, {1.0, 0.3}}}
                     return res
                   end)(),
    -- With zero evolution the spawn rate is 6 seconds, with max evolution it is 1.5 seconds
    spawning_cooldown = {360, 90},
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace = enemy_autoplace.enemy_spawner_autoplace(0),
    call_for_help_radius = 50
  },
--Small
  {
    type = "unit",
    name = "small-biter",
    icon = "__base__/graphics/icons/small-biter.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    icon_size = 32,
    max_health = healthsmallbitter,
    order = "b-b-a",
    subgroup="enemies",
    healing_per_tick = 0.01,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.7}, {0.7, 0.4}},
    attack_parameters =
    {
      type = "projectile",
      range = 0.5,
      cooldown = 35,
      ammo_type = make_unit_melee_ammo_type(bitersmalldmg),
      sound = make_biter_roars(0.4),
      animation = biterattackanimation(smallbitterscale, small_biter_tint1, small_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.2,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 200,
    distraction_cooldown = 300,
    corpse = "small-biter-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation(smallbitterscale, small_biter_tint1, small_biter_tint2)
  },

  {
    type = "corpse",
    name = "small-biter-corpse",
    icon = "__base__/graphics/icons/small-biter-corpse.png",
    icon_size = 32,
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[biter]-a[small]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = biterdieanimation(smallbitterscale, small_biter_tint1, small_biter_tint2)
  },
--Medium
  {
    type = "unit",
    name = "medium-biter",
    icon = "__base__/graphics/icons/medium-biter.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    icon_size = 32,
    max_health = healthmediumbitter,
    order="b-b-b",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 4,
      },
      {
        type = "explosion",
        percent = 10
      }
    },
    healing_per_tick = 0.01,
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(bitermediumdmg),
      range = 1,
      cooldown = 35,
      sound = make_biter_roars(0.7),
      animation = biterattackanimation(mediumbitterscale, medium_biter_tint1, medium_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.185,
    distance_per_frame = 0.15,
    -- in pu
    pollution_to_join_attack = 1000,
    corpse = "medium-biter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(0.8),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(mediumbitterscale, medium_biter_tint1, medium_biter_tint2)
  },
  {
    type = "corpse",
    name = "medium-biter-corpse",
    icon = "__base__/graphics/icons/medium-biter-corpse.png",
    icon_size = 32,
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-b[medium]",
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = biterdieanimation(mediumbitterscale, medium_biter_tint1, medium_biter_tint2)
  },
--Big
  {
    type = "unit",
    name = "big-biter",
    order="b-b-c",
    icon = "__base__/graphics/icons/big-biter.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    icon_size = 32,
    max_health = healthbigbitter,
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
      },
      {
        type = "explosion",
        percent = 10
      }
    },
    spawning_time_modifier = 2,
    healing_per_tick = 0.02,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    attack_parameters =
    {
      type = "projectile",
      range = 1.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(biterbigdmg),
      sound =  make_biter_roars(0.6),
      animation = biterattackanimation(bigbitterscale, big_biter_tint1, big_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.17,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 4000,
    corpse = "big-biter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(0.9),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(bigbitterscale, big_biter_tint1, big_biter_tint2)
  },
  {
    type = "corpse",
    name = "big-biter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 32,
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-c[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = biterdieanimation(bigbitterscale, big_biter_tint1, big_biter_tint2)
  },
--Behemoth
  {
    type = "unit",
    name = "behemoth-biter",
    order="b-b-d",
    icon = "__base__/graphics/icons/behemoth-biter.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    icon_size = 32,
    max_health = healthbehemothbitter,
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 20
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 20
      }
    },
    spawning_time_modifier = 8,
    healing_per_tick = 0.1,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    attack_parameters =
    {
      type = "projectile",
      range = 1.5,
      cooldown = 50,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(biterbehemothdmg),
      sound =  make_biter_roars(0.8),
      animation = biterattackanimation(behemothbitterscale, behemoth_biter_tint1, behemoth_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.17,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 20000,
    corpse = "behemoth-biter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(behemothbitterscale, behemoth_biter_tint1, behemoth_biter_tint2)
  },
  {
    type = "corpse",
    name = "behemoth-biter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 32,
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-c[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
    dying_speed = 0.02,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = biterdieanimation(behemothbitterscale, behemoth_biter_tint1, behemoth_biter_tint2)
  },
})
