data:extend({
  {
    type = "technology",
    name = "cannon-shell-speed-6",
   icon = "__base__/graphics/technology/cannon-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = 1
      }
    },
    prerequisites = {"cannon-shell-speed-5"},
    unit =
    {
      count_formula = "200*(L)",
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
    order = "e-k-k"
  }
})