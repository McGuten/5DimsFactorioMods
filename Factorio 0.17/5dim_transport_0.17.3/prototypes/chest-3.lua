--WireConnectorDefinition
circuit_connector_definitions["5d-iron-chest-mk3"] = circuit_connector_definitions.create
(
  universal_connector_template,
  {
    { variation = 26, main_offset = util.by_pixel(20.5, 21), shadow_offset = util.by_pixel(20.5, 25.5), show_shadow = true },
  }
)
data:extend({
-- Item
  {
    type = "item",
    name = "5d-iron-chest-mk3",
    icon = "__5dim_transport__/graphics/icon/icon_5d_chest5_.png",
    -- flags = {"goes-to-quickbar"},
    icon_size = 32,
    subgroup = "store-solid",
    order = "g",
    place_result = "5d-iron-chest-mk3",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "5d-iron-chest-mk3",
    enabled = "false",
    ingredients = 
	{
		{"iron-chest", 4},
		{"iron-plate", 20},
	},
    result = "5d-iron-chest-mk3"
  },

--Entity
  {
    type = "container",
    name = "5d-iron-chest-mk3",
    icon = "__5dim_transport__/graphics/icon/icon_5d_chest5_.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "5d-iron-chest-mk3"},
    icon_size = 32,
    max_health = 500,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.85, -0.85}, {0.85, 0.85}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    fast_replaceable_group = "container",
    inventory_size = 128,
    picture =
    {
      filename = "__5dim_transport__/graphics/icon/icon_5d_chest5.png",
      priority = "extra-high",
      width = 96,
      height = 68,
      shift = {0.4, 0}
    },
    circuit_wire_connection_point = circuit_connector_definitions["5d-iron-chest-mk3"].points,
    circuit_connector_sprites = circuit_connector_definitions["5d-iron-chest-mk3"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
})