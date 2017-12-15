if not mods["bobinserters"] then
    data.raw.recipe["5d-inserter-speed1-range3"].ingredients = {
        {"electronic-circuit", 20}, 
        {"iron-gear-wheel", 20}, 
        {"iron-plate", 1}
    };
    data.raw.recipe["5d-inserter-speed1-range2-close"].ingredients = {
        {"long-handed-inserter", 1}, 
        {"electronic-circuit", 5}, 
        {"iron-gear-wheel", 5}, 
    };
    data.raw.recipe["5d-inserter-speed1-range1-close"].ingredients = {
        {"inserter", 1}, 
        {"iron-gear-wheel", 5}, 
        {"electronic-circuit", 5}
    };
    data.raw.recipe["5d-inserter-smart-speed3-range1-close"].ingredients = {
        {"5d-inserter-speed3-range1", 1}, 
        {"electronic-circuit", 5}, 
        {"iron-gear-wheel", 5}, 
    };
    data.raw.recipe["5d-inserter-smart-speed3-range1"].ingredients = {
        {"electronic-circuit", 5}, 
        {"fast-inserter", 1}
    };
    data.raw.recipe["5d-inserter-smart-speed2-range2-close"].ingredients = {
        {"5d-inserter-speed2-range2", 1}, 
        {"electronic-circuit", 5}, 
        {"iron-gear-wheel", 5}, 
    };
    data.raw.recipe["5d-inserter-smart-speed2-range2"].ingredients = {
        {"iron-gear-wheel", 10}, 
        {"iron-plate", 10}, 
        {"fast-inserter", 1}
    };
    data.raw.recipe["5d-inserter-smart-speed2-range1-close"].ingredients = {
        {"fast-inserter", 1}, 
        {"electronic-circuit", 5}, 
        {"iron-gear-wheel", 5}, 
    };
    data.raw.recipe["5d-fast-inserter-right-90d-close"].ingredients = {
        {"5d-fast-inserter-right-90d", 1}, 
        {"iron-gear-wheel", 10}
    };
    data.raw.recipe["5d-fast-inserter-right-90d"].ingredients = {
        {"fast-inserter", 1}, 
        {"electronic-circuit", 5}
    };
    data.raw.recipe["5d-fast-inserter-left-90d-close"].ingredients = {
        {"5d-fast-inserter-left-90d", 1}, 
        {"iron-gear-wheel", 10}
    };
    data.raw.recipe["5d-fast-inserter-left-90d"].ingredients = {
        {"fast-inserter", 1}, 
        {"electronic-circuit", 5}
    };
    data.raw.recipe["5d-extreme-inserter-right-90d-close"].ingredients = {
        {"5d-extreme-inserter-right-90d", 1}, 
        {"iron-gear-wheel", 10}
    };
    data.raw.recipe["5d-extreme-inserter-right-90d"].ingredients = {
        {"fast-inserter", 1}, 
        {"electronic-circuit", 5}
    };
    data.raw.recipe["5d-extreme-inserter-left-90d-close"].ingredients = {
        {"5d-extreme-inserter-left-90d", 1}, 
        {"iron-gear-wheel", 10}
    };
    data.raw.recipe["5d-extreme-inserter-left-90d"].ingredients = {
        {"fast-inserter", 1}, 
        {"electronic-circuit", 5}
    };
    data.raw.recipe["5d-basic-inserter-right-90d-close"].ingredients = {
        {"5d-basic-inserter-right-90d", 1}, 
        {"iron-gear-wheel", 10}
    };
    data.raw.recipe["5d-basic-inserter-right-90d"].ingredients = {
        {"inserter", 1}, 
        {"iron-gear-wheel", 1}, 
        {"electronic-circuit", 1}
    };
    data.raw.recipe["5d-basic-inserter-left-90d-close"].ingredients = {
        {"5d-basic-inserter-left-90d", 1}, 
        {"iron-gear-wheel", 10}
    };
    data.raw.recipe["5d-basic-inserter-left-90d"].ingredients = {
        {"inserter", 1}, 
        {"iron-gear-wheel", 1}, 
        {"electronic-circuit", 1}
    };
    data.raw.recipe["5d-inserter-speed3-range3-close"].ingredients = {
        {"5d-inserter-speed3-range3", 1}, 
        {"electronic-circuit", 5}, 
        {"iron-gear-wheel", 5}, 
    };
    data.raw.recipe["5d-inserter-speed3-range3"].ingredients = {
        {"iron-gear-wheel", 20}, 
        {"iron-plate", 20}, 
        {"5d-inserter-speed3-range1", 1}
    };
    data.raw.recipe["5d-inserter-speed3-range2-close"].ingredients = {
        {"5d-inserter-speed3-range2", 1}, 
        {"electronic-circuit", 5}, 
        {"iron-gear-wheel", 5}, 
    };
    data.raw.recipe["5d-inserter-speed3-range2"].ingredients = {
        {"iron-gear-wheel", 10}, 
        {"iron-plate", 10}, 
        {"5d-inserter-speed3-range1", 1}
    };
    data.raw.recipe["5d-inserter-speed3-range1-close"].ingredients = {
        {"5d-inserter-speed3-range1", 1}, 
        {"electronic-circuit", 5}, 
        {"iron-gear-wheel", 5}, 
    };
    data.raw.recipe["5d-inserter-speed3-range1"].ingredients = {
        {"electronic-circuit", 5}, 
        {"fast-inserter", 1}
    };
    data.raw.recipe["5d-inserter-speed2-range3-close"].ingredients = {
        {"5d-inserter-speed2-range3", 1}, 
        {"electronic-circuit", 5}, 
        {"iron-gear-wheel", 5}, 
    };
    data.raw.recipe["5d-inserter-speed2-range3"].ingredients = {
        {"iron-gear-wheel", 20}, 
        {"iron-plate", 20}, 
        {"fast-inserter", 1}
    };
    data.raw.recipe["5d-inserter-speed2-range2-close"].ingredients = {
        {"5d-inserter-speed2-range2", 1}, 
        {"electronic-circuit", 5}, 
        {"iron-gear-wheel", 5}, 
    };
    data.raw.recipe["5d-inserter-speed2-range2"].ingredients = {
        {"iron-gear-wheel", 10}, 
        {"iron-plate", 10}, 
        {"fast-inserter", 1}
    };
    data.raw.recipe["5d-inserter-speed2-range1-close"].ingredients = {
        {"fast-inserter", 1}, 
        {"electronic-circuit", 5}, 
        {"iron-gear-wheel", 5}, 
    };
    data.raw.recipe["5d-inserter-speed1-range3-close"].ingredients = {
        {"5d-inserter-speed1-range3", 1}, 
        {"electronic-circuit", 5}, 
        {"iron-gear-wheel", 5}, 
    };
else
    data.raw.recipe["5d-inserter-speed3-range1"].ingredients = {
        {"electronic-circuit", 5}, 
        {"fast-inserter", 1}
    };
end
if transport == true then
    data.raw.recipe["5d-chemical-plant-3"].ingredients = {
        {"copper-plate", 50}, 
        {"zinc-plate", 50}, 
        {"5d-pipe-mk3", 10}, 
        {"5d-gold-circuit", 5}, 
        {"5d-chemical-plant-2", 1}, 
    };
    data.raw.recipe["5d-chemical-plant-2"].ingredients = {
        {"steel-plate", 20}, 
        {"lead-plate", 50}, 
        {"tin-plate", 50}, 
        {"5d-pipe-mk2", 10}, 
        {"chemical-plant", 1}, 
    };
else 
    data.raw.recipe["5d-chemical-plant-3"].ingredients = {
        {"copper-plate", 50}, 
        {"zinc-plate", 50}, 
        {"pipe", 10}, 
        {"5d-gold-circuit", 5}, 
        {"5d-chemical-plant-2", 1}, 
    };
    data.raw.recipe["5d-chemical-plant-2"].ingredients = {
        {"steel-plate", 20}, 
        {"lead-plate", 50}, 
        {"tin-plate", 50}, 
        {"pipe", 10}, 
        {"chemical-plant", 1}, 
    };
end
data.raw.recipe["5d-assembling-machine-5"].ingredients = {
    {"speed-module-3", 4}, 
    {"aluminium-plate", 9}, 
    {"5d-gold-circuit", 3}, 
    {"5d-assembling-machine-4", 1}
};
data.raw.recipe["5d-assembling-machine-4"].ingredients = {
    {"speed-module-2", 4}, 
    {"5d-tin-gear-wheel", 4}, 
    {"zinc-plate", 9}, 
    {"electronic-circuit", 3}, 
    {"assembling-machine-3", 1}
};
data.raw.recipe["5d-oil-refinery-3"].ingredients = {
    {"steel-plate", 15}, 
    {"lead-plate", 25}, 
    {"zinc-plate", 35}, 
    {"5d-zinc-gear-wheel", 5}, 
    {"stone-brick", 10}, 
    {"5d-gold-circuit", 5}, 
    {"5d-pipe-mk3", 20}, 
    {"5d-oil-refinery-2", 1}, 
};
data.raw.recipe["5d-oil-refinery-2"].ingredients = {
    {"steel-plate", 15}, 
    {"iron-plate", 35}, 
    {"5d-tin-gear-wheel", 20}, 
    {"stone-brick", 5}, 
    {"electronic-circuit", 20}, 
    {"5d-pipe-mk2", 15}, 
    {"oil-refinery", 1}, 
};