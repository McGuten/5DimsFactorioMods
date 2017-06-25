require("config")
--Changes
require("prototypes.changes")
require("prototypes.wall")
require("prototypes.gate")
require("prototypes.ammo-category")
require("prototypes.tech")

--Biters
require("prototypes.bitter")
if settings.startup["5d-suicide"].value then
    require("prototypes.explosive")
end
require("prototypes.laser")
require("prototypes.physical")

--Spiters
require("prototypes.spitter")
require("prototypes.rocket")
require("prototypes.fire")

--Experimental
if settings.startup["5d-exp"].value then
    require("prototypes.exp")
end

--Laser turret
require("prototypes.small-laser")
require("prototypes.big-laser")

--Gun turret
require("prototypes.small-ammo")
require("prototypes.big-ammo")

--Tesla turret
require("prototypes.tesla-turret")

--Tank
require("prototypes.tank-2")

--Artillery
require("prototypes.artillery")

--Radar
--require("prototypes.radar-2")