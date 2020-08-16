local newItem = table.deepcopy(data.raw["item"]["logistic-robot"])
local newRecipe = table.deepcopy(data.raw["recipe"]["logistic-robot"])
local newEntity = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])

newItem.name = "5d-logistic-robot-2"
newItem.place_result = "5d-logistic-robot-2"
newItem.icon = "__5dim_logistic__/graphics/icon/icon-5d-logistic-robot_.png"
newItem.icon_size = 32
newItem.subgroup = "logistic-robot"
newItem.order = "b"

newRecipe.name = "5d-logistic-robot-2"
newRecipe.result = "5d-logistic-robot-2"
newRecipe.icon = "__5dim_logistic__/graphics/icon/icon-5d-logistic-robot_.png"
newRecipe.icon_size = 32
newRecipe.enabled = false
newRecipe.ingredients = {
    {"logistic-robot", 1},
    {"advanced-circuit", 2}
}

newEntity.name = "5d-logistic-robot-2"
newEntity.icon = "__5dim_logistic__/graphics/icon/icon-5d-logistic-robot_.png"
newEntity.icon_size = 32
newEntity.minable = {mining_time = 0.1, result = "5d-logistic-robot-2"}
newEntity.max_health = 125
newEntity.speed = 0.065
newEntity.max_energy = "3MJ"
newEntity.max_payload_size = 2

data:extend({newEntity, newItem, newRecipe})
