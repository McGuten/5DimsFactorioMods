data:extend({
--Item
{
    type = "item-with-entity-data", 
    name = "5d-cargo-wagon-3", 
    icon = "__5dim_trains__/graphics/cargo-wagon3.png", 
    flags = {"goes-to-quickbar"}, 
    icon_size = 32,
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
        {"5d-cargo-wagon-2", 1}, 
        {"iron-gear-wheel", 5}, 
        {"iron-plate", 10}, 
        {"steel-plate", 10}
    }, 
    result = "5d-cargo-wagon-3"
}, 
--Entity 
{
    type = "cargo-wagon", 
    name = "5d-cargo-wagon-3", 
    icon = "__5dim_trains__/graphics/cargo-wagon3.png", 
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"}, 
    icon_size = 32,
    inventory_size = 120, 
    fast_replaceable_group = "cargo-wagon",
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
                width = 512, 
                height = 512,
                scale = 0.5, 
                back_equals_front = true, 
                direction_count = 64, 
                filenames = 
                {
                    "__5dim_trains__/graphics/wagon/4aw_cw_5dim_b_sheet-0.png", 
                    "__5dim_trains__/graphics/wagon/4aw_cw_5dim_b_sheet-1.png", 
                    "__5dim_trains__/graphics/wagon/4aw_cw_5dim_b_sheet-2.png", 
                    "__5dim_trains__/graphics/wagon/4aw_cw_5dim_b_sheet-3.png"
                }, 
                line_length = 4, 
                lines_per_file = 4, 
                shift = {0.42, -1.125},
                {
                    flags = { "shadow" }, 
                    priority = "very-low", 
                    width = 246, 
                    height = 201, 
                    back_equals_front = true, 
                    draw_as_shadow = true, 
                    direction_count = 64, 
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
                },
            }, 
        },
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