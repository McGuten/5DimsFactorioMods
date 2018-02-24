--add circuit connections
local circuit_wire_connection_point_5dim = circuit_connector_definitions["lamp"].points
local circuit_connector_sprites_5dim = nil
local circuit_wire_max_distance_5dim = default_circuit_wire_max_distance
--define signal color maping
local signal_to_color_mapping_5dim =
    {
      {type="virtual", name="signal-red", color={r=1,g=0,b=0}},
      {type="virtual", name="signal-green", color={r=0,g=1,b=0}},
      {type="virtual", name="signal-blue", color={r=0,g=0,b=1}},
      {type="virtual", name="signal-yellow", color={r=1,g=1,b=0}},
      {type="virtual", name="signal-pink", color={r=1,g=0,b=1}},
      {type="virtual", name="signal-cyan", color={r=0,g=1,b=1}},
    }
data:extend({
  {
    type = "tree",
    name = "5d-banner-1",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_banner1_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-banner-1"},
    icon_size = 32,
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    pictures =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_banner1.png",
      priority = "extra-high",
      width = 168,
      height = 165,
      shift = {1.5, -1.5}
    },
  },
  {
    type = "tree",
    name = "5d-banner-2",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_banner2_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-banner-2"},
    icon_size = 32,
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    pictures =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_banner2.png",
      priority = "extra-high",
      width = 168,
      height = 165,
      shift = {1.5, -1.5}
    },
  },
  {
    type = "tree",
    name = "5d-banner-3",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_banner3_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-banner-3"},
    icon_size = 32,
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    pictures =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_banner3.png",
      priority = "extra-high",
      width = 168,
      height = 165,
      shift = {1.5, -1.5}
    },
  },
  {
    type = "tree",
    name = "5d-obelisk",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_obelisk_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-obelisk"},
    icon_size = 32,
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    pictures =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_obelisk.png",
      priority = "extra-high",
      width = 168,
      height = 200,
      shift = {2.0, -2.5}
    },
  },
  {
    type = "tree",
    name = "5d-statue",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_statue_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-statue"},
    icon_size = 32,
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    pictures =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_statue.png",
      priority = "extra-high",
      width = 168,
      height = 165,
      shift = {1.5, -1.5}
    },
  },
  
  -----------------------LETTER---------------------------------
  
  {
    type = "lamp",
    name = "5d-letter-01",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter1_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-01"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter1.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter1.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-02",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter2_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-02"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter2.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter2.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-03",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter3_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-03"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter3.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter3.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-04",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter4_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-04"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter4.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter4.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-05",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter5_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-05"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter5.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter5.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-06",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter6_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-06"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter6.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter6.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-07",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter7_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-07"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter7.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter7.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-08",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter8_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-08"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter8.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter8.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-09",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter9_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-09"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter9.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter9.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-10",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter10_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-10"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter10.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter10.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-11",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter11_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-11"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter11.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter11.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-12",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter12_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-12"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter12.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter12.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-13",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter13_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-13"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter13.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter13.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-14",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter14_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-14"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter14.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter14.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-15",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter15_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-15"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter15.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter15.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-16",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter16_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-16"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter16.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter16.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-17",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter17_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-17"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter17.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter17.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-18",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter18_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-18"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter18.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter18.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-19",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter19_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-19"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter19.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter19.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-20",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter20_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-20"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter20.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter20.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-21",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter21_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-21"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter21.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter21.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-22",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter22_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-22"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter22.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter22.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-23",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter22_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-23"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter23.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter23.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-24",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter24_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-24"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter24.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter24.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-25",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter25_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-25"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter25.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter25.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-26",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter26_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-26"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter26.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter26.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-27",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter27_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-27"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter27.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter27.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-28",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter28_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-28"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter28.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter28.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-29",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter29_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-29"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter29.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter29.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-30",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter30_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-30"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter30.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter30.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-31",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter31_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-31"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter31.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter31.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-32",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter32_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-32"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter32.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter32.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-33",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter33_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-33"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter33.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter33.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-34",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter34_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-34"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter34.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter34.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-35",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter35_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-35"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter35.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter35.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-36",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter36_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-36"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter36.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter36.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-37",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter37_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-37"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter37.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter37.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-38",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter38_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-38"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter38.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter38.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-39",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter39_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-39"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter39.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter39.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-40",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter40_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-40"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter40.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter40.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-41",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter41_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-41"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter41.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter41.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-42",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter42_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-42"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter42.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter42.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-43",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter43_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-43"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter43.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter43.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-44",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter44_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-44"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter44.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter44.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-45",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter45_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-45"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter45.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter45.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-46",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter46_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-46"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter46.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter46.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-47",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter47_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-47"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter47.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter47.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-48",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter48_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-48"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter48.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter48.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-49",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter49_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-49"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter49.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter49.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-50",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter50_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-50"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter50.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter50.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-51",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter51_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-51"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter51.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter51.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-52",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter52_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-52"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter52.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter52.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-53",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter53_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-53"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter53.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter53.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-54",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter54_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-54"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter54.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter54.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-letter-55",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_letter55_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-letter-55"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter55.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_letter55.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  
  -----------------------ARROW---------------------------------
  
  {
    type = "lamp",
    name = "5d-arrow-1",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_arrow1_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-arrow-1"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow1.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow1.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-arrow-2",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_arrow2_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-arrow-2"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow2.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow2.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-arrow-3",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_arrow3_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-arrow-3"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow3.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow3.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  {
    type = "lamp",
    name = "5d-arrow-4",
    icon = "__5dim_decoration__/graphics/icon/icon_5d_arrow4_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "5d-arrow-4"},
    icon_size = 32,
    max_health = 55,
    corpse = "small-remnants",
    --collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "5KW",
    light = 
    {
      intensity = 0.9,
      size = 15
    },
    picture_off =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow4.png",
      priority = "high",
      width = 83,
      height = 75,
      shift = {0, -0.1}
    },
    picture_on =
    {
      filename = "__5dim_decoration__/graphics/icon/icon_5d_arrow4.png",
      priority = "high",
      width = 83,
      height = 75,
      x = 83,
      shift = {0, -0.1}
    },
    signal_to_color_mapping = signal_to_color_mapping_5dim,
    circuit_wire_connection_point = circuit_wire_connection_point_5dim,
    circuit_connector_sprites = circuit_connector_sprites_5dim,
    circuit_wire_max_distance = circuit_wire_max_distance_5dim
  },
  
  -----------------------ICON---------------------------------
})