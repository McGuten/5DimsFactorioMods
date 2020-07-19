local newEntity = table.deepcopy(data.raw["logistic-container"]["logistic-chest-requester"])
newEntity.name = "5d-logistic-chest-botRecaller"
newEntity.icon = "__5dim_botrecaller__/graphics/icon.png"
newEntity.minable = {hardness = 0.2, mining_time = 0.5, result = "5d-logistic-chest-botRecaller"}
newEntity.picture.filename = "__5dim_botrecaller__/graphics/entity.png"

local newItem = table.deepcopy(data.raw["item"]["logistic-chest-requester"])
newItem.name = "5d-logistic-chest-botRecaller"
newItem.place_result = "5d-logistic-chest-botRecaller"
newItem.icon = newEntity.icon
newItem.subgroup = "logistic-util"
newItem.order = "a"

local newRecipe = table.deepcopy(data.raw["recipe"]["roboport"])
newRecipe.name = "5d-logistic-chest-botRecaller"
newRecipe.result = "5d-logistic-chest-botRecaller"
newRecipe.icon = newEntity.icon
newRecipe.enabled = false
newRecipe.icon_size = 32

data:extend({newEntity, newItem, newRecipe})

table.insert(data.raw["technology"]["construction-robotics"].effects,{type = "unlock-recipe",recipe = "5d-logistic-chest-botRecaller"})
