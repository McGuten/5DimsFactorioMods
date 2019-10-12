data:extend(
    {
        -- Item
        {
            type = "item",
            name = "5d-chemical-plant-2",
            icon = "__5dim_automatization__/graphics/icon/chemical-plant_2_.png",
            -- flags = {"goes-to-quickbar"},
            icon_size = 32,
            subgroup = "liquid-plant",
            order = "b",
            place_result = "5d-chemical-plant-2",
            stack_size = 10
        },
        --Recipe
        {
            type = "recipe",
            name = "5d-chemical-plant-2",
            energy_required = 8,
            enabled = false,
            ingredients = {
                {"chemical-plant", 1},
                {"pipe", 10},
                {"steel-plate", 5},
                {"iron-plate", 15}
            },
            result = "5d-chemical-plant-2"
        },
        --Entity
        {
            type = "assembling-machine",
            name = "5d-chemical-plant-2",
            icon = "__5dim_automatization__/graphics/icon/chemical-plant_2_.png",
            flags = {"placeable-neutral", "placeable-player", "player-creation"},
            minable = {hardness = 0.2, mining_time = 0.5, result = "5d-chemical-plant-2"},
            icon_size = 32,
            max_health = 300,
            corpse = "big-remnants",
            dying_explosion = "medium-explosion",
            collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            fast_replaceable_group = "chemical-plant",
            module_specification = {
                module_slots = 3
            },
            allowed_effects = {"consumption", "speed", "productivity", "pollution"},
            animation = make_4way_animation_from_spritesheet(
                {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
                            width = 108,
                            height = 148,
                            frame_count = 24,
                            line_length = 12,
                            shift = util.by_pixel(1, -9),
                            hr_version = {
                                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
                                width = 220,
                                height = 292,
                                frame_count = 24,
                                line_length = 12,
                                shift = util.by_pixel(0.5, -9),
                                scale = 0.5
                            }
                        },
                        {
                            filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
                            width = 154,
                            height = 112,
                            repeat_count = 24,
                            frame_count = 1,
                            shift = util.by_pixel(28, 6),
                            draw_as_shadow = true,
                            hr_version = {
                                filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
                                width = 312,
                                height = 222,
                                repeat_count = 24,
                                frame_count = 1,
                                shift = util.by_pixel(27, 6),
                                draw_as_shadow = true,
                                scale = 0.5
                            }
                        }
                    }
                }
            ),
            working_visualisations = {
                {
                    apply_recipe_tint = "primary",
                    north_animation = {
                        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-north.png",
                        frame_count = 24,
                        line_length = 6,
                        width = 32,
                        height = 24,
                        shift = util.by_pixel(24, 14),
                        hr_version = {
                            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-north.png",
                            frame_count = 24,
                            line_length = 6,
                            width = 66,
                            height = 44,
                            shift = util.by_pixel(23, 15),
                            scale = 0.5
                        }
                    },
                    east_animation = {
                        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-east.png",
                        frame_count = 24,
                        line_length = 6,
                        width = 36,
                        height = 18,
                        shift = util.by_pixel(0, 22),
                        hr_version = {
                            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-east.png",
                            frame_count = 24,
                            line_length = 6,
                            width = 70,
                            height = 36,
                            shift = util.by_pixel(0, 22),
                            scale = 0.5
                        }
                    },
                    south_animation = {
                        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-south.png",
                        frame_count = 24,
                        line_length = 6,
                        width = 34,
                        height = 24,
                        shift = util.by_pixel(0, 16),
                        hr_version = {
                            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-south.png",
                            frame_count = 24,
                            line_length = 6,
                            width = 66,
                            height = 42,
                            shift = util.by_pixel(0, 17),
                            scale = 0.5
                        }
                    },
                    west_animation = {
                        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-liquid-west.png",
                        frame_count = 24,
                        line_length = 6,
                        width = 38,
                        height = 20,
                        shift = util.by_pixel(-10, 12),
                        hr_version = {
                            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-liquid-west.png",
                            frame_count = 24,
                            line_length = 6,
                            width = 74,
                            height = 36,
                            shift = util.by_pixel(-10, 13),
                            scale = 0.5
                        }
                    }
                },
                {
                    apply_recipe_tint = "secondary",
                    north_animation = {
                        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-north.png",
                        frame_count = 24,
                        line_length = 6,
                        width = 32,
                        height = 22,
                        shift = util.by_pixel(24, 14),
                        hr_version = {
                            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-north.png",
                            frame_count = 24,
                            line_length = 6,
                            width = 62,
                            height = 42,
                            shift = util.by_pixel(24, 15),
                            scale = 0.5
                        }
                    },
                    east_animation = {
                        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-east.png",
                        frame_count = 24,
                        line_length = 6,
                        width = 34,
                        height = 18,
                        shift = util.by_pixel(0, 22),
                        hr_version = {
                            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-east.png",
                            frame_count = 24,
                            line_length = 6,
                            width = 68,
                            height = 36,
                            shift = util.by_pixel(0, 22),
                            scale = 0.5
                        }
                    },
                    south_animation = {
                        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-south.png",
                        frame_count = 24,
                        line_length = 6,
                        width = 32,
                        height = 18,
                        shift = util.by_pixel(0, 18),
                        hr_version = {
                            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-south.png",
                            frame_count = 24,
                            line_length = 6,
                            width = 60,
                            height = 40,
                            shift = util.by_pixel(1, 17),
                            scale = 0.5
                        }
                    },
                    west_animation = {
                        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-foam-west.png",
                        frame_count = 24,
                        line_length = 6,
                        width = 36,
                        height = 16,
                        shift = util.by_pixel(-10, 14),
                        hr_version = {
                            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-foam-west.png",
                            frame_count = 24,
                            line_length = 6,
                            width = 68,
                            height = 28,
                            shift = util.by_pixel(-9, 15),
                            scale = 0.5
                        }
                    }
                },
                {
                    apply_recipe_tint = "tertiary",
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel_hr(-30, -161),
                    east_position = util.by_pixel_hr(29, -150),
                    south_position = util.by_pixel_hr(12, -134),
                    west_position = util.by_pixel_hr(-32, -130),
                    render_layer = "wires",
                    animation = {
                        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-outer.png",
                        frame_count = 47,
                        line_length = 16,
                        width = 46,
                        height = 94,
                        animation_speed = 0.5,
                        shift = util.by_pixel(-2, -40),
                        hr_version = {
                            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-outer.png",
                            frame_count = 47,
                            line_length = 16,
                            width = 90,
                            height = 188,
                            animation_speed = 0.5,
                            shift = util.by_pixel(-2, -40),
                            scale = 0.5
                        }
                    }
                },
                {
                    apply_recipe_tint = "quaternary",
                    fadeout = true,
                    constant_speed = true,
                    north_position = util.by_pixel_hr(-30, -161),
                    east_position = util.by_pixel_hr(29, -150),
                    south_position = util.by_pixel_hr(12, -134),
                    west_position = util.by_pixel_hr(-32, -130),
                    render_layer = "wires",
                    animation = {
                        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-smoke-inner.png",
                        frame_count = 47,
                        line_length = 16,
                        width = 20,
                        height = 42,
                        animation_speed = 0.5,
                        shift = util.by_pixel(0, -14),
                        hr_version = {
                            filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-smoke-inner.png",
                            frame_count = 47,
                            line_length = 16,
                            width = 40,
                            height = 84,
                            animation_speed = 0.5,
                            shift = util.by_pixel(0, -14),
                            scale = 0.5
                        }
                    }
                }
            },
            vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
            working_sound = {
                sound = {
                    {
                        filename = "__base__/sound/chemical-plant.ogg",
                        volume = 0.8
                    }
                },
                idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
                apparent_volume = 1.5
            },
            crafting_speed = 2.5,
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input",
                emissions = 0.03 / 3.5
            },
            energy_usage = "210kW",
            ingredient_count = 4,
            crafting_categories = {"chemistry"},
            fluid_boxes = {
                {
                    production_type = "input",
                    pipe_covers = pipecoverspictures(),
                    base_area = 10,
                    base_level = -1,
                    pipe_connections = {{type = "input", position = {-1, -2}}}
                },
                {
                    production_type = "input",
                    pipe_covers = pipecoverspictures(),
                    base_area = 10,
                    base_level = -1,
                    pipe_connections = {{type = "input", position = {1, -2}}}
                },
                {
                    production_type = "output",
                    pipe_covers = pipecoverspictures(),
                    base_level = 1,
                    pipe_connections = {{position = {-1, 2}}}
                },
                {
                    production_type = "output",
                    pipe_covers = pipecoverspictures(),
                    base_level = 1,
                    pipe_connections = {{position = {1, 2}}}
                }
            }
        }
    }
)
