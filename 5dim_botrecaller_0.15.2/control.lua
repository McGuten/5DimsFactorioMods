require "config"

function checkRecallers()
	local recallers = {}
	for i, force in pairs(game.forces) do 
		for ii, surface in pairs(force.logistic_networks) do 
			for ii, network in pairs(surface) do  
				for iii, requester in pairs(network.requesters) do
					if requester.name == "logistic-chest-botRecaller" then
						table.insert(recallers, requester)
					end
				end

				doRecall(network, recallers)
				
				recallers = {}
			end
		end
	end
end

function doRecall(network, recallers)

	local inventories = {}

	for i, cell in pairs(network.cells) do 

		local owner = cell.owner

		local theirInventory = owner.get_inventory(defines.inventory.roboport_robot)

		if owner.type == "roboport" and not theirInventory.is_empty() then
			--table.insert(inventories, theirInventory)
			--Faster:
			inventories[#inventories+1] = theirInventory
		end

	end
	
	for i, recaller in pairs(recallers) do

		local myInventory = recaller.get_inventory(defines.inventory.chest)

		local requests = {}

		slots = recaller.request_slot_count

		for slot = 1, slots, 1 do

			local request = recaller.get_request_slot(slot)

			if request and request.name and request.count then
				if string.find(request.name, "robot") 
				and myInventory.get_item_count(request.name) < request.count 
				and myInventory.can_insert({name = request.name}) then
					requests[#requests+1] = request
				end
			end

		end

		for j, request in pairs(requests) do
			local fufilled = false
			for k, theirInventory in pairs(inventories) do
				if theirInventory.get_item_count(request.name) > 0 then
					inserted = myInventory.insert({name = request.name})
					if inserted > 0 then
						theirInventory.remove({name = request.name})
						fufilled = true
						break
					end

				end
			end
			if fufilled then
				break
			end
		end

	end
	
end


script.on_event(defines.events.on_tick, function(event)
	if event.tick % (seconds * 60) == 0 then
		checkRecallers()
	end
end)
