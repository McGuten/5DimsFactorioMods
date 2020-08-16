
data:extend(
    {
        --Laser 1
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
        --Laser 3
        {
            type = "projectile",
            name = "laser-blue",
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
                tint = {r = 0, g = 1.0, b = 1.0},
                frame_count = 1,
                width = 12,
                height = 33,
                priority = "high",
                blend_mode = "additive"
            },
            speed = 0.15
        }
    }
)