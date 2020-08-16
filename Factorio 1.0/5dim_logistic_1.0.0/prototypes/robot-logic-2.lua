local newItem = table.deepcopy(data.raw["item"]["logistic-robot"])
local newRecipe = table.deepcopy(data.raw["recipe"]["logistic-robot"])
local newEntity = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])

newItem.name = "5d-logistic-robot-3"
newItem.place_result = "5d-logistic-robot-3"
newItem.icon = "__5dim_logistic__/graphics/icon/icon-5d-logistic-robot_3.png"
newItem.icon_size = 32
newItem.subgroup = "logistic-robot"
newItem.order = "b"

newRecipe.name = "5d-logistic-robot-3"
newRecipe.result = "5d-logistic-robot-3"
newRecipe.icon = "__5dim_logistic__/graphics/icon/icon-5d-logistic-robot_3.png"
newRecipe.icon_size = 32
newRecipe.enabled = false
newRecipe.ingredients = {
    {"5d-logistic-robot-2", 1},
    {"advanced-circuit", 2}
}

newEntity.name = "5d-logistic-robot-3"
newEntity.icon = "__5dim_logistic__/graphics/icon/icon-5d-logistic-robot_3.png"
newEntity.icon_size = 32
newEntity.minable = {mining_time = 0.1, result = "5d-logistic-robot-3"}
newEntity.max_health = 150
newEntity.speed = 0.08
newEntity.max_energy = "4.5MJ"
newEntity.max_payload_size = 3

data:extend({newEntity, newItem, newRecipe})
