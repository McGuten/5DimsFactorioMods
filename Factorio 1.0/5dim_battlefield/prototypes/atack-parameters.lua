--Explosive
function explosivesmall(data)
    return {
        type = "projectile",
        ammo_category = "explosive-rocket",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 0.5,
        damage_modifier = data.damage_modifier,
        warmup = 5,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "explosive-rocket",
                    starting_speed = 0.1,
                    source_effects = {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = biterattackanimation(smallspitterscale, data.tint, data.tint2)
    }
end

function explosivemedium(data)
    return {
        type = "projectile",
        ammo_category = "explosive-rocket",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 0.5,
        damage_modifier = data.damage_modifier,
        warmup = 5,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "explosive-rocket",
                    starting_speed = 0.1,
                    source_effects = {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = biterattackanimation(mediumspitterscale, data.tint, data.tint2)
    }
end

function explosivebig(data)
    return {
        type = "projectile",
        ammo_category = "explosive-rocket",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 0.5,
        damage_modifier = data.damage_modifier,
        warmup = 5,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "explosive-rocket",
                    starting_speed = 0.1,
                    source_effects = {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = biterattackanimation(bigspitterscale, data.tint, data.tint2)
    }
end

function explosivebehemoth(data)
    return {
        type = "projectile",
        ammo_category = "explosive-rocket",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 0.5,
        damage_modifier = data.damage_modifier,
        warmup = 5,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "explosive-rocket",
                    starting_speed = 0.1,
                    source_effects = {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = biterattackanimation(behemothspitterscale, data.tint, data.tint2)
    }
end

function explosiveexp(data)
    return {
        type = "projectile",
        ammo_category = "explosive-rocket",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 0.5,
        damage_modifier = data.damage_modifier,
        warmup = 5,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "explosive-rocket",
                    starting_speed = 0.1,
                    source_effects = {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = biterattackanimation(expspitterscale, data.tint, data.tint2)
    }
end

--Flamer
data:extend(
    {
        {
            type = "flame-thrower-explosion",
            name = "flame-thrower-bicho",
            flags = {"not-on-map"},
            animation_speed = 1,
            animations = {
                {
                    filename = "__5dim_battlefield__/graphics/icon/flame-thrower-bicho.png",
                    priority = "extra-high",
                    width = 64,
                    height = 64,
                    frame_count = 64,
                    line_length = 8
                }
            },
            light = {intensity = 0.2, size = 20},
            slow_down_factor = 1,
            smoke = "smoke-fast",
            smoke_count = 1,
            smoke_slow_down_factor = 0.95,
            damage = {amount = 0.3, type = "acid"}
        }
    }
)

function flamersmall(data)
    return {
        type = "projectile",
        ammo_category = "flame-thrower-ammo",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 1.5,
        damage_modifier = data.damage_modifier,
        warmup = 1,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "flame-thrower",
                    explosion = "flame-thrower-bicho",
                    direction_deviation = 0.07,
                    speed_deviation = 0.1,
                    starting_frame_deviation = 0.07,
                    projectile_starting_speed = 0.2,
                    starting_distance = 0.6
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = spitterattackanimation(smallbitterscale, data.tint, data.tint2)
    }
end
function flamermedium(data)
    return {
        type = "projectile",
        ammo_category = "flame-thrower-ammo",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 1.5,
        damage_modifier = data.damage_modifier,
        warmup = 1,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "flame-thrower",
                    explosion = "flame-thrower-bicho",
                    direction_deviation = 0.07,
                    speed_deviation = 0.1,
                    starting_frame_deviation = 0.07,
                    projectile_starting_speed = 0.2,
                    starting_distance = 1
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = spitterattackanimation(mediumbitterscale, data.tint, data.tint2)
    }
end
function flamerbig(data)
    return {
        type = "projectile",
        ammo_category = "flame-thrower-ammo",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 1.5,
        damage_modifier = data.damage_modifier,
        warmup = 1,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "flame-thrower",
                    explosion = "flame-thrower-bicho",
                    direction_deviation = 0.07,
                    speed_deviation = 0.1,
                    starting_frame_deviation = 0.07,
                    projectile_starting_speed = 0.2,
                    starting_distance = 2
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = spitterattackanimation(bigbitterscale, data.tint, data.tint2)
    }
end

function flamerbehemoth(data)
    return {
        type = "projectile",
        ammo_category = "flame-thrower-ammo",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 1.5,
        damage_modifier = data.damage_modifier,
        warmup = 1,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "flame-thrower",
                    explosion = "flame-thrower-bicho",
                    direction_deviation = 0.07,
                    speed_deviation = 0.1,
                    starting_frame_deviation = 0.07,
                    projectile_starting_speed = 0.2,
                    starting_distance = 3
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = spitterattackanimation(behemothbitterscale, data.tint, data.tint2)
    }
end

function flamerexp(data)
    return {
        type = "projectile",
        ammo_category = "flame-thrower-ammo",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 1.5,
        damage_modifier = data.damage_modifier,
        warmup = 1,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "flame-thrower",
                    explosion = "flame-thrower-bicho",
                    direction_deviation = 0.07,
                    speed_deviation = 0.1,
                    starting_frame_deviation = 0.07,
                    projectile_starting_speed = 0.2,
                    starting_distance = 6
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = spitterattackanimation(expbitterscale, data.tint, data.tint2)
    }
end

--Rocket
function rocketlaunchersmall(data)
    return {
        type = "projectile",
        ammo_category = "explosive-rocket",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 1.5,
        damage_modifier = data.damage_modifier,
        warmup = 50,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "acid-projectile-purple",
                    starting_speed = 0.1,
                    source_effects = {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = spitterattackanimation(smallspitterscale, data.tint, data.tint2)
    }
end

function rocketlaunchermedium(data)
    return {
        type = "projectile",
        ammo_category = "explosive-rocket",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 1.5,
        damage_modifier = data.damage_modifier,
        warmup = 50,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "acid-projectile-purple",
                    starting_speed = 0.1,
                    source_effects = {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = spitterattackanimation(mediumspitterscale, data.tint, data.tint2)
    }
end

function rocketlauncherbig(data)
    return {
        type = "projectile",
        ammo_category = "explosive-rocket",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 1.5,
        damage_modifier = data.damage_modifier,
        warmup = 50,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "acid-projectile-purple",
                    starting_speed = 0.1,
                    source_effects = {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = spitterattackanimation(bigspitterscale, data.tint, data.tint2)
    }
end

function rocketlauncherbehemoth(data)
    return {
        type = "projectile",
        ammo_category = "explosive-rocket",
        cooldown = data.cooldown,
        range = data.range,
        projectile_creation_distance = 1.5,
        damage_modifier = data.damage_modifier,
        warmup = 50,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "acid-projectile-purple",
                    starting_speed = 0.1,
                    source_effects = {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = spitterattackanimation(behemothspitterscale, data.tint, data.tint2)
    }
end

function rocketlauncherexp(data)
    return {
        type = "projectile",
        ammo_category = "explosive-rocket",
        cooldown = data.cooldown,
        range = data.range + 2,
        projectile_creation_distance = 1.5,
        damage_modifier = data.damage_modifier,
        warmup = 50,
        ammo_type = {
            category = "biological",
            action = {
                type = "direct",
                action_delivery = {
                    type = "projectile",
                    projectile = "acid-projectile-purple",
                    starting_speed = 0.1,
                    source_effects = {
                        type = "create-entity",
                        entity_name = "explosion-hit"
                    }
                }
            }
        },
        --sound = make_spitter_roars(data.roarvolume),
        animation = spitterattackanimation(expspitterscale, data.tint, data.tint2)
    }
end

function acid_stream(data)
    return {
        type = "stream",
        name = data.name,
        flags = {"not-on-map"},
        --stream_light = {intensity = 1, size = 4},
        --ground_light = {intensity = 0.8, size = 4},

        particle_buffer_size = 90,
        particle_spawn_interval = data.particle_spawn_interval,
        particle_spawn_timeout = data.particle_spawn_timeout,
        particle_vertical_acceleration = 0.005 * 0.60 * 1.5, --x
        particle_horizontal_speed = 0.2 * 0.75 * 1.5 * 1.5, --x
        particle_horizontal_speed_deviation = 0.005 * 0.70,
        particle_start_alpha = 0.5,
        particle_end_alpha = 1,
        particle_alpha_per_part = 0.8,
        particle_scale_per_part = 0.8,
        particle_loop_frame_count = 15,
        --particle_fade_out_threshold = 0.95,
        particle_fade_out_duration = 2,
        particle_loop_exit_threshold = 0.25,
        special_neutral_target_damage = {amount = 1, type = "acid"},
        working_sound = {
            sound = {
                {
                    filename = "__base__/sound/fight/projectile-acid-burn-loop.ogg",
                    volume = 0.4
                }
            }
        },
        initial_action = {
            {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "play-sound",
                            sound = {
                                {
                                    filename = "__base__/sound/creatures/projectile-acid-burn-1.ogg",
                                    volume = 0.65
                                },
                                {
                                    filename = "__base__/sound/creatures/projectile-acid-burn-2.ogg",
                                    volume = 0.65
                                },
                                {
                                    filename = "__base__/sound/creatures/projectile-acid-burn-long-1.ogg",
                                    volume = 0.6
                                },
                                {
                                    filename = "__base__/sound/creatures/projectile-acid-burn-long-2.ogg",
                                    volume = 0.6
                                }
                            }
                        },
                        {
                            type = "create-fire",
                            entity_name = data.splash_fire_name,
                            tile_collision_mask = {"water-tile"},
                            show_in_tooltip = true
                        },
                        {
                            type = "create-entity",
                            entity_name = "water-splash",
                            tile_collision_mask = {"ground-tile"}
                        }
                    }
                }
            },
            {
                type = "area",
                radius = data.spit_radius,
                force = "enemy",
                ignore_collision_condition = true,
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "create-sticker",
                            sticker = data.sticker_name
                        },
                        {
                            type = "damage",
                            damage = {amount = 1, type = "acid"}
                        }
                    }
                }
            }
        },
        particle = {
            filename = "__base__/graphics/entity/acid-projectile/acid-projectile-head.png",
            line_length = 5,
            width = 22,
            height = 84,
            frame_count = 15,
            shift = util.mul_shift(util.by_pixel(-2, 30), data.scale),
            tint = data.tint,
            priority = "high",
            scale = data.scale,
            animation_speed = 1,
            hr_version = {
                filename = "__base__/graphics/entity/acid-projectile/hr-acid-projectile-head.png",
                line_length = 5,
                width = 42,
                height = 164,
                frame_count = 15,
                shift = util.mul_shift(util.by_pixel(-2, 31), data.scale),
                tint = data.tint,
                priority = "high",
                scale = 0.5 * data.scale,
                animation_speed = 1
            }
        },
        spine_animation = {
            filename = "__base__/graphics/entity/acid-projectile/acid-projectile-tail.png",
            line_length = 5,
            width = 66,
            height = 12,
            frame_count = 15,
            shift = util.mul_shift(util.by_pixel(0, -2), data.scale),
            tint = data.tint,
            priority = "high",
            scale = data.scale,
            animation_speed = 1,
            hr_version = {
                filename = "__base__/graphics/entity/acid-projectile/hr-acid-projectile-tail.png",
                line_length = 5,
                width = 132,
                height = 20,
                frame_count = 15,
                shift = util.mul_shift(util.by_pixel(0, -1), data.scale),
                tint = data.tint,
                priority = "high",
                scale = 0.5 * data.scale,
                animation_speed = 1
            }
        },
        shadow = {
            filename = "__base__/graphics/entity/acid-projectile/acid-projectile-shadow.png",
            line_length = 15,
            width = 22,
            height = 84,
            frame_count = 15,
            priority = "high",
            shift = util.mul_shift(util.by_pixel(-2, 30), data.scale),
            draw_as_shadow = true,
            scale = data.scale,
            animation_speed = 1,
            hr_version = {
                filename = "__base__/graphics/entity/acid-projectile/hr-acid-projectile-shadow.png",
                line_length = 15,
                width = 42,
                height = 164,
                frame_count = 15,
                shift = util.mul_shift(util.by_pixel(-2, 31), data.scale),
                draw_as_shadow = true,
                priority = "high",
                scale = 0.5 * data.scale,
                animation_speed = 1
            }
        },
        oriented_particle = true,
        shadow_scale_enabled = true
    }
end
