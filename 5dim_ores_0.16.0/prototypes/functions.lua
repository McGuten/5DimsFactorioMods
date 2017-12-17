function autoplace_settingsStarter(name, order, coverage)
	local ret = {
		order = order,
		control = "iron-ore",
		sharpness = 15/16,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 20,
		richness_base = 10,
		coverage = coverage,
		peaks = {
			{
				noise_layer = "iron-ore",
				noise_octaves_difference = -0.85,
				noise_persistence = 0.4,
			},
			--no resource in the starting area
	        {
	          influence = -1.0,
	          starting_area_weight_optimal = 1,
	          starting_area_weight_range = 0,
	          starting_area_weight_max_range = 2,
	        },
		},
		--starting_area_size = 5500,
		--starting_area_amount = 1600
	}

	return ret
end

function autoplace_settings(name, order, coverage)
	local ret = {
		order = order,
		control = "iron-ore",
		sharpness = 15/16,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 20,
		richness_base = 10,
		coverage = coverage,
		peaks = {
			{
				noise_layer = "iron-ore",
				noise_octaves_difference = -0.85,
				noise_persistence = 0.4,
			},
		},
		starting_area_size = 5500 * coverage,
		starting_area_amount = 1600
	}

	return ret
end

function resource(name, order, map_color, hardness, coverage)
if hardness == nil then hardness = 0.9 end
if coverage == nil then coverage = 0.02 end
return {
	type = "resource",
	name = name,
	icon = "__5dim_ores__/graphics/icon/" .. name .. ".png",
	icon_size = 32,
	flags = {"placeable-neutral"},
	order=order,
	tree_removal_probability = 0.8,
	tree_removal_max_distance = 32 * 32,
	tint = map_color,
	minable =
	{
		hardness = hardness,
		mining_particle = "iron-ore-particle",
		mining_time = 2,
		result = name
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace = autoplace_settings(name, order, coverage),
	stage_counts = {15000, 8000, 4000, 2000, 1000, 500, 200, 80},
	stages =
	{
		sheet =
		{
			filename = "__5dim_ores__/graphics/icon/ore-1.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 8,
			variation_count = 8,
        	hr_version =
	          {
	          filename = "__5dim_ores__/graphics/icon/hr-ore-1.png",
	          priority = "extra-high",
	          width = 128,
	          height = 128,
	          frame_count = 8,
	          variation_count = 8,
	          scale = 0.5
	          }
		}
	},
	map_color = map_color
}
end
--[[
function itemResource (name, order)
	local ret = {
	    {
	      type = "item",
	      name = name,
	      icon = "__5dim_ores__/graphics/icons/" .. name .. ".png",
	      icon_size = 32,
	      flags = {"goes-to-main-inventory"},
	      subgroup = "plates-ore",
	      order = order,
	      stack_size = 50,
	    },
	}
	return ret
end
--]]