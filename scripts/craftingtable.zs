val scorched = <item:tconstruct:scorched_brick>;
val nul = <item:minecraft:air>;
val glass = <tag:items:forge:glass>;

craftingTable.removeRecipe(<item:tconstruct:seared_melter>);
craftingTable.removeRecipe(<item:tconstruct:seared_heater>);
craftingTable.removeRecipe(<item:tconstruct:seared_fuel_tank>);
craftingTable.removeRecipe(<item:tconstruct:seared_fuel_gauge>);
craftingTable.removeRecipe(<item:tconstruct:seared_ingot_tank>);
craftingTable.removeRecipe(<item:tconstruct:seared_ingot_gauge>);
craftingTable.removeRecipe(<item:tconstruct:scorched_drain>);

craftingTable.addShapeless("first_coalmeal", <item:contenttweaker:coalmeal1>, [<item:minecraft:bone_meal>, <item:minecraft:coal>]);

craftingTable.addShaped("seared1", <item:tconstruct:seared_fuel_tank>, [
    [scorched, scorched, scorched],
    [scorched, glass, scorched],
    [scorched, scorched, scorched]
]);

craftingTable.addShaped("seared2", <item:tconstruct:seared_ingot_tank>, [
    [scorched, glass, scorched],
    [scorched, glass, scorched],
    [scorched, glass, scorched]
]);

craftingTable.addShaped("seared3", <item:tconstruct:seared_fuel_gauge>, [
    [scorched, glass, scorched],
    [glass, glass, glass],
    [scorched, glass, scorched]
]);

craftingTable.addShaped("seared4", <item:tconstruct:seared_ingot_gauge>, [
    [glass, scorched, glass],
    [scorched, glass, scorched],
    [glass, scorched, glass]
]);

craftingTable.addShaped("seared5", <item:tconstruct:seared_melter>, [
    [nul, nul, nul],
    [scorched, <tag:items:tconstruct:tanks>, scorched],
    [scorched, scorched, scorched]
]);

craftingTable.addShaped("seared6", <item:tconstruct:seared_heater>, [
    [scorched, scorched, scorched],
    [scorched, nul, scorched],
    [scorched, scorched, scorched]
]);

craftingTable.addShaped("scorched1", <item:tconstruct:scorched_drain>, [
    [scorched, nul, scorched],
    [scorched, nul, scorched],
    [scorched, nul, scorched]
]);

craftingTable.addShaped("scorched2", <item:tconstruct:scorched_chute>, [
    [scorched, scorched, scorched],
    [nul, nul, nul],
    [scorched, scorched, scorched]
]);