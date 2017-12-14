data.raw["car"]["car"].equipment_grid = "5d-car-equipment-grid"
data.raw["car"]["tank"].equipment_grid = "5d-car-equipment-grid"
data.raw["car"]["5d-truck"].equipment_grid = "5d-car-equipment-grid"
data.raw["car"]["5d-boat"].equipment_grid = "5d-car-equipment-grid"
data.raw["car"]["5d-air-plane"].equipment_grid = "5d-car-equipment-grid"
if mods["5dim_battlefield"] then
  data.raw["car"]["5d-tank"].equipment_grid = "5d-car-equipment-grid"
  --data.raw["car"]["5d-artillery"].equipment_grid = "5d-car-equipment-grid"
end

data.raw["locomotive"]["locomotive"].equipment_grid = "5d-locomotive-equipment-grid"
if mods["5dim_trains"] then
  data.raw["locomotive"]["5d-locomotive-hs"].equipment_grid = "5d-locomotive-equipment-grid"
  data.raw["locomotive"]["5d-locomotive-reinforced"].equipment_grid = "5d-locomotive-equipment-grid"
end

data.raw["cargo-wagon"]["cargo-wagon"].equipment_grid = "5d-cargo-wagon-equipment-grid"
if mods["5dim_trains"] then
  data.raw["cargo-wagon"]["5d-cargo-wagon-2"].equipment_grid = "5d-cargo-wagon-equipment-grid"
  data.raw["cargo-wagon"]["5d-cargo-wagon-3"].equipment_grid = "5d-cargo-wagon-equipment-grid"
end

data.raw["fluid-wagon"]["fluid-wagon"].equipment_grid = "5d-fluid-wagon-equipment-grid"
if mods["5dim_trains"] then
  data.raw["fluid-wagon"]["5d-fluid-wagon-2"].equipment_grid = "5d-fluid-wagon-equipment-grid"
  data.raw["fluid-wagon"]["5d-fluid-wagon-3"].equipment_grid = "5d-fluid-wagon-equipment-grid"
end