![logo](logo.png)

# **5Dim's mod**

## **Global Links**

- [Patreon](https://www.patreon.com/5Dim)
- [Download](https://mods.factorio.com/mods/McGuten)
- [Issues](https://github.com/McGuten/5DimsFactorioMods/issues)
- [Discord comunity](https://discord.gg/CTEMFd9)

## Translations
1. If you want to translate the mod to other lang you should use the follow template
2. [5Dim's Locale > locale > en.example](Factorio%200.16.X/5dim_locale_0.16.6/locale/en.example)
3. You should use this template to translate the mod and upload it with [Pull Request](https://github.com/McGuten/5DimsFactorioMods/pulls)

## Errors

1. ### **If you have problems with missing items or you add the mod in mid game you should use this command**
You also should empty your inventory, sometimes your inventory would lost.

This commands will refresh all your technologies

```lua
/c tech = {}
for name,technology in pairs(game.player.force.technologies) do
  if technology.researched == true then
    table.insert( tech, technology.name )
  end
end
game.player.force.reset()
for _, tech_name in pairs(tech) do
  for name,technology in pairs(game.player.force.technologies) do
    if (technology.name == tech_name) then
      technology.researched = true
    end
  end
end
```
