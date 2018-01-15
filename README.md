![logo](logo.png)
## **5Dim's mod**

**Global links**
- [Patreon](https://www.patreon.com/5Dim)
- [Download](https://mods.factorio.com/mods/McGuten)
- [Iusses](https://github.com/McGuten/5DimsFactorioMods/issues)
- [Discord comunity](https://discord.gg/CTEMFd9)


#### **If you have problems with missing items or you add the mod in mid game yoiu should use this command**
```
/c tech = {} for name,technology in pairs(game.player.force.technologies) do if technology.researched == true then table.insert( tech, technology.name ) end end game.player.force.reset() for _, tech_name in pairs(tech) do for name,technology in pairs(game.player.force.technologies) do if (technology.name == tech_name) then technology.researched = true end end end
```
