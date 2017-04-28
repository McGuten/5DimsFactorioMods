require("prototypes.atack-parameters")
require("prototypes.scalecolor")
require("prototypes.damage")

data:extend(
{
  {
    type = "unit-spawner",
    name = "exp-biter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    max_health = 750,
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
    pollution_to_enhance_spawning = 30000,
    corpse = "biter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    loot =
    {
      {
        count_max = 10,
        count_min = 2,
        item = "alien-artifact",
        probability = 1
      }
    },
    max_count_of_owned_units = 1,
    max_friends_around_to_spawn = 5,
    animations =
    {
      spawner_idle_animation(0, exp_biter_tint1),
      spawner_idle_animation(1, exp_biter_tint1),
      spawner_idle_animation(2, exp_biter_tint1),
      spawner_idle_animation(3, exp_biter_tint1)
    },
    result_units = (function()
                     local res = {}
                     res[1] = {"small-biter", {{0.0, 0.3}, {0.7, 0.0}}}
                     res[2] = {"5d-exp-biter", {{0.9, 0.0}, {1.0, 0.3}}}
                     res[3] = {"5d-exp-biter-physical", {{0.92, 0.0}, {1.0, 0.3}}}
                     res[4] = {"5d-exp-biter-laser", {{0.93, 0.0}, {1.0, 0.3}}}
                     res[5] = {"5d-exp-spiter", {{0.97, 0.0}, {1.0, 0.3}}}
                     res[6] = {"5d-exp-spiter-fire", {{0.98, 0.0}, {1.0, 0.3}}}
                     res[7] = {"5d-exp-biter-explosive", {{0.99, 0.0}, {1.0, 0.3}}}
                     res[8] = {"5d-exp-spiter-rocket", {{0.99, 0.0}, {1.0, 0.3}}}
                     return res
                   end)(),
    -- With zero evolution the spawn rate is 6 seconds, with max evolution it is 1.5 seconds
    spawning_cooldown = {360, 90},
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace = enemy_spawner_autoplace(0),
    call_for_help_radius = 50
  },
--Biter
  {
    type = "unit",
    name = "5d-exp-biter",
    order="b-b-d",
    icon = "__base__/graphics/icons/behemoth-biter.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = healthexpbitter,
    subgroup="enemies",
    spawning_time_modifier = 8,
    healing_per_tick = 0.1,
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-4.9, -10.5}, {4.9, 2.1}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    loot =
    {
      {
        count_max = 15,
        count_min = 5,
        item = "alien-artifact",
        probability = 1
      }
    },
    attack_parameters =
    {
      type = "projectile",
      range = 7,
      cooldown = 10,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(biterexpdmg),
      sound =  make_biter_roars(0.8),
      animation = biterattackanimation(expbitterscale, exp_biter_tint1, exp_biter_tint1)
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 20000,
    corpse = "5d-exp-biter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_biter_dying_sounds(1.0),
    run_animation = biterrunanimation(expbitterscale, exp_biter_tint1, exp_biter_tint1)
  },
  {
    type = "corpse",
    name = "5d-exp-biter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-c[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
    dying_speed = 0.02,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = biterdieanimation(expbitterscale, exp_biter_tint1, exp_biter_tint1)
  },
--Spiter
  {
    type = "unit",
    name = "5d-exp-spiter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = healthexpspitter,
    order="b-b-f",
    subgroup="enemies",
    spawning_time_modifier = 8,
    healing_per_tick = 0.1,
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-4.9, -7.0}, {4.9, 7.0}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    loot =
    {
      {
        count_max = 15,
        count_min = 5,
        item = "alien-artifact",
        probability = 1
      }
    },
    attack_parameters = expatack({
      range=20,
      cooldown=0.01,
      damage_modifier=0.05,
      scale=expspitterscale,
      tint=expspittertint
      }),
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.084,
    pollution_to_join_attack = 10000,
    corpse = "5d-exp-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(expspitterscale, expspittertint)
  },
  {
    type = "corpse",
    name = "5d-exp-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-d[behemoth]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(expspitterscale, expspittertint),
  },
--Explosive
  {
    type = "unit",
    name = "5d-exp-biter-explosive",
    icon = "__base__/graphics/icons/behemoth-biter.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = healthexpbitter,
    order = "b-b-a",
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
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-4.9, -10.5}, {4.9, 2.1}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    loot =
    {
      {
        count_max = 15,
        count_min = 5,
        item = "alien-artifact",
        probability = 1
      }
    },
    attack_parameters = explosiveexp(
  {
    type = "projectile",
    range=1,
        cooldown=1,
        damage_modifier=explosiveexpdmg,
        scale=expbitterscale,
        tint=explosive_biter_tint1,
        roarvolume=0.7
  }),
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 4000,
    corpse = "5d-exp-biter-explosive-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation(expbitterscale, explosive_biter_tint1, explosive_biter_tint2)
  },
  {
    type = "corpse",
    name = "5d-exp-biter-explosive-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[bichoA]-a[behemoth]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = biterdieanimation(expbitterscale, explosive_biter_tint1, explosive_biter_tint2)
  },
--Flamer
  {
    type = "unit",
    name = "5d-exp-spiter-fire",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = healthexpspitter,
    order = "b-b-a",
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
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-4.9, -7.0}, {4.9, 7.0}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    loot =
    {
      {
        count_max = 15,
        count_min = 5,
        item = "alien-artifact",
        probability = 1
      }
    },
    attack_parameters = flamerexp(
  {
    type = "projectile",
        range=15,
        cooldown=1,
        damage_modifier=fireexpdmg,
        scale=expspitterscale,
        tint=firespittertint,
        roarvolume=0.7
  }),
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 4000,
    corpse = "5d-exp-spiter-fire-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_spitter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = spitterrunanimation(expspitterscale, firespittertint)
  },
  {
    type = "corpse",
    name = "5d-exp-spiter-fire-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[bichoA]-a[behemoth]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(expspitterscale, firespittertint)
  },
--Laser
  {
    type = "unit",
    name = "5d-exp-biter-laser",
    icon = "__base__/graphics/icons/behemoth-biter.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = healthexpbitter,
    order = "b-b-a",
    subgroup="enemies",
    resistances =
    {
      {
        type = "laser",
        percent = 90
      }
    },
    spawning_time_modifier = 2,
    healing_per_tick = 0.02,
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-4.9, -10.5}, {4.9, 2.1}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    loot =
    {
      {
        count_max = 15,
        count_min = 5,
        item = "alien-artifact",
        probability = 1
      }
    },
    attack_parameters =
    {
      type = "projectile",
      range = 7,
      cooldown = 10,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(spiterexpdmg),
      sound =  make_biter_roars(0.6),
      animation = biterattackanimation(expbitterscale, laser_biter_tint1, laser_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 4000,
    corpse = "5d-exp-biter-laser-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation(expbitterscale, laser_biter_tint1, laser_biter_tint2)
  },
  {
    type = "corpse",
    name = "5d-exp-biter-laser-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[bichoA]-a[behemoth]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = biterdieanimation(expbitterscale, laser_biter_tint1, laser_biter_tint2)
  },
--Physical
  {
    type = "unit",
    name = "5d-exp-biter-physical",
    icon = "__base__/graphics/icons/behemoth-biter.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = healthexpbitter,
    order = "b-b-a",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        percent = 90
      }
    },
    spawning_time_modifier = 2,
    healing_per_tick = 0.02,
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-4.9, -10.5}, {4.9, 2.1}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    loot =
    {
      {
        count_max = 15,
        count_min = 5,
        item = "alien-artifact",
        probability = 1
      }
    },
    attack_parameters =
    {
      type = "projectile",
      range = 7,
      cooldown = 10,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(spiterexpdmg),
      sound =  make_biter_roars(0.6),
      animation = biterattackanimation(expbitterscale, physical_biter_tint1, physical_biter_tint2)
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 4000,
    corpse = "5d-exp-biter-physical-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation(expbitterscale, physical_biter_tint1, physical_biter_tint2)
  },
  {
    type = "corpse",
    name = "5d-exp-biter-physical-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[bichoA]-a[behemoth]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = biterdieanimation(expbitterscale, physical_biter_tint1, physical_biter_tint2)
  },
--Rocket
  {
    type = "unit",
    name = "5d-exp-spiter-rocket",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = healthexpspitter,
    order = "b-b-a",
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
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-4.9, -7.0}, {4.9, 7.0}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    loot =
    {
      {
        count_max = 15,
        count_min = 5,
        item = "alien-artifact",
        probability = 1
      }
    },
    attack_parameters = rocketlauncherexp(
  {
    type = "projectile",
    range=15,
        cooldown=2,
        damage_modifier=rocketexpdmg,
        scale=expspitterscale,
        tint=rocketspittertint,
    roarvolume=0.7
  }),
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 4000,
    corpse = "5d-exp-spiter-rocket-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_spitter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = spitterrunanimation(expspitterscale, rocketspittertint)
  },
  {
    type = "corpse",
    name = "5d-exp-spiter-rocket-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[bichoA]-a[behemoth]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(expspitterscale, rocketspittertint)
  },
})
