data:extend(
    {
        -- Item
        {
            type = "item",
            name = "5d-storage-tank",
            icon = "__5dim_transport__/graphics/icon/icon_5d_depot_2_.png",
            -- flags = {"goes-to-quickbar"},
            icon_size = 32,
            subgroup = "liquid-store",
            order = "b",
            place_result = "5d-storage-tank",
            stack_size = 50
        },
        --Recipe
        {
            type = "recipe",
            name = "5d-storage-tank",
            energy_required = 3,
            enabled = "false",
            ingredients = {
                {"storage-tank", 1},
                {"iron-plate", 15},
                {"steel-plate", 2},
                {"stone", 5}
            },
            result = "5d-storage-tank"
        },
        --Entity
        {
            type = "storage-tank",
            name = "5d-storage-tank",
            icon = "__5dim_transport__/graphics/icon/icon_5d_depot_2_.png",
            flags = {"placeable-player", "player-creation"},
            minable = {hardness = 0.2, mining_time = 3, result = "5d-storage-tank"},
            icon_size = 32,
            max_health = 1000,
            corpse = "medium-remnants",
            collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
            selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
            fast_replaceable_group = "storage-tank",
            fluid_box = {
                base_area = 1000,
                pipe_covers = pipecoverspictures(),
                pipe_connections = {
                    {position = {-1, -2}},
                    {position = {2, 1}},
                    {position = {1, 2}},
                    {position = {-2, -1}}
                }
            },
            window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
            pictures = {
                picture = {
                    sheet = {
                        filename = "__5dim_transport__/graphics/icon/icon_5d_depot_2.png",
                        priority = "extra-high",
                        frames = 2,
                        width = 140,
                        height = 115,
                        shift = {0.6875, 0.109375}
                    }
                },
                working_sound = {
                    sound = {
                        filename = "__base__/sound/storage-tank.ogg",
                        volume = 0.8
                    },
                    apparent_volume = 1.5,
                    max_sounds_per_type = 3
                },
                fluid_background = {
                    filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
                    priority = "extra-high",
                    width = 32,
                    height = 15
                },
                window_background = {
                    filename = "__base__/graphics/entity/storage-tank/window-background.png",
                    priority = "extra-high",
                    width = 17,
                    height = 24
                },
                flow_sprite = {
                    filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
                    priority = "extra-high",
                    width = 160,
                    height = 20
                },
                gas_flow = {
                    filename = "__base__/graphics/entity/pipe/steam.png",
                    priority = "extra-high",
                    line_length = 10,
                    width = 24,
                    height = 15,
                    frame_count = 60,
                    axially_symmetrical = false,
                    direction_count = 1,
                    animation_speed = 0.25,
                    hr_version = {
                        filename = "__base__/graphics/entity/pipe/hr-steam.png",
                        priority = "extra-high",
                        line_length = 10,
                        width = 48,
                        height = 30,
                        frame_count = 60,
                        axially_symmetrical = false,
                        animation_speed = 0.25,
                        direction_count = 1
                    }
                }
            },
            flow_length_in_ticks = 360,
            vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
            working_sound = {
                sound = {
                    filename = "__base__/sound/storage-tank.ogg",
                    volume = 0.8
                },
                apparent_volume = 1.5,
                max_sounds_per_type = 3
            },
            circuit_wire_connection_points = {
                {
                    shadow = {
                        red = {2.35938, 0.890625},
                        green = {2.29688, 0.953125}
                    },
                    wire = {
                        red = {-0.40625, -0.375},
                        green = {-0.53125, -0.46875}
                    }
                },
                {
                    shadow = {
                        red = {2.35938, 0.890625},
                        green = {2.29688, 0.953125}
                    },
                    wire = {
                        red = {0.46875, -0.53125},
                        green = {0.375, -0.4375}
                    }
                },
                {
                    shadow = {
                        red = {2.35938, 0.890625},
                        green = {2.29688, 0.953125}
                    },
                    wire = {
                        red = {-0.40625, -0.375},
                        green = {-0.53125, -0.46875}
                    }
                },
                {
                    shadow = {
                        red = {2.35938, 0.890625},
                        green = {2.29688, 0.953125}
                    },
                    wire = {
                        red = {0.46875, -0.53125},
                        green = {0.375, -0.4375}
                    }
                }
            },
            circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
            circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
            circuit_wire_max_distance = default_circuit_wire_max_distance
        }
    }
)
