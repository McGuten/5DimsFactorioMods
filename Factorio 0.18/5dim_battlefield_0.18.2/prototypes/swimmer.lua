require("prototypes.atack-parameters")
require("prototypes.scalecolor")
require("prototypes.damage")
local sounds = require("__base__.prototypes.entity.demo-sounds")

data:extend(
    {
        {
            type = "unit-spawner",
            name = "swimmer-biter-spawner",
            icon = "__base__/graphics/icons/biter-spawner.png",
            flags = {"placeable-player", "placeable-enemy", "not-repairable"},
            icon_size = 32,
            max_health = 500,
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
            selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
            -- in ticks per 1 pu
            pollution_absorption_absolute = 20,
            pollution_absorption_proportional = 0.01,
            corpse = "biter-spawner-corpse",
            dying_explosion = "blood-explosion-huge",
            max_count_of_owned_units = 7,
            max_friends_around_to_spawn = 5,
            animations = {
                spawner_idle_animation(0, swimmer_biter_tint1),
                spawner_idle_animation(1, swimmer_biter_tint1),
                spawner_idle_animation(2, swimmer_biter_tint1),
                spawner_idle_animation(3, swimmer_biter_tint1)
            },
            result_units = (function()
                local res = {}
                res[1] = {"small-biter", {{0.0, 0.3}, {0.7, 0.0}}}
                res[2] = {"5d-small-biter-swimmer", {{0.15, 0.0}, {0.6, 0.3}, {0.8, 0.1}}}
                res[3] = {"5d-medium-biter-swimmer", {{0.4, 0.0}, {1.0, 0.4}}}
                res[4] = {"5d-big-biter-swimmer", {{0.65, 0.0}, {1.0, 0.3}}}
                res[5] = {"5d-behemoth-biter-swimmer", {{0.8, 0.0}, {1.0, 0.3}}}
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
            name = "5d-small-biter-swimmer",
            icon = "__base__/graphics/icons/small-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
            icon_size = 32,
            max_health = healthsmallbitter,
            order = "b-b-a",
            subgroup = "enemies",
            healing_per_tick = 0.01,
            collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
            collision_mask = {"object-layer"},
            selection_box = {{-0.4, -0.7}, {0.7, 0.4}},
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
            attack_parameters = {
                type = "projectile",
                range = 0.5,
                cooldown = 35,
                ammo_category = "melee",
                ammo_type = make_unit_melee_ammo_type(spitersmalldmg),
                sound = sounds.biter_roars(0.4),
                animation = biterattackanimation(smallbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
            },
            vision_distance = 30,
            movement_speed = 0.2,
            distance_per_frame = 0.1,
            pollution_to_join_attack = 200,
            distraction_cooldown = 300,
            corpse = "5d-small-biter-swimmer-corpse",
            dying_explosion = "blood-explosion-small",
            dying_sound = sounds.biter_dying(0.4),
            working_sound = sounds.biter_calls(0.9),
            running_sound_animation_positions = {2},
            walking_sound = sounds.biter_walk(0.3),
            run_animation = biterrunanimation(smallbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
        },
        {
            type = "corpse",
            name = "5d-small-biter-swimmer-corpse",
            icon = "__base__/graphics/icons/small-biter-corpse.png",
            icon_size = 32,
            selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
            selectable_in_game = false,
            subgroup = "corpses",
            order = "c[corpse]-a[bichoA]-a[small]",
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
            animation = biterdieanimation(smallbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
        },
        --Medium
        {
            type = "unit",
            name = "5d-medium-biter-swimmer",
            icon = "__base__/graphics/icons/medium-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
            icon_size = 32,
            max_health = healthmediumbitter,
            order = "b-b-a",
            subgroup = "enemies",
            healing_per_tick = 0.01,
            collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
            collision_mask = {"object-layer"},
            selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
            sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
            distraction_cooldown = 300,
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
            attack_parameters = {
                type = "projectile",
                range = 1.5,
                cooldown = 35,
                ammo_category = "melee",
                ammo_type = make_unit_melee_ammo_type(spitermediumdmg),
                sound = sounds.biter_roars(0.4),
                animation = biterattackanimation(bigbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
            },
            vision_distance = 30,
            movement_speed = 0.185,
            distance_per_frame = 0.15,
            -- in pu
            pollution_to_join_attack = 1000,
            corpse = "5d-medium-biter-swimmer-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.biter_calls(0.9),
            dying_sound = sounds.biter_dying(0.5),
            running_sound_animation_positions = {2},
            walking_sound = sounds.biter_walk(0.4),
            run_animation = biterrunanimation(mediumbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
        },
        {
            type = "corpse",
            name = "5d-medium-biter-swimmer-corpse",
            icon = "__base__/graphics/icons/medium-biter-corpse.png",
            icon_size = 32,
            selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
            selectable_in_game = false,
            subgroup = "corpses",
            order = "c[corpse]-a[bichoA]-a[medium]",
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
            animation = biterdieanimation(mediumbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
        },
        --Big
        {
            type = "unit",
            name = "5d-big-biter-swimmer",
            icon = "__base__/graphics/icons/big-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
            icon_size = 32,
            max_health = healthbigbitter,
            order = "b-b-a",
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
            spawning_time_modifier = 2,
            healing_per_tick = 0.02,
            collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
            collision_mask = {"object-layer"},
            selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
            sticker_box = {{-0.6, -0.8}, {0.6, 0}},
            distraction_cooldown = 300,
            attack_parameters = {
                type = "projectile",
                range = 1.5,
                cooldown = 35,
                ammo_category = "melee",
                ammo_type = make_unit_melee_ammo_type(spiterbigdmg),
                sound = sounds.biter_roars_big(0.4),
                animation = biterattackanimation(bigbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
            },
            vision_distance = 30,
            movement_speed = 0.17,
            distance_per_frame = 0.2,
            -- in pu
            pollution_to_join_attack = 4000,
            corpse = "5d-big-biter-swimmer-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.biter_calls_big(1.0),
            dying_sound = sounds.biter_dying_big(0.6),
            running_sound_animation_positions = {2},
            walking_sound = sounds.biter_walk_big(0.7),
            run_animation = biterrunanimation(bigbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
        },
        {
            type = "corpse",
            name = "5d-big-biter-swimmer-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 32,
            selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
            selectable_in_game = false,
            subgroup = "corpses",
            order = "c[corpse]-a[bichoA]-a[big]",
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
            animation = biterdieanimation(bigbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
        },
        --Behemoth
        {
            type = "unit",
            name = "5d-behemoth-biter-swimmer",
            icon = "__base__/graphics/icons/behemoth-biter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
            icon_size = 32,
            max_health = healthbehemothbitter,
            order = "b-b-a",
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
            spawning_time_modifier = 2,
            healing_per_tick = 0.02,
            collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
            collision_mask = {"object-layer"},
            selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
            sticker_box = {{-0.6, -0.8}, {0.6, 0}},
            distraction_cooldown = 300,
            attack_parameters = {
                type = "projectile",
                range = 1.5,
                cooldown = 35,
                ammo_category = "melee",
                ammo_type = make_unit_melee_ammo_type(spiterbehemothdmg),
                sound = sounds.biter_roars_big(0.6),
                animation = biterattackanimation(behemothbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
            },
            vision_distance = 30,
            movement_speed = 0.17,
            distance_per_frame = 0.2,
            -- in pu
            pollution_to_join_attack = 4000,
            corpse = "5d-behemoth-biter-swimmer-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.biter_calls_big(1.0),
            dying_sound = sounds.biter_dying_big(0.7),
            running_sound_animation_positions = {2},
            walking_sound = sounds.biter_walk_big(0.8),
            run_animation = biterrunanimation(behemothbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
        },
        {
            type = "corpse",
            name = "5d-behemoth-biter-swimmer-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 32,
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
            animation = biterdieanimation(behemothbitterscale, swimmer_biter_tint1, swimmer_biter_tint2)
        }
    }
)
