if not mods["angelssmelting"] then
    data.raw.recipe["science-pack-1"].ingredients = {
        {"copper-plate", 1},
        {"5d-tin-gear-wheel", 1},
    };
end
data.raw.recipe["inserter"].ingredients = {
    {"electronic-circuit", 1},
    {"iron-gear-wheel", 1},
    {"lead-plate", 1}
};
data.raw.recipe["transport-belt"].ingredients = {
    {"iron-plate", 1},
    {"5d-tin-gear-wheel", 1},
};
data.raw.recipe["stack-inserter"].ingredients = {
    {"iron-gear-wheel", 15},
    {"electronic-circuit", 15},
    {"5d-gold-circuit", 1},
    {"fast-inserter", 1}
};
data.raw.recipe["stack-filter-inserter"].ingredients = {
    {"stack-inserter", 1},
    {"5d-gold-circuit", 5}
};