data:extend({
-- Item
  {
    type = "item",
    name = "5d-welder",
    icon = "__5dim_module__/graphics/icon/5dim_icon_welder_.png",
    flags = {"goes-to-quickbar"},
    subgroup = "welder",
    order = "a",
    place_result = "5d-welder",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-welder",
    enabled = false,
    ingredients =
    {
      {"iron-plate", 10},
      {"electronic-circuit", 3},
      {"iron-gear-wheel", 5},
      {"assembling-machine-1", 1}
    },
    result = "5d-welder"
  },

--Entity
  {
    type = "assembling-machine",
    name = "5d-welder",
    icon = "__5dim_module__/graphics/icon/5dim_icon_welder_.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-welder"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "welder",
    animation =
    {
      filename = "__5dim_module__/graphics/icon/welder.png",
      priority = "high",
      width = 142,
      height = 113,
      frame_count = 32,
      line_length = 8,
      shift = {0.84, -0.09}
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"welding"},
    crafting_speed = 1,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "150kW",
    ingredient_count = 6,
    module_specification =
    {
      module_slots = 5
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
})