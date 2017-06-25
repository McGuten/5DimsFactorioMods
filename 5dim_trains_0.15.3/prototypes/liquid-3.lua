data:extend({
    --Item
    {
        type = "item-with-entity-data", 
        name = "5d-fluid-wagon-3", 
        icon = "__base__/graphics/icons/fluid-wagon.png", 
        flags = {"goes-to-quickbar"}, 
        subgroup = "trains-liquids", 
        order = "c", 
        place_result = "5d-fluid-wagon-3", 
        stack_size = 5
        }, 
    --Recipe
    {
        type = "recipe", 
        name = "5d-fluid-wagon-3", 
        enabled = false, 
        energy_required = 1.5, 
        ingredients = 
        {
            {"iron-gear-wheel", 10}, 
            {"steel-plate", 16}, 
            {"pipe", 8}, 
            {"storage-tank", 3}
                }, 
        result = "5d-fluid-wagon-3"
        }, 
    --Entity 
    {
        type = "fluid-wagon", 
        name = "5d-fluid-wagon-3", 
        icon = "__base__/graphics/icons/fluid-wagon.png", 
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"}, 
        minable = {mining_time = 1, result = "5d-fluid-wagon-3"}, 
        mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"}, 
        max_health = 600, 
        total_capacity = 75000 * 3, 
        corpse = "medium-remnants", 
        dying_explosion = "medium-explosion", 
        collision_box = {{ - 0.6, - 2.4}, {0.6, 2.4}}, 
        selection_box = {{ - 1, - 2.703125}, {1, 3.296875}}, 
        gui_front_tank = 
        {
            filename = "__base__/graphics/entity/fluid-wagon/gui/front-tank.png", 
            width = 64, 
            height = 64, 
            flags = {"icon"}
                }, 
        gui_center_tank = 
        {
            filename = "__base__/graphics/entity/fluid-wagon/gui/center-tank.png", 
            width = 64, 
            height = 64, 
            flags = {"icon"}
                }, 
        gui_back_tank = 
        {
            filename = "__base__/graphics/entity/fluid-wagon/gui/back-tank.png", 
            width = 64, 
            height = 64, 
            flags = {"icon"}
                }, 
        gui_connect_front_center_tank = 
        {
            filename = "__base__/graphics/entity/fluid-wagon/gui/connector-front-center.png", 
            width = 64, 
            height = 64, 
            flags = {"icon"}
                }, 
        gui_connect_center_back_tank = 
        {
            filename = "__base__/graphics/entity/fluid-wagon/gui/connector-center-back.png", 
            width = 64, 
            height = 64, 
            flags = {"icon"}
                }, 
        gui_front_center_tank_indiciation = 
        {
            filename = "__base__/graphics/entity/fluid-wagon/gui/1.png", 
            width = 32, 
            height = 32, 
            flags = {"icon"}
                }, 
        gui_center_back_tank_indiciation = 
        {
            filename = "__base__/graphics/entity/fluid-wagon/gui/2.png", 
            width = 32, 
            height = 32, 
            flags = {"icon"}
                }, 
        vertical_selection_shift = - 0.796875, 
        weight = 3000, 
        max_speed = 1.5, 
        braking_force = 3, 
        friction_force = 0.50, 
        air_resistance = 0.01, 
        connection_distance = 3, 
        joint_distance = 4, 
        energy_per_hit_point = 6, 
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
                    width = 208, 
                    height = 210, 
                    back_equals_front = true, 
                    direction_count = 128, 
                    filenames = 
                    {
                        "__base__/graphics/entity/fluid-wagon/fluid-wagon-1.png", 
                        "__base__/graphics/entity/fluid-wagon/fluid-wagon-2.png", 
                        "__base__/graphics/entity/fluid-wagon/fluid-wagon-3.png", 
                        "__base__/graphics/entity/fluid-wagon/fluid-wagon-4.png"
                                        }, 
                    line_length = 4, 
                    lines_per_file = 8, 
                    shift = {0 + 0.013, - 1 + 0.077}, 
                    hr_version = 
                    {
                        priority = "very-low", 
                        width = 416, 
                        height = 419, 
                        back_equals_front = true, 
                        direction_count = 128, 
                        filenames = 
                        {
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-1.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-2.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-3.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-4.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-5.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-6.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-7.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-8.png"
                                                }, 
                        line_length = 4, 
                        lines_per_file = 4, 
                        shift = {0 + 0.013, - 1 + 0.077}, 
                        scale = 0.5
                                        }
                                }, 
                {
                    flags = { "shadow" }, 
                    priority = "very-low", 
                    width = 251, 
                    height = 188, 
                    back_equals_front = true, 
                    draw_as_shadow = true, 
                    direction_count = 128, 
                    filenames = 
                    {
                        "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-1.png", 
                        "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-2.png", 
                        "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-3.png", 
                        "__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow-4.png"
                                        }, 
                    line_length = 4, 
                    lines_per_file = 8, 
                    shift = {0.875 + 0.013, 0.3125 + 0.077}, 
                    hr_version = 
                    {
                        flags = { "shadow" }, 
                        priority = "very-low", 
                        width = 501, 
                        height = 375, 
                        back_equals_front = true, 
                        draw_as_shadow = true, 
                        direction_count = 128, 
                        filenames = 
                        {
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-1.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-2.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-3.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-4.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-5.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-6.png", 
                            "__base__/graphics/entity/fluid-wagon/hr-fluid-wagon-shadow-7.png"
                                                }, 
                        line_length = 4, 
                        lines_per_file = 5, 
                        shift = {0.875 + 0.013, 0.3125 + 0.077}, 
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
        sound_minimum_speed = 0.5;
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
        }, 
})