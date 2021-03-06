data:extend(
    {
        -- Item
        {
            type = "item",
            name = "5d-nuclear-reactor-2",
            icon = "__5dim_nuclear__/graphics/icons/nuclear-reactor.png",
            -- flags = {"goes-to-quickbar"},
            icon_size = 32,
            subgroup = "nuclear-reactor",
            order = "b",
            place_result = "5d-nuclear-reactor-2",
            stack_size = 50
        },
        --Recipe
        {
            type = "recipe",
            name = "5d-nuclear-reactor-2",
            energy_required = 4,
            enabled = false,
            ingredients = {
                {"concrete", 250},
                {"nuclear-reactor", 1},
                {"steel-plate", 250},
                {"advanced-circuit", 250},
                {"copper-plate", 250}
            },
            result = "5d-nuclear-reactor-2",
            requester_paste_multiplier = 1
        },
        --Entity
        {
            type = "reactor",
            name = "5d-nuclear-reactor-2",
            icon = "__5dim_nuclear__/graphics/icons/nuclear-reactor.png",
            flags = {"placeable-neutral", "player-creation"},
            minable = {mining_time = 1.5, result = "5d-nuclear-reactor-2"},
            icon_size = 32,
            max_health = 500,
            fast_replaceable_group = "nuclear-reactor",
            corpse = "big-remnants",
            consumption = "44MW",
            energy_source = {
                type = "burner",
                fuel_category = "nuclear",
                effectivity = 1.1,
                fuel_inventory_size = 1,
                burnt_inventory_size = 1
            },
            collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
            selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
            lower_layer_picture = {
                filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes.png",
                width = 156,
                height = 156,
                shift = util.by_pixel(-2, -4),
                hr_version = {
                    filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes.png",
                    width = 320,
                    height = 316,
                    scale = 0.5,
                    shift = util.by_pixel(-1, -5)
                }
            },
            heat_lower_layer_picture = {
                filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes-heated.png",
                width = 156,
                height = 156,
                shift = util.by_pixel(-3, -4),
                hr_version = {
                    filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes-heated.png",
                    width = 320,
                    height = 316,
                    scale = 0.5,
                    shift = util.by_pixel(-0.5, -4.5)
                }
            },
            picture = {
                layers = {
                    {
                        filename = "__base__/graphics/entity/nuclear-reactor/reactor.png",
                        width = 154,
                        height = 158,
                        shift = util.by_pixel(-6, -6),
                        hr_version = {
                            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor.png",
                            width = 302,
                            height = 318,
                            scale = 0.5,
                            shift = util.by_pixel(-5, -7)
                        }
                    },
                    {
                        filename = "__base__/graphics/entity/nuclear-reactor/reactor-shadow.png",
                        width = 263,
                        height = 162,
                        shift = {1.625, 0},
                        draw_as_shadow = true,
                        hr_version = {
                            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-shadow.png",
                            width = 525,
                            height = 323,
                            scale = 0.5,
                            shift = {1.625, 0},
                            draw_as_shadow = true
                        }
                    }
                }
            },
            working_light_picture = {
                filename = "__base__/graphics/entity/nuclear-reactor/reactor-lights-color.png",
                width = 160,
                height = 160,
                shift = {-0.03125, -0.1875},
                blend_mode = "additive",
                hr_version = {
                    filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png",
                    width = 320,
                    height = 320,
                    scale = 0.5,
                    shift = {-0.03125, -0.1875},
                    blend_mode = "additive"
                }
            },
            light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1, g = 0.3, b = 0.0}},
            heat_buffer = {
                max_temperature = 1100,
                specific_heat = "11MJ",
                max_transfer = "11GW",
                connections = {
                    {
                        position = {-2, -2},
                        direction = defines.direction.north
                    },
                    {
                        position = {0, -2},
                        direction = defines.direction.north
                    },
                    {
                        position = {2, -2},
                        direction = defines.direction.north
                    },
                    {
                        position = {2, -2},
                        direction = defines.direction.east
                    },
                    {
                        position = {2, 0},
                        direction = defines.direction.east
                    },
                    {
                        position = {2, 2},
                        direction = defines.direction.east
                    },
                    {
                        position = {2, 2},
                        direction = defines.direction.south
                    },
                    {
                        position = {0, 2},
                        direction = defines.direction.south
                    },
                    {
                        position = {-2, 2},
                        direction = defines.direction.south
                    },
                    {
                        position = {-2, 2},
                        direction = defines.direction.west
                    },
                    {
                        position = {-2, 0},
                        direction = defines.direction.west
                    },
                    {
                        position = {-2, -2},
                        direction = defines.direction.west
                    }
                }
            },
            connection_patches_connected = {
                sheet = {
                    filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
                    width = 32,
                    height = 32,
                    variation_count = 12,
                    hr_version = {
                        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
                        width = 64,
                        height = 64,
                        variation_count = 12,
                        scale = 0.5
                    }
                }
            },
            connection_patches_disconnected = {
                sheet = {
                    filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
                    width = 32,
                    height = 32,
                    variation_count = 12,
                    y = 32,
                    hr_version = {
                        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
                        width = 64,
                        height = 64,
                        variation_count = 12,
                        y = 64,
                        scale = 0.5
                    }
                }
            },
            connection_patches = {
                north = {
                    filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-north.png",
                    width = 160,
                    height = 15,
                    shift = util.by_pixel(0, -72.5)
                },
                east = {
                    filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-east.png",
                    width = 15,
                    height = 160,
                    shift = util.by_pixel(72.5, 0)
                },
                south = {
                    filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-south.png",
                    width = 160,
                    height = 15,
                    shift = util.by_pixel(0, 72.5)
                },
                west = {
                    filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-west.png",
                    width = 15,
                    height = 160,
                    shift = util.by_pixel(-72.5, 0)
                }
            },
            vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65}
        }
    }
)
