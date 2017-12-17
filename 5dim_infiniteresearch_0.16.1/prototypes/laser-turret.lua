data:extend({
  {
    type = "technology",
    name = "laser-turret-speed-8",
    icon = "__base__/graphics/technology/laser-turret-speed.png",
    icon_size = 128, 
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser-turret",
        modifier = 0.5
      }
    },
    prerequisites = {"laser-turret-speed-7"},
    unit =
    {
      count_formula = "150*(L-5)",
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1},
        {"high-tech-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-n-n"
  },
})