require("config")

if mods["5dim_logistic"] and settings.startup["5d-storage"].value then
	--Robots cargo size
	require("prototypes.robots")
end
if mods["5dim_logistic"] and settings.startup["5d-trash"].value then
	--Trash slots
	require("prototypes.trash")
end
if mods["5dim_logistic"] and settings.startup["5d-logistics"].value then
	--Logistics
	require("prototypes.logistics")
end
if settings.startup["5d-stack"].value then
	--Logistics
	require("prototypes.stack")
end
if settings.startup["5d-speed"].value then
	--Logistics
	require("prototypes.tech-speed")
end
if settings.startup["5d-speed-gun-turret"].value then
	--Speed research for ammo and turrets
	require("prototypes.bullet-ammo")
	require("prototypes.cannon-ammo")
	require("prototypes.laser-turret")
	require("prototypes.rocket-ammo")
	require("prototypes.shotgun-ammo")
end
if settings.startup["5d-braking"].value then
	--Bracking
	require("prototypes.braking")
end
