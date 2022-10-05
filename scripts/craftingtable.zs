val scorched = <item:tconstruct:scorched_brick>;
val nul = <item:minecraft:air>;
val glass = <tag:items:forge:glass>;
val alloy = <item:create:andesite_alloy>;

craftingTable.removeRecipe(<item:tconstruct:seared_melter>);
craftingTable.removeRecipe(<item:tconstruct:seared_heater>);
craftingTable.removeRecipe(<item:tconstruct:seared_fuel_tank>);
craftingTable.removeRecipe(<item:tconstruct:seared_fuel_gauge>);
craftingTable.removeRecipe(<item:tconstruct:seared_ingot_tank>);
craftingTable.removeRecipe(<item:tconstruct:seared_ingot_gauge>);
craftingTable.removeRecipe(<item:tconstruct:scorched_drain>);
craftingTable.removeRecipe(<item:create:millstone>);
craftingTable.removeRecipe(<item:create:mechanical_press>);
craftingTable.removeRecipe(<item:create:whisk>);
craftingTable.removeRecipe(<item:create:empty_blaze_burner>);
craftingTable.removeRecipe(alloy);
craftingTable.removeRecipe(<item:create:spout>);
craftingTable.removeRecipe(<item:create:item_drain>);
craftingTable.removeRecipe(<item:create:mechanical_drill>);
craftingTable.removeRecipe(<item:create:mechanical_saw>);
craftingTable.removeRecipe(<item:pneumaticcraft:heat_frame>);
craftingTable.removeRecipe(<item:create:propeller>);

craftingTable.addShapeless("first_coalmeal", <item:contenttweaker:coalmeal1>, [<item:minecraft:bone_meal>, <item:minecraft:coal>]);
craftingTable.addShapeless("second_coalmeal", <item:contenttweaker:coalmeal2>, [<item:contenttweaker:coalmeal1>, <item:contenttweaker:phosphate>, <item:minecraft:redstone>]);

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

craftingTable.addShaped("millstone", <item:create:millstone>, [
    [nul, <tag:items:minecraft:planks>, nul],
    [alloy, <item:create:cogwheel>, alloy],
    [<tag:items:forge:nuggets/bronze>, <tag:items:forge:stone>, <tag:items:forge:nuggets/bronze>]
]);

craftingTable.addShaped("press", <item:create:mechanical_press>, [
    [nul, alloy, nul],
    [<item:create:cogwheel>, <item:create:andesite_casing>, <item:create:cogwheel>],
    [nul, <tag:items:forge:plates/iron>, nul]
]);

craftingTable.addShaped("whisk", <item:create:whisk>, [
    [nul, alloy, nul],
    [<tag:items:forge:plates/iron>, alloy, <tag:items:forge:plates/iron>],
    [nul, <tag:items:forge:plates/iron>, nul]
]);

craftingTable.addShaped("burner", <item:create:empty_blaze_burner>, [
    [<tag:items:forge:plates/silver>, <tag:items:forge:plates/silver>],
    [<item:minecraft:iron_bars>, <item:minecraft:iron_bars>]
]);

craftingTable.addShapeless("alloy_from_iron", <item:create:andesite_alloy>*2, [
    <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <item:minecraft:andesite>, <item:minecraft:andesite>,
]);

craftingTable.addShapeless("alloy_from_copper", <item:create:andesite_alloy>, [
    <tag:items:forge:nuggets/copper>, <tag:items:forge:nuggets/copper>, <item:minecraft:andesite>, <item:minecraft:andesite>,
]);

craftingTable.addShapeless("alloy_from_tin", <item:create:andesite_alloy>*2, [
    <tag:items:forge:nuggets/tin>, nul, <item:minecraft:andesite>, <item:minecraft:andesite>,
]);

craftingTable.addShaped("spout", <item:create:spout>, [
    [<tag:items:forge:plates/bronze>],
    [<item:create:fluid_tank>],
    [<tag:items:forge:nuggets/copper>]
]);

craftingTable.addShaped("drain", <item:create:item_drain>, [
    [<item:minecraft:iron_bars>],
    [<item:create:fluid_tank>],
    [<tag:items:forge:plates/bronze>]
]);

craftingTable.addShaped("drill", <item:create:mechanical_drill>, [
    [nul, alloy, nul],
    [alloy, <tag:items:forge:ingots/bronze>, alloy],
    [nul, <item:create:andesite_casing>, nul]
]);

craftingTable.addShaped("saw", <item:create:mechanical_saw>, [
    [nul, <tag:items:forge:plates/iron>, nul],
    [<tag:items:forge:plates/iron>, <tag:items:forge:ingots/bronze>, <tag:items:forge:plates/iron>],
    [nul, <item:create:andesite_casing>, nul]
]);

craftingTable.addShaped("heat_frame", <item:pneumaticcraft:heat_frame>, [
    [scorched, <item:minecraft:iron_ingot>, scorched],
    [<item:minecraft:iron_ingot>, <item:minecraft:furnace>, <item:minecraft:iron_ingot>],
    [scorched, <item:minecraft:iron_ingot>, scorched]
]);

craftingTable.addShaped("propeller", <item:create:propeller>, [
    [nul, <tag:items:forge:plates/copper>, nul],
    [<tag:items:forge:plates/copper>, alloy, <tag:items:forge:plates/copper>],
    [nul, <tag:items:forge:plates/copper>, nul]
]);

craftingTable.addShaped("enriched", <item:contenttweaker:enriched_common>, [
    [nul, <item:minecraft:redstone>, nul],
    [<item:minecraft:redstone>, <item:contenttweaker:common_cluster_1_1>, <item:minecraft:redstone>],
    [nul, <item:minecraft:redstone>, nul]
]);

craftingTable.addShaped("saw_saw", <item:contenttweaker:saw>, [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>]
]);

craftingTable.addShapeless("sawdust", <item:contenttweaker:infernal_sawdust>, [
    <item:contenttweaker:saw>.anyDamage().transformDamage(), <tag:items:custom:infernal_wood>
]);