require("prototypes.atack-parameters")
require("prototypes.scalecolor")
require("prototypes.damage")
require("__base__.prototypes.entity.demo-spitter-animations")
require("__base__.prototypes.entity.demo-biter-animations")

local hit_effects = require("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")

data:extend(
    {
        {
            type = "unit-spawner",
            name = "exp-biter-spawner",
            icon = "__base__/graphics/icons/biter-spawner.png",
            flags = {"placeable-player", "placeable-enemy", "not-repairable"},
            icon_size = 64,
            max_health = 750,
            order = "b-b-g",
            subgroup = "enemies",
            resistances = {
                {
                    type = "physical",
                    decrease = 2
                },
                {
                    type = "laser",
                    percent = 20
                },
                {
                    type = "explosion",
                    decrease = 5,
                    percent = 15
                }
            },
            working_sound = {
                sound = {
                    {
                        filename = "__base__/sound/creatures/spawner.ogg",
                        volume = 1.0
                    }
                },
                apparent_volume = 2
            },
            dying_sound = {
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
            map_generator_bounding_box = {{-4.2, -3.2}, {3.2, 3.2}},
            selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
            damaged_trigger_effect = hit_effects.biter(),
            -- in ticks per 1 pu
            pollution_absorption_absolute = 20,
            pollution_absorption_proportional = 0.01,
            corpse = "biter-spawner-corpse",
            dying_explosion = "blood-explosion-huge",
            max_count_of_owned_units = 1,
            max_friends_around_to_spawn = 5,
            animations = {
                spawner_idle_animation(0, expBiterTint),
                spawner_idle_animation(1, expBiterTint),
                spawner_idle_animation(2, expBiterTint),
                spawner_idle_animation(3, expBiterTint)
            },
            integration = spawner_integration(),
            result_units = (function()
                local res = {}
                res[1] = {"small-biter", {{0.0, 0.3}, {0.7, 0.0}}}
                res[2] = {"5d-exp-biter", {{0.9, 0.0}, {1.0, 0.3}}}
                res[3] = {"5d-exp-biter-physical", {{0.92, 0.0}, {1.0, 0.3}}}
                res[4] = {"5d-exp-biter-laser", {{0.93, 0.0}, {1.0, 0.3}}}
                res[5] = {"5d-exp-spiter", {{0.97, 0.0}, {1.0, 0.3}}}
                res[6] = {"5d-exp-spiter-fire", {{0.97, 0.0}, {1.0, 0.3}}}
                res[7] = {"5d-exp-spiter-rocket", {{0.97, 0.0}, {1.0, 0.3}}}
                res[8] = {"5d-exp-biter-explosive", {{0.99, 0.0}, {1.0, 0.3}}}
                res[9] = {"5d-exp-biter-climber", {{0.99, 0.0}, {1.0, 0.3}}}
                res[10] = {"5d-exp-biter-swimmer", {{0.99, 0.0}, {1.0, 0.3}}}
                return res
            end)(),
            -- With zero evolution the spawn rate is 6 seconds, with max evolution it is 1.5 seconds
            spawning_cooldown = {360, 90},
            spawning_radius = 10,
            spawning_spacing = 3,
            max_spawn_shift = 0,
            max_richness_for_spawn_shift = 100,
            autoplace = enemy_autoplace.enemy_spawner_autoplace(0),
            call_for_help_radius = 50,
            spawn_decorations_on_expansion = true,
            spawn_decoration = {
                {
                    decorative = "light-mud-decal",
                    spawn_min = 0,
                    spawn_max = 2,
                    spawn_min_radius = 2,
                    spawn_max_radius = 5
                },
                {
                    decorative = "dark-mud-decal",
                    spawn_min = 0,
                    spawn_max = 3,
                    spawn_min_radius = 2,
                    spawn_max_radius = 6
                },
                {
                    decorative = "enemy-decal",
                    spawn_min = 3,
                    spawn_max = 5,
                    spawn_min_radius = 2,
                    spawn_max_radius = 7
                },
                {
                    decorative = "enemy-decal-transparent",
                    spawn_min = 4,
                    spawn_max = 20,
                    spawn_min_radius = 2,
                    spawn_max_radius = 14,
                    radius_curve = 0.9
                },
                {
                    decorative = "muddy-stump",
                    spawn_min = 2,
                    spawn_max = 5,
                    spawn_min_radius = 3,
                    spawn_max_radius = 6
                },
                {
                    decorative = "red-croton",
                    spawn_min = 2,
                    spawn_max = 8,
                    spawn_min_radius = 3,
                    spawn_max_radius = 6
                },
                {
                    decorative = "red-pita",
                    spawn_min = 1,
                    spawn_max = 5,
                    spawn_min_radius = 3,
                    spawn_max_radius = 6
                },
                {
                    decorative = "lichen-decal",
                    spawn_min = 1,
                    spawn_max = 2,
                    spawn_min_radius = 2,
                    spawn_max_radius = 7
                }
            }
        },
        --Biter
        {
            type = "unit",
            name = "5d-exp-biter",
            order = "b-b-d",
            icon = "__base__/graphics/icons/behemoth-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
            icon_size = 64,
            max_health = healthexpbitter,
            subgroup = "enemies",
            spawning_time_modifier = 8,
            healing_per_tick = 0.1,
            collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
            selection_box = {{-4.9, -10.5}, {4.9, 2.1}},
            sticker_box = {{-0.6, -0.8}, {0.6, 0}},
            distraction_cooldown = 300,
            attack_parameters = {
                type = "projectile",
                range = 7,
                cooldown = 10,
                ammo_category = "melee",
                ammo_type = make_unit_melee_ammo_type(biterexpdmg),
                sound = sounds.biter_roars_big(0.8),
                animation = biterattackanimation(expbitterscale, biterTint, secondColor)
            },
            vision_distance = 30,
            movement_speed = 0.1,
            distance_per_frame = 0.2,
            -- in pu
            pollution_to_join_attack = 20000,
            corpse = "5d-exp-biter-corpse",
            dying_explosion = "blood-explosion-big",
            working_sound = sounds.biter_calls_big(1.0),
            dying_sound = sounds.biter_dying_big(0.7),
            running_sound_animation_positions = {2},
            walking_sound = sounds.biter_walk_big(0.8),
            run_animation = biterrunanimation(expbitterscale, biterTint, secondColor)
        },
        {
            type = "corpse",
            name = "5d-exp-biter-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 64,
            selectable_in_game = false,
            selection_box = {{-1, -1}, {1, 1}},
            subgroup = "corpses",
            order = "c[corpse]-a[biter]-c[big]",
            flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
            dying_speed = 0.02,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = biterdieanimation(expbitterscale, biterTint, secondColor)
        },
        --Spiter
        {
            type = "unit",
            name = "5d-exp-spiter",
            icon = "__base__/graphics/icons/behemoth-spitter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
            icon_size = 64,
            max_health = healthexpspitter,
            order = "b-b-f",
            subgroup = "enemies",
            spawning_time_modifier = 8,
            healing_per_tick = 0.1,
            collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
            selection_box = {{-4.9, -7.0}, {4.9, 7.0}},
            distraction_cooldown = 300,
            damaged_trigger_effect = hit_effects.biter(),
            min_pursue_time = 10 * 60,
            max_pursue_distance = 50,
            attack_parameters = spitter_attack_parameters(
                {
                    acid_stream_name = "acid-stream-spitter-small",
                    range = 25,
                    min_attack_distance = 10,
                    cooldown = 100,
                    damage_modifier = spiterexpdmg,
                    scale = expspitterscale,
                    tint1 = spitterTint,
                    tint2 = secondColor,
                    roarvolume = 0.4
                }
            ),
            vision_distance = 30,
            movement_speed = 0.1,
            distance_per_frame = 0.084,
            pollution_to_join_attack = 10000,
            corpse = "5d-exp-spitter-corpse",
            dying_explosion = "blood-explosion-big",
            working_sound = sounds.spitter_calls(0.7),
            dying_sound = sounds.spitter_dying(0.4),
            running_sound_animation_positions = {2},
            walking_sound = sounds.spitter_walk(0.3),
            run_animation = spitterrunanimation(expspitterscale, spitterTint, secondColor),
            ai_settings = biter_ai_settings,
            water_reflection = spitter_water_reflection(expspitterscale)
        },
        {
            type = "corpse",
            name = "5d-exp-spitter-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 64,
            selectable_in_game = false,
            collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
            selection_box = {{-0.7, -1}, {0.7, 1}},
            subgroup = "corpses",
            order = "c[corpse]-b[spitter]-d[behemoth]",
            flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = spitterdyinganimation(expspitterscale, expspittertint)
        },
        --Explosive
        {
            type = "unit",
            name = "5d-exp-biter-explosive",
            icon = "__base__/graphics/icons/behemoth-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
            icon_size = 64,
            max_health = healthexpbitter,
            order = "b-b-a",
            subgroup = "enemies",
            resistances = {
                {
                    type = "physical",
                    decrease = 8
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
            sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
            distraction_cooldown = 300,
            damaged_trigger_effect = hit_effects.biter(),
            min_pursue_time = 10 * 60,
            max_pursue_distance = 50,
            attack_parameters = explosiveexp(
                {
                    type = "projectile",
                    range = 1,
                    cooldown = 1,
                    damage_modifier = explosiveexpdmg,
                    scale = expbitterscale,
                    tint = explosiveBiterTint,
                    roarvolume = 0.7
                }
            ),
            vision_distance = 30,
            movement_speed = 0.1,
            distance_per_frame = 0.2,
            -- in pu
            pollution_to_join_attack = 4000,
            corpse = "5d-exp-biter-explosive-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.spitter_calls(0.7),
            dying_sound = sounds.spitter_dying(0.4),
            running_sound_animation_positions = {2},
            walking_sound = sounds.spitter_walk(0.3),
            run_animation = spitterrunanimation(expbitterscale, explosiveBiterTint, secondColor),
            ai_settings = biter_ai_settings,
            water_reflection = spitter_water_reflection(expbitterscale)
        },
        {
            type = "corpse",
            name = "5d-exp-biter-explosive-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 64,
            selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
            selectable_in_game = false,
            subgroup = "corpses",
            order = "c[corpse]-a[bichoA]-a[behemoth]",
            flags = {
                "placeable-neutral",
                "placeable-off-grid",
                "building-direction-8-way",
                "not-repairable",
                "not-on-map"
            },
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = biterdieanimation(expbitterscale, explosiveBiterTint, secondColor)
        },
        -- Flamer
        {
            type = "unit",
            name = "5d-exp-spiter-fire",
            icon = "__base__/graphics/icons/behemoth-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
            icon_size = 64,
            max_health = healthexpspitter,
            order = "b-b-a",
            subgroup = "enemies",
            resistances = {
                {
                    type = "physical",
                    decrease = 8
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
            attack_parameters = flamerexp(
                {
                    type = "projectile",
                    range = 15,
                    cooldown = 1,
                    damage_modifier = fireexpdmg,
                    scale = expspitterscale,
                    tint = fireSpitterTint,
                    tint2 = secondColor,
                    roarvolume = 0.7
                }
            ),
            vision_distance = 30,
            movement_speed = 0.1,
            distance_per_frame = 0.2,
            -- in pu
            pollution_to_join_attack = 4000,
            corpse = "5d-exp-spiter-fire-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.spitter_calls_big(0.8),
            dying_sound = sounds.spitter_dying_big(0.8),
            running_sound_animation_positions = {2},
            walking_sound = sounds.spitter_walk_big(0.6),
            run_animation = spitterrunanimation(expspitterscale, fireSpitterTint, secondColor)
        },
        {
            type = "corpse",
            name = "5d-exp-spiter-fire-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 64,
            selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
            selectable_in_game = false,
            subgroup = "corpses",
            order = "c[corpse]-a[bichoA]-a[behemoth]",
            flags = {
                "placeable-neutral",
                "placeable-off-grid",
                "building-direction-8-way",
                "not-repairable",
                "not-on-map"
            },
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = spitterdyinganimation(expspitterscale, fireSpitterTint, secondColor)
        },
        --Rocket
        {
            type = "unit",
            name = "5d-exp-spiter-rocket",
            icon = "__base__/graphics/icons/behemoth-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
            icon_size = 64,
            max_health = healthexpspitter,
            order = "b-b-a",
            subgroup = "enemies",
            resistances = {
                {
                    type = "physical",
                    decrease = 8
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
            attack_parameters = explosiveexp(
                {
                    type = "projectile",
                    range = 15,
                    cooldown = 1,
                    damage_modifier = explosiveexpdmg,
                    scale = expbitterscale,
                    tint = rocketSpitterTint,
                    tint2 = secondColor,
                    roarvolume = 0.7
                }
            ),
            vision_distance = 30,
            movement_speed = 0.1,
            distance_per_frame = 0.2,
            -- in pu
            pollution_to_join_attack = 4000,
            corpse = "5d-exp-spiter-rocket-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.spitter_calls_big(0.8),
            dying_sound = sounds.spitter_dying_big(0.8),
            running_sound_animation_positions = {2},
            walking_sound = sounds.spitter_walk_big(0.6),
            run_animation = spitterrunanimation(expspitterscale, rocketSpitterTint, secondColor)
        },
        {
            type = "corpse",
            name = "5d-exp-spiter-rocket-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 64,
            selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
            selectable_in_game = false,
            subgroup = "corpses",
            order = "c[corpse]-a[bichoA]-a[behemoth]",
            flags = {
                "placeable-neutral",
                "placeable-off-grid",
                "building-direction-8-way",
                "not-repairable",
                "not-on-map"
            },
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = spitterdyinganimation(expspitterscale, rocketSpitterTint, secondColor)
        },
        --Laser
        {
            type = "unit",
            name = "5d-exp-biter-laser",
            icon = "__base__/graphics/icons/behemoth-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
            icon_size = 64,
            max_health = healthexpbitter,
            order = "b-b-a",
            subgroup = "enemies",
            resistances = {
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
            attack_parameters = {
                type = "projectile",
                range = 7,
                cooldown = 10,
                ammo_category = "melee",
                ammo_type = make_unit_melee_ammo_type(spiterexpdmg),
                sound = sounds.biter_roars_big(0.8),
                animation = biterattackanimation(expbitterscale, laserBiterTint, secondColor)
            },
            vision_distance = 30,
            movement_speed = 0.1,
            distance_per_frame = 0.2,
            -- in pu
            pollution_to_join_attack = 4000,
            corpse = "5d-exp-biter-laser-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.biter_calls_big(1.0),
            dying_sound = sounds.biter_dying_big(0.7),
            running_sound_animation_positions = {2},
            walking_sound = sounds.biter_walk_big(0.8),
            run_animation = biterrunanimation(expbitterscale, laserBiterTint, secondColor)
        },
        {
            type = "corpse",
            name = "5d-exp-biter-laser-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 64,
            selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
            selectable_in_game = false,
            subgroup = "corpses",
            order = "c[corpse]-a[bichoA]-a[behemoth]",
            flags = {
                "placeable-neutral",
                "placeable-off-grid",
                "building-direction-8-way",
                "not-repairable",
                "not-on-map"
            },
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = biterdieanimation(expbitterscale, laserBiterTint, secondColor)
        },
        --Physical
        {
            type = "unit",
            name = "5d-exp-biter-physical",
            icon = "__base__/graphics/icons/behemoth-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
            icon_size = 64,
            max_health = healthexpbitter,
            order = "b-b-a",
            subgroup = "enemies",
            resistances = {
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
            attack_parameters = {
                type = "projectile",
                range = 7,
                cooldown = 10,
                ammo_category = "melee",
                ammo_type = make_unit_melee_ammo_type(spiterexpdmg),
                sound = sounds.biter_roars_big(0.8),
                animation = biterattackanimation(expbitterscale, physicalBiterTint, secondColor)
            },
            vision_distance = 30,
            movement_speed = 0.1,
            distance_per_frame = 0.2,
            -- in pu
            pollution_to_join_attack = 4000,
            corpse = "5d-exp-biter-physical-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.biter_calls_big(1.0),
            dying_sound = sounds.biter_dying_big(0.7),
            running_sound_animation_positions = {2},
            walking_sound = sounds.biter_walk_big(0.8),
            run_animation = biterrunanimation(expbitterscale, physicalBiterTint, secondColor)
        },
        {
            type = "corpse",
            name = "5d-exp-biter-physical-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 64,
            selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
            selectable_in_game = false,
            subgroup = "corpses",
            order = "c[corpse]-a[bichoA]-a[behemoth]",
            flags = {
                "placeable-neutral",
                "placeable-off-grid",
                "building-direction-8-way",
                "not-repairable",
                "not-on-map"
            },
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = biterdieanimation(expbitterscale, physicalBiterTint, secondColor)
        },
        --Swimmer
        {
            type = "unit",
            name = "5d-exp-biter-swimmer",
            icon = "__base__/graphics/icons/behemoth-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
            icon_size = 64,
            max_health = healthexpbitter,
            order = "b-b-a",
            subgroup = "enemies",
            resistances = {
                {
                    type = "physical",
                    percent = 90
                }
            },
            spawning_time_modifier = 2,
            healing_per_tick = 0.02,
            collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
            collision_mask = {"object-layer"},
            selection_box = {{-4.9, -10.5}, {4.9, 2.1}},
            sticker_box = {{-0.6, -0.8}, {0.6, 0}},
            distraction_cooldown = 300,
            attack_parameters = {
                type = "projectile",
                range = 7,
                cooldown = 10,
                ammo_category = "melee",
                ammo_type = make_unit_melee_ammo_type(biterexpdmg),
                sound = sounds.biter_roars_big(0.8),
                animation = biterattackanimation(expbitterscale, swimmerBiterTint, secondColor)
            },
            vision_distance = 30,
            movement_speed = 0.1,
            distance_per_frame = 0.2,
            -- in pu
            pollution_to_join_attack = 4000,
            corpse = "5d-exp-biter-swimmer-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.biter_calls_big(1.0),
            dying_sound = sounds.biter_dying_big(0.7),
            running_sound_animation_positions = {2},
            walking_sound = sounds.biter_walk_big(0.8),
            run_animation = biterrunanimation(expbitterscale, swimmerBiterTint, secondColor)
        },
        {
            type = "corpse",
            name = "5d-exp-biter-swimmer-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 64,
            selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
            selectable_in_game = false,
            subgroup = "corpses",
            order = "c[corpse]-a[bichoA]-a[behemoth]",
            flags = {
                "placeable-neutral",
                "placeable-off-grid",
                "building-direction-8-way",
                "not-repairable",
                "not-on-map"
            },
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = biterdieanimation(expbitterscale, swimmerBiterTint, secondColor)
        },
        --Swimmer
        {
            type = "unit",
            name = "5d-exp-biter-climber",
            icon = "__base__/graphics/icons/behemoth-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
            icon_size = 64,
            max_health = healthexpbitter,
            order = "b-b-a",
            subgroup = "enemies",
            resistances = {
                {
                    type = "physical",
                    percent = 90
                }
            },
            spawning_time_modifier = 2,
            healing_per_tick = 0.02,
            collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
            collision_mask = {},
            selection_box = {{-4.9, -10.5}, {4.9, 2.1}},
            sticker_box = {{-0.6, -0.8}, {0.6, 0}},
            distraction_cooldown = 300,
            attack_parameters = {
                type = "projectile",
                range = 7,
                cooldown = 10,
                ammo_category = "melee",
                ammo_type = make_unit_melee_ammo_type(biterexpdmg),
                sound = sounds.biter_roars_big(0.8),
                animation = biterattackanimation(expbitterscale, climberBiterTint, secondColor)
            },
            vision_distance = 30,
            movement_speed = 0.1,
            distance_per_frame = 0.2,
            -- in pu
            pollution_to_join_attack = 4000,
            corpse = "5d-exp-biter-climber-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.biter_calls_big(1.0),
            dying_sound = sounds.biter_dying_big(0.7),
            running_sound_animation_positions = {2},
            walking_sound = sounds.biter_walk_big(0.8),
            run_animation = biterrunanimation(expbitterscale, climberBiterTint, secondColor)
        },
        {
            type = "corpse",
            name = "5d-exp-biter-climber-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 64,
            selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
            selectable_in_game = false,
            subgroup = "corpses",
            order = "c[corpse]-a[bichoA]-a[behemoth]",
            flags = {
                "placeable-neutral",
                "placeable-off-grid",
                "building-direction-8-way",
                "not-repairable",
                "not-on-map"
            },
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = biterdieanimation(expbitterscale, climberBiterTint, secondColor)
        }
    }
)
