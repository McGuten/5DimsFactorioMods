script.on_event(defines.events.on_player_created, function(event)
	local atStart = {}
	atStart["items"] = {}
	atStart["tech"] = {}
	atStart["equip"] = {}
	--Items
	if settings.startup["5d-item-start"].value == "Small amount" then 
		atStart["items"] = {
			{"steel-axe", 2},
			{"transport-belt", 200},
			{"inserter", 50},
			{"splitter", 20},
			{"underground-belt", 20},
			{"lab", 1},
			{"steam-engine", 20},
			{"boiler", 10},
			{"offshore-pump", 1},
			{"burner-mining-drill", 5},
			{"stone-furnace", 5},
			{"coal", 50},
		}
	elseif settings.startup["5d-item-start"].value == "Medium amount" then
		atStart["items"] = {
			{"steel-axe", 2},
			{"transport-belt", 500},
			{"inserter", 150},
			{"splitter", 50},
			{"underground-belt", 50},
			{"small-electric-pole", 50},
			{"electric-mining-drill", 20},
			{"lab", 1},
			{"steam-engine", 20},
			{"boiler", 10},
			{"offshore-pump", 1},
			{"stone-furnace", 10},
			{"coal", 100},
			{"copper-plate", 100},
			{"iron-plate", 100},
			{"steel-plate", 50},
		}
	elseif settings.startup["5d-item-start"].value == "Big amount" then
		atStart["items"] = {
			{"steel-axe", 2},
			{"transport-belt", 1000},
			{"inserter", 300},
			{"splitter", 100},
			{"underground-belt", 100},
			{"medium-electric-pole", 100},
			{"big-electric-pole", 50},
			{"rail", 1000},
			{"locomotive", 5},
			{"cargo-wagon", 10},
			{"fluid-wagon", 10},
			{"electric-mining-drill", 150},
			{"lab", 1},
			{"steam-engine", 40},
			{"boiler", 20},
			{"offshore-pump", 2},
			{"steel-furnace", 100},
			{"coal", 100},
			{"copper-plate", 100},
			{"iron-plate", 92},
			{"steel-plate", 100},
		}
	elseif settings.startup["5d-item-start"].value == "Huge amount" then
		atStart["items"] = {
			{"steel-axe", 2},
			{"transport-belt", 1000},
			{"inserter", 300},
			{"splitter", 100},
			{"underground-belt", 100},
			{"medium-electric-pole", 100},
			{"big-electric-pole", 50},
			{"rail", 1000},
			{"locomotive", 5},
			{"cargo-wagon", 10},
			{"fluid-wagon", 10},
			{"electric-mining-drill", 150},
			{"roboport", 10},
			{"logistic-chest-passive-provider", 50},
			{"logistic-chest-active-provider", 50},
			{"logistic-chest-storage", 50},
			{"logistic-chest-buffer", 50},
			{"logistic-chest-requester", 50},
			{"construction-robot", 150},
			{"logistic-robot", 150},
			{"lab", 1},
			{"steam-engine", 40},
			{"boiler", 20},
			{"offshore-pump", 2},
			{"steel-furnace", 100},
			{"coal", 100},
			{"copper-plate", 100},
			{"iron-plate", 92},
			{"steel-plate", 100},
		}
	end
	local player = game.players[event.player_index]
	for _, item in pairs(atStart["items"]) do
		player.insert{name = item[1], count = item[2]}
	end
	atStart["items"] = {}
	--Tecnologies
	if settings.startup["5d-train-tech"].value then
		atStart["tech"] = {
			{"automation"},
			{"automation-2"},
			{"logistics"},
			{"logistics-2"},
			{"steel-processing"},
			{"engine"},
			{"railway"},
			{"automated-rail-transportation"},
			{"rail-signals"},
			{"fluid-wagon"},
		}
	end
	if atStart["tech"] ~= nil then
		for _,tech in pairs(atStart["tech"]) do
			player.force.technologies[tech[1]].researched = true
		end
	end
	atStart["tech"] = {}
	if settings.startup["5d-robot-tech"].value then
		atStart["tech"] = {
			{"oil-processing"},
			{"plastics"},
			{"advanced-electronics"},
			{"sulfur-processing"},
			{"battery"},
			{"electronics"},
			{"engine"},
			{"electric-engine"},
			{"flying"},
			{"robotics"},
			{"logistic-robotics"},
			{"construction-robotics"},
			{"logistic-system"}
		}
	end
	if atStart["tech"] ~= nil then
		for _,tech in pairs(atStart["tech"]) do
			player.force.technologies[tech[1]].researched = true
		end
	end
	--Equipment
	if settings.startup["5d-equip-start"].value == "Modular armor" then
		atStart["equip"] = {
			{"solar-panel-equipment", 15},
			{"battery-equipment", 1},
			{"personal-roboport-equipment", 2},
		}
		atStart["items"] = {
			{"modular-armor", 1},
			{"construction-robot", 20},
			{"blueprint", 1},
			{"deconstruction-planner", 1},
		}
	elseif settings.startup["5d-equip-start"].value == "Power armor" then
		atStart["equip"] = {
			{"fusion-reactor-equipment", 1},
			{"battery-equipment", 3},
			{"personal-roboport-equipment", 5},
		}
		atStart["items"] = {
			{"power-armor", 1},
			{"construction-robot", 50},
			{"blueprint", 1},
			{"deconstruction-planner", 1},
		}
	elseif settings.startup["5d-equip-start"].value == "Power armor MK2" then
		atStart["equip"] = {
			{"fusion-reactor-equipment", 2},
			{"battery-equipment", 4},
			{"exoskeleton-equipment", 2},
			{"personal-roboport-equipment", 11},
		}
		atStart["items"] = {
			{"power-armor-mk2", 1},
			{"construction-robot", 110},
			{"blueprint", 1},
			{"deconstruction-planner", 1},
		}
	end
	local player = game.players[event.player_index]
	for _, item in pairs(atStart["items"]) do
		player.insert{name = item[1], count = item[2]}
	end
	local player = game.players[event.player_index]
	for _, equip in pairs(atStart["equip"]) do
		player.insert{name = equip[1], count = equip[2]}
	end
end)
