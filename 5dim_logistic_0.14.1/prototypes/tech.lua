data:extend({
  {
    type = "technology",
    name = "robots-2",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-roboport-2"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-logistic-robot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-construction-robot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-construction-robot-p"
      },
    },
    prerequisites = {"robotics", "flying", "construction-robotics", "logistic-robotics"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-k-a",
  },
  {
    type = "technology",
    name = "robots-3",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-logistic-robot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-construction-robot-3"
      },
    },
    prerequisites = {"robots-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-k-a",
  },
  {
    type = "technology",
    name = "robots-4",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-logistic-robot-4"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-construction-robot-4"
      },
    },
    prerequisites = {"robots-3"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-a",
  },
  {
    type = "technology",
    name = "character-logistic-slots-5",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 5
      }
    },
    prerequisites = {"character-logistic-slots-4"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-e-d"
  },
  {
    type = "technology",
    name = "character-logistic-slots-6",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 5
      }
    },
    prerequisites = {"character-logistic-slots-5"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-e-d"
  },
  {
    type = "technology",
    name = "character-logistic-slots-7",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 5
      }
    },
    prerequisites = {"character-logistic-slots-6"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-e-d"
  },
  {
    type = "technology",
    name = "character-logistic-slots-8",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 5
      }
    },
    prerequisites = {"character-logistic-slots-7"},
    unit =
    {
      count = 350,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-e-d"
  },
  {
    type = "technology",
    name = "character-logistic-slots-9",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 5
      }
    },
    prerequisites = {"character-logistic-slots-8"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-e-d"
  },
  {
    type = "technology",
    name = "character-logistic-slots-10",
    icon = "__base__/graphics/technology/character-logistic-slots.png",
    effects =
    {
      {
        type = "character-logistic-slots",
        modifier = 5
      }
    },
    prerequisites = {"character-logistic-slots-9"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "c-k-e-d"
  },
  {
    type = "technology",
    name = "logistic-system-2",
    icon = "__base__/graphics/technology/logistic-system.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-active"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-requester"
      }
    },
    prerequisites = { "logistic-system"},
    unit = {
      count = 150,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "c-k-d",
  },
  {
    type = "technology",
    name = "construction-robotics-2",
    icon = "__base__/graphics/technology/construction-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "5d-passive"
      },
      {
        type = "unlock-recipe",
        recipe = "5d-storage"
      },
    },
    prerequisites = {"construction-robotics"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "c-k-a",
  },
  {
    type = "technology",
    name = "worker-robots-speed-6",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "0.75"
      }
    },
    prerequisites = {
      "worker-robots-speed-5"
    },
    unit = {
      count = 600,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "worker-robots-speed-7",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "0.85"
      }
    },
    prerequisites = {
      "worker-robots-speed-6"
    },
    unit = {
      count = 700,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "worker-robots-speed-8",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "0.95"
      }
    },
    prerequisites = {
      "worker-robots-speed-7"
    },
    unit = {
      count = 800,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "worker-robots-speed-9",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "1.05"
      }
    },
    prerequisites = {
      "worker-robots-speed-8"
    },
    unit = {
      count = 900,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "worker-robots-speed-10",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    effects = {
      {
        type = "worker-robot-speed",
        modifier = "1.15"
      }
    },
    prerequisites = {
      "worker-robots-speed-9"
    },
    unit = {
      count = 1000,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-f-e"
  },
  {
    type = "technology",
    name = "worker-robots-storage-4",
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    effects = {
      {
        type = "worker-robot-storage",
        modifier = "1"
      }
    },
    prerequisites = {
      "worker-robots-storage-3"
    },
    unit = {
      count = 450,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-g-c"
  },
  {
    type = "technology",
    name = "worker-robots-storage-5",
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    effects = {
      {
        type = "worker-robot-storage",
        modifier = "1"
      }
    },
    prerequisites = {
      "worker-robots-storage-4"
    },
    unit = {
      count = 450,
      ingredients = {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "c-k-g-c"
  },
})