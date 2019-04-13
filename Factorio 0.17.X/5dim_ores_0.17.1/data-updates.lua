require("config")
require("prototypes.tin-ore")
require("prototypes.lead-ore")
require("prototypes.zinc-ore")
require("prototypes.gold-ore")
require("prototypes.bauxite-ore")
bobmods.lib.resource.generate(bauxite)
bobmods.lib.resource.generate(gold)
bobmods.lib.resource.generate(zinc)
bobmods.lib.resource.generate(lead)
bobmods.lib.resource.generate(tin)
require("prototypes.changes")


if automatization == true then
	require("prototypes.automatization")
end

-- if battlefield == true then
-- require("prototypes.battlefield")
-- end

-- if equipment == true then
-- require("prototypes.equipment")
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