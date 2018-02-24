table.insert(data.raw.technology["logistics"].effects,{type = "unlock-recipe", recipe = "5d-mk1-transport-belt-to-ground-30"})
table.insert(data.raw.technology["logistics"].effects,{type = "unlock-recipe", recipe = "5d-mk1-transport-belt-to-ground-50"})
table.insert(data.raw.technology["logistics"].effects,{type = "unlock-recipe", recipe = "5d-pipe-to-ground-mk1-30"})
table.insert(data.raw.technology["logistics"].effects,{type = "unlock-recipe", recipe = "5d-pipe-to-ground-mk1-50"})

table.insert(data.raw.technology["logistics-2"].effects,{type = "unlock-recipe", recipe = "5d-mk2-transport-belt-to-ground-30"})
table.insert(data.raw.technology["logistics-2"].effects,{type = "unlock-recipe", recipe = "5d-mk2-transport-belt-to-ground-50"})
table.insert(data.raw.technology["logistics-2"].effects,{type = "unlock-recipe", recipe = "5d-pipe-mk2"})
table.insert(data.raw.technology["logistics-2"].effects,{type = "unlock-recipe", recipe = "5d-pipe-to-ground-mk2"})
table.insert(data.raw.technology["logistics-2"].effects,{type = "unlock-recipe", recipe = "5d-pipe-to-ground-mk2-30"})
table.insert(data.raw.technology["logistics-2"].effects,{type = "unlock-recipe", recipe = "5d-pipe-to-ground-mk2-50"})
  
table.insert(data.raw.technology["logistics-3"].effects,{type = "unlock-recipe", recipe = "5d-mk3-transport-belt-to-ground-30"})
table.insert(data.raw.technology["logistics-3"].effects,{type = "unlock-recipe", recipe = "5d-mk3-transport-belt-to-ground-50"})
table.insert(data.raw.technology["logistics-3"].effects,{type = "unlock-recipe", recipe = "5d-pipe-mk3"})
table.insert(data.raw.technology["logistics-3"].effects,{type = "unlock-recipe", recipe = "5d-pipe-to-ground-mk3"})
table.insert(data.raw.technology["logistics-3"].effects,{type = "unlock-recipe", recipe = "5d-pipe-to-ground-mk3-30"})
table.insert(data.raw.technology["logistics-3"].effects,{type = "unlock-recipe", recipe = "5d-pipe-to-ground-mk3-50"})
  
data:extend({
  {
    type = "technology",
    name = "logistics-4",
    icon = "__base__/graphics/technology/logistics.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-mk4-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-mk4-transport-belt-to-ground"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-mk4-transport-belt-to-ground-30"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-mk4-transport-belt-to-ground-50"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-mk4-splitter"
      }
    },
    prerequisites = {"logistics-3"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    order = "a-f-c",
  },
  {
    type = "technology",
    name = "logistics-5",
    icon = "__base__/graphics/technology/logistics.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-mk5-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-mk5-transport-belt-to-ground"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-mk5-transport-belt-to-ground-30"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-mk5-transport-belt-to-ground-50"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-mk5-splitter"
      }
    },
    prerequisites = {"logistics-4"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    order = "a-f-c",
  },
  {
    type = "technology",
    name = "storage",
    icon = "__5dim_transport__/graphics/icon/storage.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-iron-chest-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-iron-chest-mk2-2"
      },
    },
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 30
    },
    order = "a-f-c",
  },
  {
    type = "technology",
    name = "storage-2",
    icon = "__5dim_transport__/graphics/icon/storage.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-iron-chest-mk3"
      },
    },
    prerequisites = {"storage"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "a-f-c",
  },
  {
    type = "technology",
    name = "storage-3",
    icon = "__5dim_transport__/graphics/icon/storage.png",
	icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-iron-chest-mk2-3"
      },
    },
    prerequisites = {"storage-2"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "a-f-c",
  },
  {
    type = "technology",
    name = "fluid-handling-2",
    icon = "__base__/graphics/technology/fluid-handling.png",
    icon_size = 128, 
    prerequisites = {"oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-storage-tank"
      }
    },
    prerequisites = {"fluid-handling"},
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 30
    },
    order = "d-a-a"
  },
})