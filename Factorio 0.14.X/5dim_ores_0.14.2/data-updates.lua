require("config")
require("prototypes.changes")
require("prototypes.tin-ore")
require("prototypes.lead-ore")
require("prototypes.zinc-ore")
require("prototypes.gold-ore")
require("prototypes.bauxite-ore")
bobmods.lib.generate_ore(bauxite)
bobmods.lib.generate_ore(gold)
bobmods.lib.generate_ore(zinc)
bobmods.lib.generate_ore(lead)
bobmods.lib.generate_ore(tin)


if automatization == true then
require("prototypes.automatization")
end

-- if battlefield == true then
-- require("prototypes.battlefield")
-- end

-- if equipment == true then
-- require("prototypes.battlefield")
-- end

if energy == true then
require("prototypes.energy")
end

if logistic == true then
require("prototypes.logistic")
end

if mining == true then
require("prototypes.mining")
end

if modules == true then
require("prototypes.modules")
end

if resources == true then
require("prototypes.resources")
end

if transport == true then
require("prototypes.transport")
end

if vehicles == true then
require("prototypes.vehicles")
end