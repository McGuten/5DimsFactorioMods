local newItem = table.deepcopy(data.raw["item"]["logistic-robot"])
local newRecipe = table.deepcopy(data.raw["recipe"]["logistic-robot"])
local newEntity = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])

newItem.name = "5d-logistic-robot-4"
newItem.place_result = "5d-logistic-robot-4"
newItem.icon = "__5dim_logistic__/graphics/icon/icon-5d-logistic-robot_4.png"
newItem.icon_size = 32
newItem.subgroup = "logistic-robot"
newItem.order = "b"

newRecipe.name = "5d-logistic-robot-4"
newRecipe.result = "5d-logistic-robot-4"
newRecipe.icon = "__5dim_logistic__/graphics/icon/icon-5d-logistic-robot_4.png"
newRecipe.icon_size = 32
newRecipe.enabled = false

newEntity.name = "5d-logistic-robot-4"
newEntity.icon = "__5dim_logistic__/graphics/icon/icon-5d-logistic-robot_4.png"
newEntity.icon_size = 32
newEntity.minable = {mining_time = 0.1, result = "5d-logistic-robot-4"}
newEntity.max_health = 200
newEntity.speed = 0.095
newEntity.max_energy = "6MJ"
newEntity.max_payload_size = 4

data:extend({newEntity, newItem, newRecipe})
