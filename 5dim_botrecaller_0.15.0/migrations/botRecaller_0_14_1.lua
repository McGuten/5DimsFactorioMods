for _, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["construction-robotics"].researched then
    force.recipes["logistic-chest-botRecaller"].enabled = true
  end
end
