data:extend({
  {
    type = "technology",
    name = "worker-robots-storage-4",
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"worker-robots-storage-3"},
    unit =
    {
      count_formula = "1000*(L-3)",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-g-c"
  },
})