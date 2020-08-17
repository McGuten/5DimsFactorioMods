require("config")
--Changes
require("prototypes.changes")
--Air plane
require("prototypes.air-plane")
--Boat
require("prototypes.boat")
--Truck
require("prototypes.truck")
--Tech
require("prototypes.tech")

if settings.startup["5d-grid"] then
    require("prototypes.grid")
    require("prototypes.active-grid")
    if settings.startup["5d-grid-override"] then
        for _, car in pairs(data.raw["car"]) do
            if car.equipment_grid == nil then
                car.equipment_grid = "5d-car-equipment-grid"
            end
        end
        for _, locomotive in pairs(data.raw["locomotive"]) do
            if locomotive.equipment_grid == nil then
                locomotive.equipment_grid = "5d-locomotive-equipment-grid"
            end
        end
        for _, cargoWagon in pairs(data.raw["cargo-wagon"]) do
            if cargoWagon.equipment_grid == nil then
                cargoWagon.equipment_grid = "5d-cargo-wagon-equipment-grid"
            end
        end
        for _, fluidWagon in pairs(data.raw["fluid-wagon"]) do
            if fluidWagon.equipment_grid == nil then
                fluidWagon.equipment_grid = "5d-fluid-wagon-equipment-grid"
            end
        end
    end
end
