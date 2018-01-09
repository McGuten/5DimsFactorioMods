data:extend({
    --Item
    {
        type = "item-with-entity-data", 
        name = "5d-locomotive-hs", 
        icon = "__5dim_trains__/graphics/diesel-locomotive2.png", 
        flags = {"goes-to-quickbar"}, 
    icon_size = 32,
        subgroup = "trains-locomotive", 
        order = "b", 
        place_result = "5d-locomotive-hs", 
        stack_size = 5
        }, 
    --Recipe
    {
        type = "recipe", 
        name = "5d-locomotive-hs", 
        enabled = false, 
        ingredients = 
        {
            {"engine-unit", 20}, 
            {"electronic-circuit", 10}, 
            {"steel-plate", 30}, 
                }, 
        result = "5d-locomotive-hs"
        }, 
    
    --Entity 
    {
        type = "locomotive", 
        name = "5d-locomotive-hs", 
        icon = "__5dim_trains__/graphics/diesel-locomotive2.png", 
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"}, 
        minable = {mining_time = 1, result = "5d-locomotive-hs"}, 
    icon_size = 32,
        mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"}, 
        max_health = 1000, 
        fast_replaceable_group = "locomotive",
        corpse = "medium-remnants", 
        dying_explosion = "medium-explosion", 
        collision_box = {{ - 0.6, - 2.6}, {0.6, 2.6}}, 
        selection_box = {{ - 1, - 3}, {1, 3}}, 
        drawing_box = {{ - 1, - 4}, {1, 3}}, 
        weight = 2000, 
        max_speed = 2, 
        max_power = "600kW", 
        reversing_power_modifier = 0.6, 
        braking_force = 10, 
        friction_force = 0.50, 
        vertical_selection_shift = - 0.5, 
        air_resistance = 0.0075,         -- this is a percentage of current speed that will be subtracted
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
    burner =
    {
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "train-smoke",
          deviation = {0.3, 0.3},
          frequency = 100,
          position = {0, 0},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
    },
    front_light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -16},
        size = 2,
        intensity = 0.6,
        color = {r = 1.0, g = 0.9, b = 0.9}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -16},
        size = 2,
        intensity = 0.6,
        color = {r = 1.0, g = 0.9, b = 0.9}
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          slice = 4,
          priority = "very-low",
          width = 512,
          height = 512,
          scale = 0.5,
          direction_count = 128,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__5dim_trains__/graphics/speed/5dim_bullet_b_sheet-0.png",
            "__5dim_trains__/graphics/speed/5dim_bullet_b_sheet-1.png",
            "__5dim_trains__/graphics/speed/5dim_bullet_b_sheet-2.png",
            "__5dim_trains__/graphics/speed/5dim_bullet_b_sheet-3.png",
            "__5dim_trains__/graphics/speed/5dim_bullet_b_sheet-4.png",
            "__5dim_trains__/graphics/speed/5dim_bullet_b_sheet-5.png",
            "__5dim_trains__/graphics/speed/5dim_bullet_b_sheet-6.png",
            "__5dim_trains__/graphics/speed/5dim_bullet_b_sheet-7.png",
          },
          line_length = 4,
          lines_per_file = 4,
          shift = {0.0, -0.5},
        },
    wheels = standard_train_wheels,
    rail_category = "regular",
    stop_trigger =
    {
      -- left side
      {
        type = "create-trivial-smoke",
        repeat_count = 125,
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the left
        speed = {-0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
      },
      -- right side
      {
        type = "create-trivial-smoke",
        repeat_count = 125,
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the right
        speed = {0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
      },
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/train-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5;
  },
})
