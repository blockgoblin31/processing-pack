import crafttweaker.api.item.IItemStack;

val scorched = <item:tconstruct:scorched_brick>;
val nul = <item:minecraft:air>;
val glass = <tag:items:forge:glass>;
val alloy = <item:create:andesite_alloy>;
val iron = <item:minecraft:iron_ingot>;
val redstone = <item:minecraft:redstone>;

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
craftingTable.removeRecipe(<item:create:propeller>);
craftingTable.removeRecipe(<item:create:brass_hand>);
craftingTable.removeByModid("refinedpipes");
craftingTable.removeByModid("prettypipes");
craftingTable.removeRecipe(<item:create:belt_connector>);
craftingTable.removeRecipe(<item:immersiveengineering:wire_electrum>);
craftingTable.removeRecipe(<item:immersiveengineering:connector_mv>);
craftingTable.removeRecipe(<item:immersiveengineering:connector_mv_relay>);
craftingTable.removeRecipe(<item:botania:fertilizer>);

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
    <tag:items:forge:nuggets/copper>, <item:minecraft:andesite>, <item:minecraft:andesite>,
]);

craftingTable.addShapeless("alloy_from_tin", <item:create:andesite_alloy>*2, [
    <tag:items:forge:nuggets/tin>, <item:minecraft:andesite>, <item:minecraft:andesite>,
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

craftingTable.addShaped("rod_bronze", <item:contenttweaker:bronze_rod> * 4, [
    [<tag:items:forge:ingots/bronze>],
    [<tag:items:forge:ingots/bronze>]
]);

craftingTable.addShaped("freezer", <item:custommachinery:custom_machine_item>.withTag({machine: "machinery:freezer" as string}), [
    [<item:minecraft:ice>, <item:minecraft:ice>, <item:minecraft:ice>],
    [<item:minecraft:ice>, <item:minecraft:barrel>, <item:minecraft:ice>],
    [<item:minecraft:ice>, <item:minecraft:ice>, <item:minecraft:ice>]
]);

craftingTable.addShapeless("silver1", <item:thermal:silver_dust> * 2, [
    <item:thermal:earth_charge>, <item:contenttweaker:rare_cluster>
]);

craftingTable.addShaped("pyrotheum", <item:contenttweaker:pyrotheum_dust>, [
    [<item:minecraft:blaze_powder>, <item:minecraft:blaze_powder>],
    [<item:minecraft:redstone>, <tag:items:forge:dusts/sulfur>]
]);

craftingTable.addShaped("cryotheum", <item:contenttweaker:cryotheum_dust>, [
    [<item:thermal:blizz_powder>, <item:thermal:blizz_powder>],
    [<item:minecraft:redstone>, <item:minecraft:snowball>]
]);

craftingTable.addShaped("aerotheum", <item:contenttweaker:aerotheum_dust>, [
    [<item:thermal:blitz_powder>, <item:thermal:blitz_powder>],
    [<item:minecraft:redstone>, <tag:items:forge:dusts/niter>]
]);

craftingTable.addShaped("petrotheum", <item:contenttweaker:petrotheum_dust>, [
    [<item:thermal:basalz_powder>, <item:thermal:basalz_powder>],
    [<item:minecraft:redstone>, <tag:items:forge:dusts/obsidian>]
]);

craftingTable.addShaped("hand", <item:create:brass_hand>, [
    [nul, alloy, nul],
    [<tag:items:forge:plates/lumium>, <tag:items:forge:plates/lumium>, <tag:items:forge:plates/lumium>],
    [nul, <tag:items:forge:plates/lumium>, nul]
]);

craftingTable.addShapeless("t3", <item:contenttweaker:coalmeal3>, [
    <item:contenttweaker:coalmeal2>, <item:contenttweaker:graphite_pellet>, <tag:items:forge:dusts/niter>
]);

craftingTable.addShaped("pipe1", <item:refinedpipes:basic_energy_pipe>*6, [
    [<tag:items:forge:plates/silver>, iron, <tag:items:forge:plates/silver>],
    [glass, <item:minecraft:redstone_block>, glass],
    [<tag:items:forge:plates/silver>, iron, <tag:items:forge:plates/silver>]
]);

craftingTable.addShaped("pipe2", <item:refinedpipes:improved_energy_pipe>*3, [
    [nul, <tag:items:forge:plates/brass>, nul],
    [<item:refinedpipes:basic_energy_pipe>, <item:refinedpipes:basic_energy_pipe>, <item:refinedpipes:basic_energy_pipe>],
    [nul, <tag:items:forge:plates/brass>, nul]
]);

craftingTable.addShaped("heavy", <item:immersiveengineering:heavy_engineering> * 4, [
    [<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:component_steel>, <item:immersiveengineering:sheetmetal_steel>],
    [<item:immersiveengineering:component_steel>, <item:thermal:lumium_ingot>, <item:immersiveengineering:component_steel>],
    [<item:immersiveengineering:sheetmetal_steel>, <item:immersiveengineering:component_steel>, <item:immersiveengineering:sheetmetal_steel>]
]);

craftingTable.addShaped("centrifuge", <item:custommachinery:custom_machine_item>.withTag({machine: "machinery:centrifuge" as string}), [
    [iron, <item:immersiveengineering:wirecoil_copper>, iron],
    [iron, <item:create:basin>, iron],
    [iron, <item:create:mechanical_bearing>, iron]
]);

craftingTable.addShaped("pipes", <item:prettypipes:pipe> * 4, [
    [nul, redstone, nul],
    [<tag:items:forge:ingots/silver>, glass, <tag:items:forge:ingots/silver>]
]);

craftingTable.addShapeless("upgrade", <item:prettypipes:blank_module> * 2, [
    <tag:items:forge:plates/silver>, <item:thermal:quartz_dust>, <item:minecraft:redstone>
]);

craftingTable.addShaped("extract_1", <item:prettypipes:low_extraction_module>, [
    [nul, <item:create:andesite_funnel>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("filter_1", <item:prettypipes:low_filter_module>, [
    [nul, <item:create:filter>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("speed_1", <item:prettypipes:low_speed_module>, [
    [<item:create:cogwheel>, <item:create:large_cogwheel>, <item:create:cogwheel>],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("low_priority_1", <item:prettypipes:low_low_priority_module>, [
    [nul, <item:minecraft:dirt>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("high_priority_1", <item:prettypipes:low_high_priority_module>, [
    [nul, <item:minecraft:iron_ingot>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("stack_limit", <item:prettypipes:stack_size_module>, [
    [nul, <item:create:andesite_tunnel>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("redstone", <item:prettypipes:redstone_module>, [
    [nul, <item:minecraft:redstone_torch>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("retrieval_1", <item:prettypipes:medium_retrieval_module>, [
    [nul, <tag:items:forge:gears/nickel>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <item:create:smart_chute>, nul]
]);

craftingTable.addShaped("extraction_2", <item:prettypipes:medium_extraction_module>, [
    [nul, iron, nul],
    [<tag:items:forge:ingots/brass>, <item:prettypipes:low_extraction_module>, <tag:items:forge:ingots/brass>],
    [nul, <item:minecraft:slime_ball>, nul]
]);

craftingTable.addShaped("filter_2", <item:prettypipes:medium_filter_module>, [
    [nul, iron, nul],
    [<tag:items:forge:ingots/brass>, <item:prettypipes:low_filter_module>, <tag:items:forge:ingots/brass>],
    [nul, <item:minecraft:slime_ball>, nul]
]);

craftingTable.addShaped("speed_2", <item:prettypipes:medium_speed_module>, [
    [nul, iron, nul],
    [<tag:items:forge:ingots/brass>, <item:prettypipes:low_speed_module>, <tag:items:forge:ingots/brass>],
    [nul, <item:minecraft:slime_ball>, nul]
]);

craftingTable.addShaped("high_priority_2", <item:prettypipes:medium_high_priority_module>, [
    [nul, iron, nul],
    [<tag:items:forge:ingots/tin>, <item:prettypipes:low_high_priority_module>, <tag:items:forge:ingots/tin>],
    [nul, <item:minecraft:slime_ball>, nul]
]);

craftingTable.addShaped("low_priority_2", <item:prettypipes:medium_low_priority_module>, [
    [nul, iron, nul],
    [<tag:items:forge:ingots/tin>, <item:prettypipes:low_low_priority_module>, <tag:items:forge:ingots/tin>],
    [nul, <item:minecraft:slime_ball>, nul]
]);

craftingTable.addShaped("round_robin", <item:prettypipes:round_robin_sorting_modifier>, [
    [nul, <item:create:turntable>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("random", <item:prettypipes:random_sorting_modifier>, [
    [nul, <item:create:analog_lever>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("belt", <item:create:belt_connector> * 2, [
    [<item:contenttweaker:infernal_rubber>, <item:contenttweaker:infernal_rubber>, <item:contenttweaker:infernal_rubber>],
    [<item:contenttweaker:infernal_rubber>, <item:contenttweaker:infernal_rubber>, <item:contenttweaker:infernal_rubber>]
]);

craftingTable.addShaped("tag", <item:prettypipes:tag_filter_modifier>, [
    [nul, <item:itemfilters:tag>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("mod", <item:prettypipes:mod_filter_modifier>, [
    [nul, <item:itemfilters:mod>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("nbt", <item:prettypipes:nbt_filter_modifier>, [
    [nul, <tag:items:minecraft:wool>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("damage", <item:prettypipes:damage_filter_modifier>, [
    [nul, <item:itemfilters:damage>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShaped("increase", <item:prettypipes:filter_increase_modifier>, [
    [nul, <item:create:attribute_filter>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <tag:items:forge:nuggets/silver>, nul]
]);

craftingTable.addShapeless("pipe_wrench", <item:prettypipes:wrench>, [
    <tag:items:forge:plates/iron>, <item:minecraft:stick>, <item:minecraft:stick>
]);

craftingTable.addShapeless("electrum_wire", <item:immersiveengineering:wire_electrum>, [
    <tag:items:forge:plates/lumium>, <item:immersiveengineering:wirecutter>.transformDamage()
]);

craftingTable.addShaped("mv_relay", <item:immersiveengineering:connector_mv_relay> * 8, [
    [nul, <item:thermal:lumium_ingot>, nul],
    [<item:minecraft:terracotta>, <item:thermal:lumium_ingot>, <item:minecraft:terracotta>]
]);

craftingTable.addShaped("mv_connector", <item:immersiveengineering:connector_mv> * 4, [
    [nul, <item:thermal:lumium_ingot>, nul],
    [<item:minecraft:terracotta>, <item:thermal:lumium_ingot>, <item:minecraft:terracotta>],
    [<item:minecraft:terracotta>, <item:thermal:lumium_ingot>, <item:minecraft:terracotta>]
]);

craftingTable.addShapeless("floral_fertilizer", <item:botania:fertilizer>, [
    <item:minecraft:bone_meal>, <item:contenttweaker:pure_powder>
]);

for color in constants.colors {
    var dye = <item:minecraft:${color}_dye>;
    var flower = <item:botania:${color}_mystical_flower>;
    craftingTable.addShapeless(color+"flower", flower, [
        dye, <item:contenttweaker:blank_flower>
    ]);
}

craftingTable.addShapeless("bronze_dust", <item:thermal:bronze_dust>, [<item:contenttweaker:bronze_half_dust>, <item:contenttweaker:bronze_half_dust>]);

craftingTable.addShaped("silver_coil", <item:contenttweaker:silver_coil>, [
    [nul, nul, redstone],
    [nul, <tag:items:forge:ingots/silver>, nul],
    [redstone, nul, nul]
]);