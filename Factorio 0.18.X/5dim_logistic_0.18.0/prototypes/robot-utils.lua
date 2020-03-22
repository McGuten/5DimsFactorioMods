local hit_effects = require("__base__.prototypes.entity.demo-hit-effects")
local sounds = require("__base__.prototypes.entity.demo-sounds")

local robot_animations = {}

robot_animations.sparks = {
    {
        filename = "__base__/graphics/entity/sparks/sparks-01.png",
        width = 39,
        height = 34,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.3125},
        tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
        animation_speed = 0.3
    },
    {
        filename = "__base__/graphics/entity/sparks/sparks-02.png",
        width = 36,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.125},
        tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
        animation_speed = 0.3
    },
    {
        filename = "__base__/graphics/entity/sparks/sparks-03.png",
        width = 42,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.203125},
        tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
        animation_speed = 0.3
    },
    {
        filename = "__base__/graphics/entity/sparks/sparks-04.png",
        width = 40,
        height = 35,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.234375},
        tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
        animation_speed = 0.3
    },
    {
        filename = "__base__/graphics/entity/sparks/sparks-05.png",
        width = 39,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.171875},
        tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
        animation_speed = 0.3
    },
    {
        filename = "__base__/graphics/entity/sparks/sparks-06.png",
        width = 44,
        height = 36,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.3125},
        tint = {r = 1.0, g = 0.9, b = 0.0, a = 1.0},
        animation_speed = 0.3
    }
}

robot_animations.logistic_robot = {
    idle = {
        filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
        priority = "high",
        line_length = 16,
        width = 41,
        height = 42,
        frame_count = 1,
        shift = util.by_pixel(0, -3),
        direction_count = 16,
        y = 42,
        hr_version = {
            filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 84,
            frame_count = 1,
            shift = util.by_pixel(0, -3),
            direction_count = 16,
            y = 84,
            scale = 0.5
        }
    },
    idle_with_cargo = {
        filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
        priority = "high",
        line_length = 16,
        width = 41,
        height = 42,
        frame_count = 1,
        shift = util.by_pixel(0, -3),
        direction_count = 16,
        hr_version = {
            filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 84,
            frame_count = 1,
            shift = util.by_pixel(0, -3),
            direction_count = 16,
            scale = 0.5
        }
    },
    in_motion = {
        filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
        priority = "high",
        line_length = 16,
        width = 41,
        height = 42,
        frame_count = 1,
        shift = util.by_pixel(0, -3),
        direction_count = 16,
        y = 126,
        hr_version = {
            filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 84,
            frame_count = 1,
            shift = util.by_pixel(0, -3),
            direction_count = 16,
            y = 252,
            scale = 0.5
        }
    },
    in_motion_with_cargo = {
        filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
        priority = "high",
        line_length = 16,
        width = 41,
        height = 42,
        frame_count = 1,
        shift = util.by_pixel(0, -3),
        direction_count = 16,
        y = 84,
        hr_version = {
            filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
            priority = "high",
            line_length = 16,
            width = 80,
            height = 84,
            frame_count = 1,
            shift = util.by_pixel(0, -3),
            direction_count = 16,
            y = 168,
            scale = 0.5
        }
    },
    shadow_idle = {
        filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 58,
        height = 29,
        frame_count = 1,
        shift = util.by_pixel(32, 19.5),
        direction_count = 16,
        y = 29,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 115,
            height = 57,
            frame_count = 1,
            shift = util.by_pixel(31.75, 19.75),
            direction_count = 16,
            y = 57,
            scale = 0.5,
            draw_as_shadow = true
        }
    },
    shadow_idle_with_cargo = {
        filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 58,
        height = 29,
        frame_count = 1,
        shift = util.by_pixel(32, 19.5),
        direction_count = 16,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 115,
            height = 57,
            frame_count = 1,
            shift = util.by_pixel(31.75, 19.75),
            direction_count = 16,
            scale = 0.5,
            draw_as_shadow = true
        }
    },
    shadow_in_motion = {
        filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 58,
        height = 29,
        frame_count = 1,
        shift = util.by_pixel(32, 19.5),
        direction_count = 16,
        y = 29,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 115,
            height = 57,
            frame_count = 1,
            shift = util.by_pixel(31.75, 19.75),
            direction_count = 16,
            y = 57 * 3,
            scale = 0.5,
            draw_as_shadow = true
        }
    },
    shadow_in_motion_with_cargo = {
        filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 58,
        height = 29,
        frame_count = 1,
        shift = util.by_pixel(32, 19.5),
        direction_count = 16,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 115,
            height = 57,
            frame_count = 1,
            shift = util.by_pixel(31.75, 19.75),
            direction_count = 16,
            y = 114,
            scale = 0.5,
            draw_as_shadow = true
        }
    }
}

robot_animations.construction_robot = {
    idle = {
        filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
        priority = "high",
        line_length = 16,
        width = 32,
        height = 36,
        frame_count = 1,
        shift = util.by_pixel(0, -4.5),
        direction_count = 16,
        hr_version = {
            filename = "__base__/graphics/entity/construction-robot/hr-construction-robot.png",
            priority = "high",
            line_length = 16,
            width = 66,
            height = 76,
            frame_count = 1,
            shift = util.by_pixel(0, -4.5),
            direction_count = 16,
            scale = 0.5
        }
    },
    in_motion = {
        filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
        priority = "high",
        line_length = 16,
        width = 32,
        height = 36,
        frame_count = 1,
        shift = util.by_pixel(0, -4.5),
        direction_count = 16,
        y = 36,
        hr_version = {
            filename = "__base__/graphics/entity/construction-robot/hr-construction-robot.png",
            priority = "high",
            line_length = 16,
            width = 66,
            height = 76,
            frame_count = 1,
            shift = util.by_pixel(0, -4.5),
            direction_count = 16,
            y = 76,
            scale = 0.5
        }
    },
    shadow_idle = {
        filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 53,
        height = 25,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.5),
        direction_count = 16,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 104,
            height = 49,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.75),
            direction_count = 16,
            scale = 0.5,
            draw_as_shadow = true
        }
    },
    shadow_in_motion = {
        filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 53,
        height = 25,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.5),
        direction_count = 16,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 104,
            height = 49,
            frame_count = 1,
            shift = util.by_pixel(33.5, 18.75),
            direction_count = 16,
            scale = 0.5,
            draw_as_shadow = true
        }
    },
    working = {
        filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
        priority = "high",
        line_length = 2,
        width = 28,
        height = 36,
        frame_count = 2,
        shift = util.by_pixel(-0.25, -5),
        direction_count = 16,
        animation_speed = 0.3,
        hr_version = {
            filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-working.png",
            priority = "high",
            line_length = 2,
            width = 57,
            height = 74,
            frame_count = 2,
            shift = util.by_pixel(-0.25, -5),
            direction_count = 16,
            animation_speed = 0.3,
            scale = 0.5
        }
    },
    shadow_working = {
        filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 53,
        height = 25,
        frame_count = 1,
        repeat_count = 2,
        shift = util.by_pixel(33.5, 18.5),
        direction_count = 16,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 104,
            height = 49,
            frame_count = 1,
            repeat_count = 2,
            shift = util.by_pixel(33.5, 18.75),
            direction_count = 16,
            scale = 0.5,
            draw_as_shadow = true
        }
    }
}

robot_animations.distractor = {
    idle = {
        layers = {
            {
                filename = "__base__/graphics/entity/distractor-robot/distractor-robot.png",
                priority = "high",
                line_length = 16,
                width = 38,
                height = 33,
                frame_count = 1,
                direction_count = 16,
                shift = util.by_pixel(0, -2.5),
                hr_version = {
                    filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot.png",
                    priority = "high",
                    line_length = 16,
                    width = 72,
                    height = 62,
                    frame_count = 1,
                    direction_count = 16,
                    shift = util.by_pixel(0, -2.5),
                    scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/distractor-robot/distractor-robot-mask.png",
                priority = "high",
                line_length = 16,
                width = 24,
                height = 21,
                frame_count = 1,
                direction_count = 16,
                shift = util.by_pixel(0, -6.25),
                apply_runtime_tint = true,
                hr_version = {
                    filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot-mask.png",
                    priority = "high",
                    line_length = 16,
                    width = 42,
                    height = 37,
                    frame_count = 1,
                    direction_count = 16,
                    shift = util.by_pixel(0, -6.25),
                    apply_runtime_tint = true,
                    scale = 0.5
                }
            }
        }
    },
    shadow_idle = {
        filename = "__base__/graphics/entity/distractor-robot/distractor-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 49,
        height = 30,
        frame_count = 1,
        direction_count = 16,
        shift = util.by_pixel(32.5, 19),
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 96,
            height = 59,
            frame_count = 1,
            direction_count = 16,
            shift = util.by_pixel(32.5, 19.25),
            scale = 0.5,
            draw_as_shadow = true
        }
    },
    in_motion = {
        layers = {
            {
                filename = "__base__/graphics/entity/distractor-robot/distractor-robot.png",
                priority = "high",
                line_length = 16,
                width = 38,
                height = 33,
                frame_count = 1,
                direction_count = 16,
                shift = util.by_pixel(0, -2.5),
                y = 33,
                hr_version = {
                    filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot.png",
                    priority = "high",
                    line_length = 16,
                    width = 72,
                    height = 62,
                    frame_count = 1,
                    direction_count = 16,
                    shift = util.by_pixel(0, -2.5),
                    y = 62,
                    scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/distractor-robot/distractor-robot-mask.png",
                priority = "high",
                line_length = 16,
                width = 24,
                height = 21,
                frame_count = 1,
                direction_count = 16,
                shift = util.by_pixel(0, -6.25),
                apply_runtime_tint = true,
                y = 21,
                hr_version = {
                    filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot-mask.png",
                    priority = "high",
                    line_length = 16,
                    width = 42,
                    height = 37,
                    frame_count = 1,
                    direction_count = 16,
                    shift = util.by_pixel(0, -6.25),
                    apply_runtime_tint = true,
                    y = 37,
                    scale = 0.5
                }
            }
        }
    },
    shadow_in_motion = {
        filename = "__base__/graphics/entity/distractor-robot/distractor-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 49,
        height = 30,
        frame_count = 1,
        direction_count = 16,
        shift = util.by_pixel(32.5, 19),
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 96,
            height = 59,
            frame_count = 1,
            direction_count = 16,
            shift = util.by_pixel(32.5, 19.25),
            scale = 0.5,
            draw_as_shadow = true
        }
    }
}

robot_animations.defender = {
    idle = {
        layers = {
            {
                filename = "__base__/graphics/entity/defender-robot/defender-robot.png",
                priority = "high",
                line_length = 16,
                width = 32,
                height = 33,
                frame_count = 1,
                direction_count = 16,
                shift = util.by_pixel(0, 0.25),
                hr_version = {
                    filename = "__base__/graphics/entity/defender-robot/hr-defender-robot.png",
                    priority = "high",
                    line_length = 16,
                    width = 56,
                    height = 59,
                    frame_count = 1,
                    direction_count = 16,
                    shift = util.by_pixel(0, 0.25),
                    scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/defender-robot/defender-robot-mask.png",
                priority = "high",
                line_length = 16,
                width = 18,
                height = 16,
                frame_count = 1,
                direction_count = 16,
                shift = util.by_pixel(0, -4.75),
                apply_runtime_tint = true,
                hr_version = {
                    filename = "__base__/graphics/entity/defender-robot/hr-defender-robot-mask.png",
                    priority = "high",
                    line_length = 16,
                    width = 28,
                    height = 21,
                    frame_count = 1,
                    direction_count = 16,
                    shift = util.by_pixel(0, -4.75),
                    apply_runtime_tint = true,
                    scale = 0.5
                }
            }
        }
    },
    shadow_idle = {
        filename = "__base__/graphics/entity/defender-robot/defender-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 45,
        height = 26,
        frame_count = 1,
        direction_count = 16,
        shift = util.by_pixel(25.5, 19),
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/defender-robot/hr-defender-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 88,
            height = 50,
            frame_count = 1,
            direction_count = 16,
            shift = util.by_pixel(25.5, 19),
            scale = 0.5,
            draw_as_shadow = true
        }
    },
    in_motion = {
        layers = {
            {
                filename = "__base__/graphics/entity/defender-robot/defender-robot.png",
                priority = "high",
                line_length = 16,
                width = 32,
                height = 33,
                frame_count = 1,
                animation_speed = 1,
                direction_count = 16,
                shift = util.by_pixel(0, 0.25),
                y = 33,
                hr_version = {
                    filename = "__base__/graphics/entity/defender-robot/hr-defender-robot.png",
                    priority = "high",
                    line_length = 16,
                    width = 56,
                    height = 59,
                    frame_count = 1,
                    animation_speed = 1,
                    direction_count = 16,
                    shift = util.by_pixel(0, 0.25),
                    y = 59,
                    scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/defender-robot/defender-robot-mask.png",
                priority = "high",
                line_length = 16,
                width = 18,
                height = 16,
                frame_count = 1,
                animation_speed = 1,
                direction_count = 16,
                shift = util.by_pixel(0, -4.75),
                apply_runtime_tint = true,
                y = 16,
                hr_version = {
                    filename = "__base__/graphics/entity/defender-robot/hr-defender-robot-mask.png",
                    priority = "high",
                    line_length = 16,
                    width = 28,
                    height = 21,
                    frame_count = 1,
                    animation_speed = 1,
                    direction_count = 16,
                    shift = util.by_pixel(0, -4.75),
                    apply_runtime_tint = true,
                    y = 21,
                    scale = 0.5
                }
            }
        }
    },
    shadow_in_motion = {
        filename = "__base__/graphics/entity/defender-robot/defender-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 45,
        height = 26,
        frame_count = 1,
        animation_speed = 1,
        direction_count = 16,
        shift = util.by_pixel(25.5, 19),
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/defender-robot/hr-defender-robot-shadow.png",
            priority = "high",
            line_length = 16,
            width = 88,
            height = 50,
            frame_count = 1,
            animation_speed = 1,
            direction_count = 16,
            shift = util.by_pixel(25.5, 19),
            scale = 0.5,
            draw_as_shadow = true
        }
    }
}

robot_animations.destroyer = {
    idle = {
        layers = {
            {
                filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
                priority = "high",
                line_length = 32,
                width = 45,
                height = 39,
                y = 39,
                frame_count = 1,
                direction_count = 32,
                shift = util.by_pixel(2.5, -1.25),
                hr_version = {
                    filename = "__base__/graphics/entity/destroyer-robot/hr-destroyer-robot.png",
                    priority = "high",
                    line_length = 32,
                    width = 88,
                    height = 77,
                    y = 77,
                    frame_count = 1,
                    direction_count = 32,
                    shift = util.by_pixel(2.5, -1.25),
                    scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
                priority = "high",
                line_length = 32,
                width = 27,
                height = 21,
                y = 21,
                frame_count = 1,
                direction_count = 32,
                shift = util.by_pixel(2.5, -7),
                apply_runtime_tint = true,
                hr_version = {
                    filename = "__base__/graphics/entity/destroyer-robot/hr-destroyer-robot-mask.png",
                    priority = "high",
                    line_length = 32,
                    width = 52,
                    height = 42,
                    y = 42,
                    frame_count = 1,
                    direction_count = 32,
                    shift = util.by_pixel(2.5, -7),
                    apply_runtime_tint = true,
                    scale = 0.5
                }
            }
        }
    },
    shadow_idle = {
        filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
        priority = "high",
        line_length = 32,
        width = 55,
        height = 34,
        frame_count = 1,
        direction_count = 32,
        shift = util.by_pixel(23.5, 19),
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/destroyer-robot/hr-destroyer-robot-shadow.png",
            priority = "high",
            line_length = 32,
            width = 108,
            height = 66,
            frame_count = 1,
            direction_count = 32,
            shift = util.by_pixel(23.5, 19),
            scale = 0.5,
            draw_as_shadow = true
        }
    },
    in_motion = {
        layers = {
            {
                filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
                priority = "high",
                line_length = 32,
                width = 45,
                height = 39,
                frame_count = 1,
                direction_count = 32,
                shift = util.by_pixel(2.5, -1.25),
                hr_version = {
                    filename = "__base__/graphics/entity/destroyer-robot/hr-destroyer-robot.png",
                    priority = "high",
                    line_length = 32,
                    width = 88,
                    height = 77,
                    frame_count = 1,
                    direction_count = 32,
                    shift = util.by_pixel(2.5, -1.25),
                    scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
                priority = "high",
                line_length = 32,
                width = 27,
                height = 21,
                frame_count = 1,
                direction_count = 32,
                shift = util.by_pixel(2.5, -7),
                apply_runtime_tint = true,
                hr_version = {
                    filename = "__base__/graphics/entity/destroyer-robot/hr-destroyer-robot-mask.png",
                    priority = "high",
                    line_length = 32,
                    width = 52,
                    height = 42,
                    frame_count = 1,
                    direction_count = 32,
                    shift = util.by_pixel(2.5, -7),
                    apply_runtime_tint = true,
                    scale = 0.5
                }
            }
        }
    },
    shadow_in_motion = {
        filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
        priority = "high",
        line_length = 32,
        width = 55,
        height = 34,
        frame_count = 1,
        direction_count = 32,
        shift = util.by_pixel(23.5, 19),
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/destroyer-robot/hr-destroyer-robot-shadow.png",
            priority = "high",
            line_length = 32,
            width = 108,
            height = 66,
            frame_count = 1,
            direction_count = 32,
            shift = util.by_pixel(23.5, 19),
            scale = 0.5,
            draw_as_shadow = true
        }
    }
}
