local newEntity = table.deepcopy(data.raw["logistic-container"]["logistic-chest-requester"])
local newItem = table.deepcopy(data.raw["item"]["logistic-chest-requester"])
local newRecipe = table.deepcopy(data.raw["recipe"]["roboport"])

newEntity.name = "5d-logistic-chest-botRecaller"
newEntity.icon = "__5dim_botrecaller__/graphics/icon.png"
newEntity.icon_size = 32
newEntity.minable = {hardness = 0.2, mining_time = 0.5, result = "5d-logistic-chest-botRecaller"}

newItem.name = "5d-logistic-chest-botRecaller"
newItem.place_result = "5d-logistic-chest-botRecaller"
newItem.icon = newEntity.icon
newItem.icon_size = 32
newItem.subgroup = "logistic-util"
newItem.order = "a"

newRecipe.name = "5d-logistic-chest-botRecaller"
newRecipe.result = "5d-logistic-chest-botRecaller"
newRecipe.icon = newEntity.icon
newRecipe.icon_size = 32
newRecipe.enabled = false

data:extend({newEntity, newItem, newRecipe})

table.insert(
    data.raw["technology"]["construction-robotics"].effects,
    {type = "unlock-recipe", recipe = "5d-logistic-chest-botRecaller"}
)
