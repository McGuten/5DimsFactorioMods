data:extend({
  {
    type = "technology",
    name = "rocket-speed-8",
    icon = "__base__/graphics/technology/rocket-speed.png",
    icon_size = 32, 
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 1
      }
    },
    prerequisites = {"rocket-speed-7"},
    unit =
    {
      count_formula = "150*(L-4)",
      ingredients =
      {
        {"military-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-j-n"
  },
})