data:extend({
    --Item
    {
        type = "item-with-entity-data", 
        name = "5d-cargo-wagon-3", 
        icon = "__base__/graphics/icons/cargo-wagon.png", 
        flags = {"goes-to-quickbar"}, 
        subgroup = "trains-wagons", 
        order = "c", 
        place_result = "5d-cargo-wagon-3", 
        stack_size = 5
        }, 
    --Recipe
    {
        type = "recipe", 
        name = "5d-cargo-wagon-3", 
        enabled = false, 
        ingredients = 
        {
            {"iron-gear-wheel", 10}, 
            {"iron-plate", 20}, 
            {"steel-plate", 20}
                }, 
        result = "5d-cargo-wagon-3"
        }, 
    --Entity 
    {
        type = "cargo-wagon", 
        name = "5d-cargo-wagon-3", 
        icon = "__base__/graphics/icons/cargo-wagon.png", 
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"}, 
        inventory_size = 120, 
        minable = {mining_time = 1, result = "5d-cargo-wagon-3"}, 
        mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"}, 
        max_health = 600, 
        corpse = "medium-remnants", 
        dying_explosion = "medium-explosion", 
        collision_box = {{ - 0.6, - 2.4}, {0.6, 2.4}}, 
        selection_box = {{ - 1, - 2.703125}, {1, 3.296875}}, 
        vertical_selection_shift = - 0.796875, 
        weight = 1000, 
        max_speed = 1.5, 
        braking_force = 3, 
        friction_force = 0.50, 
        air_resistance = 0.01, 
        connection_distance = 3, 
        joint_distance = 4, 
        energy_per_hit_point = 5, 
        resistances = 
        {
            {
                type = "fire", 
                decrease = 15, 
                percent = 50
                        }, 
            {
                type = "physical", 
                decrease = 15, 
                percent = 30
                        }, 
            {
                type = "impact", 
                decrease = 50, 
                percent = 60
                        }, 
            {
                type = "explosion", 
                decrease = 15, 
                percent = 30
                        }, 
            {
                type = "acid", 
                decrease = 10, 
                percent = 20
                        }
                }, 
        back_light = rolling_stock_back_light(), 
        stand_by_light = rolling_stock_stand_by_light(), 
        color = {r = 0.43, g = 0.23, b = 0, a = 0.5}, 
        pictures = 
        {
            layers = 
            {
                {
                    priority = "very-low", 
                    width = 222, 
                    height = 205, 
                    back_equals_front = true, 
                    direction_count = 128, 
                    filenames = 
                    {
                        "__base__/graphics/entity/cargo-wagon/cargo-wagon-1.png", 
                        "__base__/graphics/entity/cargo-wagon/cargo-wagon-2.png", 
                        "__base__/graphics/entity/cargo-wagon/cargo-wagon-3.png", 
                        "__base__/graphics/entity/cargo-wagon/cargo-wagon-4.png"
                                        }, 
                    line_length = 4, 
                    lines_per_file = 8, 
                    shift = {0, - 0.796875}, 
                    hr_version = 
                    {
                        priority = "very-low", 
                        width = 442, 
                        height = 407, 
                        back_equals_front = true, 
                        direction_count = 128, 
                        filenames = 
                        {
                            "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-1.png", 
                            "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-2.png", 
                            "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-3.png", 
                            "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-4.png"
                                                }, 
                        line_length = 4, 
                        lines_per_file = 8, 
                        shift = util.by_pixel(0, - 25.25), 
                        scale = 0.5
                                        }
                                }, 
                {
                    flags = { "mask" }, 
                    priority = "very-low", 
                    width = 196, 
                    height = 174, 
                    direction_count = 128, 
                    back_equals_front = true, 
                    apply_runtime_tint = true, 
                    shift = {0, - 1.125}, 
                    filenames = 
                    {
                        "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-1.png", 
                        "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-2.png", 
                        "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-3.png"
                                        }, 
                    line_length = 4, 
                    lines_per_file = 11, 
                    hr_version = 
                    {
                        flags = { "mask" }, 
                        priority = "very-low", 
                        width = 406, 
                        height = 371, 
                        direction_count = 128, 
                        back_equals_front = true, 
                        apply_runtime_tint = true, 
                        shift = util.by_pixel( - 0.5, - 30.25), 
                        filenames = 
                        {
                            "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-mask-1.png", 
                            "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-mask-2.png", 
                            "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-mask-3.png"
                                                }, 
                        line_length = 4, 
                        lines_per_file = 11, 
                        scale = 0.5
                                        }
                                }, 
                {
                    flags = { "shadow" }, 
                    priority = "very-low", 
                    width = 246, 
                    height = 201, 
                    back_equals_front = true, 
                    draw_as_shadow = true, 
                    direction_count = 128, 
                    filenames = 
                    {
                        "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-1.png", 
                        "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-2.png", 
                        "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-3.png", 
                        "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-4.png"
                                        }, 
                    line_length = 4, 
                    lines_per_file = 8, 
                    shift = {0.8, - 0.078125}, 
                    hr_version = 
                    {
                        flags = { "shadow" }, 
                        priority = "very-low", 
                        width = 490, 
                        height = 401, 
                        back_equals_front = true, 
                        draw_as_shadow = true, 
                        direction_count = 128, 
                        filenames = 
                        {
                            "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-shadow-1.png", 
                            "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-shadow-2.png", 
                            "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-shadow-3.png", 
                            "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-shadow-4.png"
                                                }, 
                        line_length = 4, 
                        lines_per_file = 8, 
                        shift = util.by_pixel(32, - 2.25), 
                        scale = 0.5
                                        }
                                }
                        }
                }, 
        horizontal_doors = 
        {
            layers = 
            {
                {
                    filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-end.png", 
                    line_length = 1, 
                    width = 220, 
                    height = 33, 
                    frame_count = 8, 
                    shift = {0, - 0.921875}, 
                    hr_version = 
                    {
                        filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-horizontal-end.png", 
                        line_length = 1, 
                        width = 438, 
                        height = 63, 
                        frame_count = 8, 
                        shift = util.by_pixel(0, - 29.25), 
                        scale = 0.5
                                        }
                                }, 
                {
                    filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side.png", 
                    line_length = 1, 
                    width = 186, 
                    height = 38, 
                    frame_count = 8, 
                    shift = {0, - 0.78125}, 
                    hr_version = 
                    {
                        filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-horizontal-side.png", 
                        line_length = 1, 
                        width = 368, 
                        height = 76, 
                        frame_count = 8, 
                        shift = util.by_pixel(0, - 24.5), 
                        scale = 0.5
                                        }
                                }, 
                {
                    filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side-mask.png", 
                    width = 182, 
                    height = 35, 
                    line_length = 1, 
                    frame_count = 8, 
                    shift = {0, - 0.828125}, 
                    apply_runtime_tint = true, 
                    hr_version = 
                    {
                        filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-horizontal-side-mask.png", 
                        width = 320, 
                        height = 69, 
                        line_length = 1, 
                        frame_count = 8, 
                        shift = util.by_pixel(0, - 26.25), 
                        apply_runtime_tint = true, 
                        scale = 0.5
                                        }
                                }, 
                {
                    filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top.png", 
                    line_length = 1, 
                    width = 184, 
                    height = 28, 
                    frame_count = 8, 
                    shift = {0.015625, - 1.125}, 
                    hr_version = 
                    {
                        filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-horizontal-top.png", 
                        line_length = 1, 
                        width = 369, 
                        height = 54, 
                        frame_count = 8, 
                        shift = util.by_pixel(0.75, - 35.5), 
                        scale = 0.5
                                        }
                                }, 
                {
                    filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top-mask.png", 
                    width = 185, 
                    height = 23, 
                    frame_count = 8, 
                    line_length = 1, 
                    shift = {0.015625, - 1.17188}, 
                    apply_runtime_tint = true, 
                    hr_version = 
                    {
                        filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-horizontal-top-mask.png", 
                        width = 369, 
                        height = 45, 
                        frame_count = 8, 
                        line_length = 1, 
                        shift = util.by_pixel(0.75, - 37.75), 
                        apply_runtime_tint = true, 
                        scale = 0.5
                                        }
                                }
                        }
                }, 
        vertical_doors = 
        {
            layers = 
            {
                {
                    filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-end.png", 
                    line_length = 8, 
                    width = 30, 
                    height = 23, 
                    frame_count = 8, 
                    shift = util.by_pixel(0, 62.5), 
                    hr_version = 
                    {
                        filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-vertical-end.png", 
                        line_length = 8, 
                        width = 58, 
                        height = 44, 
                        frame_count = 8, 
                        shift = util.by_pixel(0, 62.5),           -- 241),--62.5+178.5),
                        scale = 0.5
                                        }
                                }, 
                {
                    filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side.png", 
                    line_length = 8, 
                    width = 67, 
                    height = 169, 
                    frame_count = 8, 
                    shift = {0.015625, - 1.01563}, 
                    hr_version = 
                    {
                        filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-vertical-side.png", 
                        line_length = 8, 
                        width = 127, 
                        height = 337, 
                        frame_count = 8, 
                        shift = util.by_pixel(0.25, - 32.75), 
                        scale = 0.5
                                        }
                                }, 
                {
                    filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side-mask.png", 
                    line_length = 8, 
                    width = 56, 
                    height = 163, 
                    frame_count = 8, 
                    shift = {0, - 1.10938}, 
                    apply_runtime_tint = true, 
                    hr_version = 
                    {
                        filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-vertical-side-mask.png", 
                        line_length = 8, 
                        width = 112, 
                        height = 326, 
                        frame_count = 8, 
                        shift = util.by_pixel(0, - 35.5), 
                        apply_runtime_tint = true, 
                        scale = 0.5
                                        }
                                }, 
                {
                    filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top.png", 
                    line_length = 8, 
                    width = 32, 
                    height = 168, 
                    frame_count = 8, 
                    shift = {0, - 1.125}, 
                    hr_version = 
                    {
                        filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-vertical-top.png", 
                        line_length = 8, 
                        width = 64, 
                        height = 337, 
                        frame_count = 8, 
                        shift = util.by_pixel(0, - 35.75), 
                        scale = 0.5
                                        }
                                }, 
                {
                    filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top-mask.png", 
                    line_length = 8, 
                    width = 32, 
                    height = 166, 
                    frame_count = 8, 
                    shift = {0, - 1.15625}, 
                    apply_runtime_tint = true, 
                    hr_version = 
                    {
                        filename = "__base__/graphics/entity/cargo-wagon/hr-cargo-wagon-door-vertical-top-mask.png", 
                        line_length = 8, 
                        width = 64, 
                        height = 332, 
                        frame_count = 8, 
                        shift = util.by_pixel(0, - 37), 
                        apply_runtime_tint = true, 
                        scale = 0.5
                                        }
                                }
                        }
                }, 
        wheels = standard_train_wheels, 
        rail_category = "regular", 
        drive_over_tie_trigger = drive_over_tie(), 
        tie_distance = 50, 
        working_sound = 
        {
            sound = 
            {
                filename = "__base__/sound/train-wheels.ogg", 
                volume = 0.6
                        }, 
            match_volume_to_activity = true, 
                }, 
        crash_trigger = crash_trigger(), 
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }, 
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }, 
        sound_minimum_speed = 0.5;
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
        }, 
})