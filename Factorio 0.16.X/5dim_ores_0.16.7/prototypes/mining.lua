data.raw.recipe["5d-mining-drill-speed-3"].ingredients = {
  {"5d-mining-drill-speed-2", 1},
  {"zinc-plate", 10},
  {"5d-gold-circuit", 5},
};
data.raw.recipe["5d-mining-drill-speed-2"].ingredients = {
  {"5d-mining-drill-speed-1", 1},
  {"5d-zinc-gear-wheel", 5},
  {"advanced-circuit", 5},
};
data.raw.recipe["5d-mining-drill-speed-1"].ingredients = {
  {"electric-mining-drill", 1},
  {"lead-plate", 10},
  {"5d-tin-gear-wheel", 5},
  {"electronic-circuit", 2},
};
data.raw.recipe["5d-mining-drill-range-3"].ingredients = {
  {"5d-mining-drill-speed-2", 1},
  {"zinc-plate", 10},
  {"5d-gold-circuit", 5},
};
data.raw.recipe["5d-mining-drill-range-2"].ingredients = {
  {"5d-mining-drill-speed-1", 1},
  {"5d-zinc-gear-wheel", 5},
  {"advanced-circuit", 5},
};
data.raw.recipe["5d-mining-drill-range-1"].ingredients = {
  {"electric-mining-drill", 1},
  {"lead-plate", 10},
  {"5d-tin-gear-wheel", 5},
  {"electronic-circuit", 2},
};
if transport == true then
  data.raw.recipe["5d-pumpjack-3"].ingredients = {
    {"5d-tin-gear-wheel", 20},
    {"lead-plate", 20},
    {"5d-pumpjack-2", 1},
    {"5d-pipe-mk3", 25},
  };
  data.raw.recipe["5d-pumpjack-2"].ingredients = {
    {"tin-plate", 35},
    {"pumpjack", 1},
    {"5d-tin-gear-wheel", 15},
    {"electronic-circuit", 10},
    {"5d-pipe-mk2", 5},
  };
else
  data.raw.recipe["5d-pumpjack-3"].ingredients = {
    {"5d-tin-gear-wheel", 20},
    {"lead-plate", 20},
    {"5d-pumpjack-2", 1},
    {"pipe", 25},
  };
  data.raw.recipe["5d-pumpjack-2"].ingredients = {
    {"tin-plate", 35},
    {"pumpjack", 1},
    {"5d-tin-gear-wheel", 15},
    {"electronic-circuit", 10},
    {"pipe", 5},
  };
end;