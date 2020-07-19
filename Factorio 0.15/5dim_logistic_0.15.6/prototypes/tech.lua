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
    },
    prerequisites = {"logistic-robotics", "construction-robotics"},
    unit =
    {
      count = 150,
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
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
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
      {
        type = "unlock-recipe",
        recipe = "5d-construction-robot-p"
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
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-a",
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
        {"science-pack-3", 1},
        {"production-science-pack", 1},
        {"high-tech-science-pack", 1}
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
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-k-a",
  },
})