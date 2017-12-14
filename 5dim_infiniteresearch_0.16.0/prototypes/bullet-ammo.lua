data:extend({
  {
    type = "technology",
    name = "bullet-speed-7",
    icon = "__base__/graphics/technology/bullet-speed.png",
    icon_size = 32, 
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.4
      }
    },
    prerequisites = {"bullet-speed-6"},
    unit =
    {
      count_formula = "150*(L-4)",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1},
        {"high-tech-science-pack", 1},
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-l-l"
  },
})