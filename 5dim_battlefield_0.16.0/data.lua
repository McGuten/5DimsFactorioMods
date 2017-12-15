require("config")
--Changes
require("prototypes.changes")
require("prototypes.wall")
require("prototypes.gate")
require("prototypes.ammo-category")
require("prototypes.tech")

--Worms
if settings.startup["5d-worm"].value then
	require("prototypes.behemoth-worm")
	require("prototypes.experimental-worm")
end

--Biters
require("prototypes.bitter")
--require("prototypes.bitter-test")
if settings.startup["5d-suicide"].value then
    require("prototypes.explosive")
end
require("prototypes.laser")
if settings.startup["5d-swimmer"].value then
    require("prototypes.swimmer")
end
if settings.startup["5d-climber"].value then
    require("prototypes.climber")
end
require("prototypes.physical")

--Spiters
require("prototypes.spitter")
require("prototypes.rocket")
require("prototypes.fire")

--Experimental
if settings.startup["5d-exp"].value then
    require("prototypes.exp")
end

--FlameThrower turret
require("prototypes.flamethrower-turret")

--Laser turret
require("prototypes.small-laser")
require("prototypes.big-laser")

--Gun turret
require("prototypes.small-ammo")
require("prototypes.big-ammo")

--Experimental turret
require("prototypes.exp-turret")

--Tesla turret
require("prototypes.tesla-turret")

--Tank
require("prototypes.tank-2")

--Artillery
--require("prototypes.artillery")

--Radar
--require("prototypes.radar-2")