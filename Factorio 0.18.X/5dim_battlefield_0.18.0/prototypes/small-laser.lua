require("prototypes.turret-function")
local color = {r = 1, g = 1, b = 0.1, a = 1}
data:extend(
    {
        --Laser
        {
            type = "projectile",
            name = "laser-yellow",
            flags = {"not-on-map"},
            acceleration = 0.005,
            action = {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "create-entity",
                            entity_name = "laser-bubble"
                        },
                        {
                            type = "damage",
                            damage = {amount = 5, type = "laser"}
                        }
                    }
                }
            },
            light = {intensity = 0.5, size = 10},
            animation = {
                filename = "__base__/graphics/entity/laser/laser-to-tint-medium.png",
                tint = {r = 1, g = 1, b = 0.3},
                frame_count = 1,
                width = 12,
                height = 33,
                priority = "high",
                blend_mode = "additive"
            },
            speed = 0.15
        },
        --Item
        {
            type = "item",
            name = "5d-laser-turret-small",
            icon = "__5dim_battlefield__/graphics/icon/icon-small-laser-turret.png",
            -- flags = {"goes-to-quickbar"},
            icon_size = 32,
            subgroup = "defense-laser",
            order = "a",
            place_result = "5d-laser-turret-small",
            stack_size = 50
        },
        --Recipe
        {
            type = "recipe",
            name = "5d-laser-turret-small",
            enabled = false,
            energy_required = 20,
            ingredients = {
                {"steel-plate", 10},
                {"electronic-circuit", 10},
                {"battery", 6}
            },
            result = "5d-laser-turret-small"
        },
        --Entity
        {
            type = "electric-turret",
            name = "5d-laser-turret-small",
            icon = "__5dim_battlefield__/graphics/icon/icon-small-laser-turret.png",
            flags = {"placeable-player", "placeable-enemy", "player-creation"},
            minable = {mining_time = 0.5, result = "5d-laser-turret-small"},
            icon_size = 32,
            max_health = 1200,
            corpse = "medium-remnants",
            fast_replaceable_group = "turret",
            collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
            selection_box = {{-1, -1}, {1, 1}},
            rotation_speed = 0.02,
            preparing_speed = 0.1,
            dying_explosion = "medium-explosion",
            folding_speed = 0.1,
            call_for_help_radius = 40,
            energy_source = {
                type = "electric",
                buffer_capacity = "101kJ",
                input_flow_limit = "4800kW",
                drain = "5kW",
                usage_priority = "primary-input"
            },
            folded_animation = {
                layers = {
                    laser_turret_extension {frame_count = 1, line_length = 1},
                    laser_turret_extension_shadow {frame_count = 1, line_length = 1},
                    laser_turret_extension_mask {frame_count = 1, line_length = 1, tint = color}
                }
            },
            preparing_animation = {
                layers = {
                    laser_turret_extension {},
                    laser_turret_extension_shadow {},
                    laser_turret_extension_mask {tint = color}
                }
            },
            prepared_animation = {
                layers = {
                    laser_turret_shooting(),
                    laser_turret_shooting_shadow(),
                    laser_turret_shooting_mask {tint = color}
                }
            },
            folding_animation = {
                layers = {
                    laser_turret_extension {run_mode = "backward"},
                    laser_turret_extension_shadow {run_mode = "backward"},
                    laser_turret_extension_mask {run_mode = "backward", tint = color}
                }
            },
            base_picture = laser_turret_base {tint = color},
            vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
            attack_parameters = {
                type = "projectile",
                ammo_category = "electric",
                cooldown = 5,
                projectile_center = {0, -0.2},
                projectile_creation_distance = 1.4,
                range = 16,
                damage_modifier = 2,
                ammo_type = {
                    type = "projectile",
                    category = "laser-turret",
                    energy_consumption = "100kJ",
                    action = {
                        {
                            type = "direct",
                            action_delivery = {
                                {
                                    type = "projectile",
                                    projectile = "laser-yellow",
                                    starting_speed = 0.28
                                }
                            }
                        }
                    }
                },
                sound = make_laser_sounds()
            }
        }
    }
)
