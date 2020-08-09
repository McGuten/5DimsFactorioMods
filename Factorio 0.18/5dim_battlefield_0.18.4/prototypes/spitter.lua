require("prototypes.atack-parameters")
require("prototypes.scalecolor")
require("prototypes.damage")
local sounds = require("__base__.prototypes.entity.demo-sounds")

data:extend(
    {
        {
            type = "unit-spawner",
            name = "spitter-spawner",
            icon = "__base__/graphics/icons/biter-spawner.png",
            flags = {"placeable-player", "placeable-enemy", "not-repairable"},
            icon_size = 32,
            max_health = 500,
            order = "b-b-h",
            subgroup = "enemies",
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
            healing_per_tick = 0.02,
            collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
            selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
            pollution_absorption_absolute = 20,
            pollution_absorption_proportional = 0.01,
            corpse = "spitter-spawner-corpse",
            dying_explosion = "blood-explosion-huge",
            max_count_of_owned_units = 7,
            max_friends_around_to_spawn = 5,
            animations = {
                spawner_idle_animation(0, smallspittertint),
                spawner_idle_animation(1, smallspittertint),
                spawner_idle_animation(2, smallspittertint),
                spawner_idle_animation(3, smallspittertint)
            },
            result_units = (function()
                local res = {}
                res[1] = {"small-biter", {{0.0, 0.3}, {0.35, 0}}}
                res[2] = {"small-spitter", {{0.17, 0.0}, {0.5, 0.3}, {0.7, 0.0}}}
                res[3] = {"medium-spitter", {{0.5, 0.0}, {0.7, 0.3}, {0.9, 0.1}}}
                res[4] = {"big-spitter", {{0.6, 0.0}, {1.0, 0.4}}}
                res[5] = {"behemoth-spitter", {{0.85, 0.0}, {1.0, 0.3}}}
                return res
            end)(),
            -- With zero evolution the spawn rate is 6 seconds, with max evolution it is 2.5 seconds
            spawning_cooldown = {360, 150},
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
            name = "small-spitter",
            icon = "__base__/graphics/icons/small-spitter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
            icon_size = 32,
            max_health = healthsmallspitter,
            order = "b-b-d",
            subgroup = "enemies",
            healing_per_tick = 0.01,
            collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
            selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
            sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
            distraction_cooldown = 300,
            attack_parameters = spitter_attack_parameters(
                {
                    acid_stream_name = "acid-stream-spitter-small",
                    range = range_spitter_small,
                    min_attack_distance = 10,
                    cooldown = 100,
                    damage_modifier = spitersmalldmg,
                    scale = smallspitterscale,
                    tint1 = smallspittertint,
                    tint2 = smallspittertint,
                    roarvolume = 0.4
                }
            ),
            vision_distance = 30,
            movement_speed = 0.185,
            distance_per_frame = 0.04,
            -- in pu
            pollution_to_join_attack = 200,
            corpse = "small-spitter-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.spitter_calls(0.7),
            dying_sound = sounds.spitter_dying(0.4),
            running_sound_animation_positions = {2},
            walking_sound = sounds.spitter_walk(0.3),
            run_animation = spitterrunanimation(smallspitterscale, smallspittertint)
        },
        {
            type = "corpse",
            name = "small-spitter-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 32,
            selectable_in_game = false,
            selection_box = {{-1, -1}, {1, 1}},
            subgroup = "corpses",
            order = "c[corpse]-b[spitter]-a[small]",
            flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = spitterdyinganimation(smallspitterscale, smallspittertint)
        },
        --Medium
        {
            type = "unit",
            name = "medium-spitter",
            icon = "__base__/graphics/icons/medium-spitter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
            icon_size = 32,
            max_health = healthmediumspitter,
            order = "b-b-e",
            subgroup = "enemies",
            resistances = {
                {
                    type = "explosion",
                    percent = 15
                }
            },
            healing_per_tick = 0.01,
            collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
            selection_box = {{-0.5, -0.7}, {0.5, 0.7}},
            sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
            distraction_cooldown = 300,
            attack_parameters = spitter_attack_parameters(
                {
                    acid_stream_name = "acid-stream-spitter-small",
                    range = range_spitter_small,
                    min_attack_distance = 10,
                    cooldown = 100,
                    damage_modifier = spitermediumdmg,
                    scale = mediumspitterscale,
                    tint1 = smallspittertint,
                    tint2 = smallspittertint,
                    roarvolume = 0.4
                }
            ),
            vision_distance = 30,
            movement_speed = 0.165,
            distance_per_frame = 0.055,
            -- in pu
            pollution_to_join_attack = 600,
            corpse = "medium-spitter-corpse",
            dying_explosion = "blood-explosion-small",
            working_sound = sounds.spitter_calls_med(0.6),
            dying_sound = sounds.spitter_dying(0.5),
            running_sound_animation_positions = {2},
            walking_sound = sounds.spitter_walk(0.6),
            run_animation = spitterrunanimation(mediumspitterscale, mediumspittertint)
        },
        {
            type = "corpse",
            name = "medium-spitter-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 32,
            selectable_in_game = false,
            selection_box = {{-1, -1}, {1, 1}},
            subgroup = "corpses",
            order = "c[corpse]-b[spitter]-b[medium]",
            flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = spitterdyinganimation(mediumspitterscale, mediumspittertint)
        },
        --Big
        {
            type = "unit",
            name = "big-spitter",
            icon = "__base__/graphics/icons/big-spitter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
            icon_size = 32,
            max_health = healthbigspitter,
            order = "b-b-f",
            subgroup = "enemies",
            resistances = {
                {
                    type = "explosion",
                    percent = 30
                }
            },
            spawning_time_modifier = 2,
            healing_per_tick = 0.01,
            collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
            selection_box = {{-0.7, -1.0}, {0.7, 1.0}},
            sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
            distraction_cooldown = 300,
            attack_parameters = spitter_attack_parameters(
                {
                    acid_stream_name = "acid-stream-spitter-small",
                    range = range_spitter_small,
                    min_attack_distance = 10,
                    cooldown = 100,
                    damage_modifier = spiterbigdmg,
                    scale = bigspitterscale,
                    tint1 = smallspittertint,
                    tint2 = smallspittertint,
                    roarvolume = 0.4
                }
            ),
            vision_distance = 30,
            movement_speed = 0.15,
            distance_per_frame = 0.07,
            -- in pu
            pollution_to_join_attack = 1500,
            corpse = "big-spitter-corpse",
            dying_explosion = "blood-explosion-big",
            working_sound = sounds.spitter_calls_big(0.7),
            dying_sound = sounds.spitter_dying_big(0.8),
            running_sound_animation_positions = {2},
            walking_sound = sounds.spitter_walk_big(0.5),
            run_animation = spitterrunanimation(bigspitterscale, bigspittertint)
        },
        {
            type = "corpse",
            name = "big-spitter-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 32,
            selectable_in_game = false,
            collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
            selection_box = {{-0.7, -1}, {0.7, 1}},
            subgroup = "corpses",
            order = "c[corpse]-b[spitter]-c[big]",
            flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = spitterdyinganimation(bigspitterscale, bigspittertint)
        },
        --Behemoth
        {
            type = "unit",
            name = "behemoth-spitter",
            icon = "__base__/graphics/icons/behemoth-spitter.png",
            flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
            icon_size = 32,
            max_health = healthbigspitter,
            order = "b-b-f",
            subgroup = "enemies",
            resistances = {
                {
                    type = "explosion",
                    percent = 35
                }
            },
            spawning_time_modifier = 8,
            healing_per_tick = 0.1,
            collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
            selection_box = {{-0.7, -1.0}, {0.7, 1.0}},
            sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
            distraction_cooldown = 300,
            attack_parameters = spitter_attack_parameters(
                {
                    acid_stream_name = "acid-stream-spitter-small",
                    range = range_spitter_small,
                    min_attack_distance = 10,
                    cooldown = 100,
                    damage_modifier = spiterbehemothdmg,
                    scale = behemothspitterscale,
                    tint1 = smallspittertint,
                    tint2 = smallspittertint,
                    roarvolume = 0.4
                }
            ),
            vision_distance = 30,
            movement_speed = 0.15,
            distance_per_frame = 0.084,
            pollution_to_join_attack = 10000,
            corpse = "behemoth-spitter-corpse",
            dying_explosion = "blood-explosion-big",
            working_sound = sounds.spitter_calls_big(0.8),
            dying_sound = sounds.spitter_dying_big(0.8),
            run_animation = spitterrunanimation(
                scale_spitter_behemoth,
                tint_1_spitter_behemoth,
                tint_2_spitter_behemoth
            ),
            running_sound_animation_positions = {2},
            walking_sound = sounds.spitter_walk_big(0.6),
            run_animation = spitterrunanimation(behemothspitterscale, behemothspittertint)
        },
        {
            type = "corpse",
            name = "behemoth-spitter-corpse",
            icon = "__base__/graphics/icons/big-biter-corpse.png",
            icon_size = 32,
            selectable_in_game = false,
            collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
            selection_box = {{-0.7, -1}, {0.7, 1}},
            subgroup = "corpses",
            order = "c[corpse]-b[spitter]-d[behemoth]",
            flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
            dying_speed = 0.04,
            time_before_removed = 15 * 60 * 60,
            final_render_layer = "corpse",
            animation = spitterdyinganimation(behemothspitterscale, behemothspittertint)
        }
    }
)
