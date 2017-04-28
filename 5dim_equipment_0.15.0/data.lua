require("config")

-- Roboport
--require("prototypes.roboport-mk2")

-- Batteries
require("prototypes.battery-mk3")
require("prototypes.battery-mk4")

-- Exoskeleton
require("prototypes.exoesqueleto-mk2")
require("prototypes.exoesqueleto-mk3")

-- Reactor
require("prototypes.reactor-mk2")

-- Shield
require("prototypes.shield-mk3")
require("prototypes.shield-mk4")

-- Solar panel
require("prototypes.solar-mk2")

-- Personal laser defense
if battlefield == true then
require("prototypes.laser-1")
require("prototypes.laser-2")
require("prototypes.laser-3")
end

-- Tech
require("prototypes.tech")
