import crafttweaker.api.item.IItemStack;

//copper
val copper = <tag:items:forge:ingots/copper>;
val copper_plate = <tag:items:forge:plates/copper>;
val copper_gear = <tag:items:forge:gears/copper>;
val copper_nugget = <tag:items:forge:nuggets/copper>;
val copper_block = <tag:items:forge:storage_blocks/copper>;

//aluminum
val aluminum = <tag:items:forge:ingots/aluminum>;
val aluminum_plate = <tag:items:forge:plates/aluminum>;
val aluminum_gear = <tag:items:forge:gears/aluminum>;
val aluminum_nugget = <tag:items:forge:nuggets/aluminum>;
val aluminum_block = <tag:items:forge:storage_blocks/aluminum>;

//tin
val tin = <tag:items:forge:ingots/tin>;
val tin_plate = <tag:items:forge:plates/tin>;
val tin_gear = <tag:items:forge:gears/tin>;
val tin_nugget = <tag:items:forge:nuggets/tin>;
val tin_block = <tag:items:forge:storage_blocks/tin>;

//silver
val silver = <tag:items:forge:ingots/silver>;
val silver_plate = <tag:items:forge:plates/silver>;
val silver_gear = <tag:items:forge:gears/silver>;
val silver_nugget = <tag:items:forge:nuggets/silver>;
val silver_block = <tag:items:forge:storage_blocks/silver>;

//bronze
val bronze = <tag:items:forge:ingots/bronze>;
val bronze_plate = <tag:items:forge:plates/bronze>;
val bronze_gear = <tag:items:forge:gears/bronze>;
val bronze_nugget = <tag:items:forge:nuggets/bronze>;
val bronze_block = <tag:items:forge:storage_blocks/bronze>;

//brass
val brass = <tag:items:forge:ingots/brass>;
val brass_plate = <tag:items:forge:plates/brass>;
val brass_gear = <tag:items:forge:gears/brass>;
val brass_nugget = <tag:items:forge:nuggets/brass>;
val brass_block = <tag:items:forge:storage_blocks/brass>;

//iron
val iron = <tag:items:forge:ingots/iron>;
val iron_plate = <tag:items:forge:plates/iron>;
val iron_gear = <tag:items:forge:gears/iron>;
val iron_nugget = <tag:items:forge:nuggets/iron>;
val iron_block = <tag:items:forge:storage_blocks/iron>;

//gold
val gold = <tag:items:forge:ingots/gold>;
val gold_plate = <tag:items:forge:plates/gold>;
val gold_gear = <tag:items:forge:gears/gold>;
val gold_nugget = <tag:items:forge:nuggets/gold>;
val gold_block = <tag:items:forge:storage_blocks/gold>;

//lead
val lead = <tag:items:forge:ingots/lead>;
val lead_plate = <tag:items:forge:plates/lead>;
val lead_gear = <tag:items:forge:gears/lead>;
val lead_nugget = <tag:items:forge:nuggets/lead>;
val lead_block = <tag:items:forge:storage_blocks/lead>;

//verdentium
val verdentium = <tag:items:forge:ingots/verdentium>;
//val verdentium_plate = <tag:items:forge:plates/verdentium>;
//val verdentium_gear = <tag:items:forge:gears/verdentium>;
val verdentium_nugget = <tag:items:forge:nuggets/verdentium>;
val verdentium_block = <tag:items:forge:storage_blocks/verdentium>;

//invar
val invar = <tag:items:forge:ingots/invar>;
val invar_plate = <tag:items:forge:plates/invar>;
val invar_gear = <tag:items:forge:gears/invar>;
val invar_nugget = <tag:items:forge:nuggets/invar>;
val invar_block = <tag:items:forge:storage_blocks/invar>;

//lumium
val lumium = <tag:items:forge:ingots/lumium>;
val lumium_plate = <tag:items:forge:plates/lumium>;
val lumium_gear = <tag:items:forge:gears/lumium>;
val lumium_nugget = <tag:items:forge:nuggets/lumium>;
val lumium_block = <tag:items:forge:storage_blocks/lumium>;

//signalum
val signalum = <tag:items:forge:ingots/signalum>;
val signalum_plate = <tag:items:forge:plates/signalum>;
val signalum_gear = <tag:items:forge:gears/signalum>;
val signalum_nugget = <tag:items:forge:nuggets/signalum>;
val signalum_block = <tag:items:forge:storage_blocks/signalum>;

//nickel
val nickel = <tag:items:forge:ingots/nickel>;
val nickel_plate = <tag:items:forge:plates/nickel>;
val nickel_gear = <tag:items:forge:gears/nickel>;
val nickel_nugget = <tag:items:forge:nuggets/nickel>;
val nickel_block = <tag:items:forge:storage_blocks/nickel>;

import crafttweaker.api.item.IItemStack;

val scorched = <item:tconstruct:scorched_brick>;
val nul = <item:minecraft:air>;
val air = nul;
val glass = <tag:items:forge:glass>;
val alloy = <item:create:andesite_alloy>;
val redstone = <item:minecraft:redstone>;
val modules = ["low_priority", "high_priority", "extraction", "retrieval", "filter", "speed"] as string[];
val metals = ["copper", "aluminum", "tin", "silver", "bronze", "brass", "iron", "gold", "lead", "verdentium", "invar"] as string[];

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
craftingTable.removeRecipe(<tag:items:custom:machines>);
recipes.removeRecipe(<item:appliedenergistics2:silicon>);

var removeArray = [<item:minecraft:ender_eye>, <item:botania:terra_plate>, <item:thermal:enderium_dust>, <item:thermal:upgrade_augment_1>, <item:thermal:machine_frame>, <item:thermal:redstone_servo>] as IItemStack[];

for remove in removeArray {
    craftingTable.removeRecipe(remove);
}

craftingTable.addShapeless("first_coalmeal", <item:contenttweaker:coalmeal1>, [<item:minecraft:bone_meal>, <tag:items:forge:dusts/coal>]);
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
    [bronze_nugget, <tag:items:forge:stone>, bronze_nugget]
]);

craftingTable.addShaped("press", <item:create:mechanical_press>, [
    [nul, alloy, nul],
    [<item:create:cogwheel>, <item:create:andesite_casing>, <item:create:cogwheel>],
    [nul, iron_plate, nul]
]);

craftingTable.addShaped("whisk", <item:create:whisk>, [
    [nul, alloy, nul],
    [iron_plate, alloy, iron_plate],
    [nul, iron_plate, nul]
]);

craftingTable.addShaped("burner", <item:create:empty_blaze_burner>, [
    [silver_plate, silver_plate],
    [<item:minecraft:iron_bars>, <item:minecraft:iron_bars>]
]);

craftingTable.addShapeless("alloy_from_iron", <item:create:andesite_alloy>*2, [
    iron_nugget, iron_nugget, <item:minecraft:andesite>, <item:minecraft:andesite>,
]);

craftingTable.addShapeless("alloy_from_copper", <item:create:andesite_alloy>, [
    copper_nugget, <item:minecraft:andesite>, <item:minecraft:andesite>,
]);

craftingTable.addShapeless("alloy_from_tin", <item:create:andesite_alloy>*2, [
    tin_nugget, <item:minecraft:andesite>, <item:minecraft:andesite>,
]);

craftingTable.addShaped("spout", <item:create:spout>, [
    [bronze_plate],
    [<item:create:fluid_tank>],
    [copper_nugget]
]);

craftingTable.addShaped("drain", <item:create:item_drain>, [
    [<item:minecraft:iron_bars>],
    [<item:create:fluid_tank>],
    [bronze_plate]
]);

craftingTable.addShaped("drill", <item:create:mechanical_drill>, [
    [nul, alloy, nul],
    [alloy, bronze, alloy],
    [nul, <item:create:andesite_casing>, nul]
]);

craftingTable.addShaped("saw", <item:create:mechanical_saw>, [
    [nul, iron_plate, nul],
    [iron_plate, bronze, iron_plate],
    [nul, <item:create:andesite_casing>, nul]
]);

craftingTable.addShaped("propeller", <item:create:propeller>, [
    [nul, copper_plate, nul],
    [copper_plate, alloy, copper_plate],
    [nul, copper_plate, nul]
]);

craftingTable.addShaped("enriched", <item:contenttweaker:enriched_common>, [
    [nul, redstone, nul],
    [redstone, <item:contenttweaker:common_cluster_1_1>, redstone],
    [nul, redstone, nul]
]);

craftingTable.addShaped("rod_bronze", <item:contenttweaker:bronze_rod> * 4, [
    [bronze],
    [bronze]
]);

craftingTable.addShaped("freezer", <item:custommachinery:custom_machine_item>.withTag({machine: "machinery:freezer" as string}), [
    [<item:minecraft:snow>, <item:minecraft:snow>, <item:minecraft:snow>],
    [<item:minecraft:snow>, <item:minecraft:barrel>, <item:minecraft:snow>],
    [<item:minecraft:snow>, <item:minecraft:snow>, <item:minecraft:snow>]
]);

craftingTable.addShapeless("silver1", <item:thermal:silver_dust> * 2, [
    <item:thermal:earth_charge>, <item:contenttweaker:rare_cluster>
]);

craftingTable.addShaped("pyrotheum", <item:contenttweaker:pyrotheum_dust>, [
    [<item:minecraft:blaze_powder>, <item:minecraft:blaze_powder>],
    [redstone, <tag:items:forge:dusts/sulfur>]
]);

craftingTable.addShaped("cryotheum", <item:contenttweaker:cryotheum_dust>, [
    [<item:thermal:blizz_powder>, <item:thermal:blizz_powder>],
    [redstone, <item:minecraft:snowball>]
]);

craftingTable.addShaped("aerotheum", <item:contenttweaker:aerotheum_dust>, [
    [<item:thermal:blitz_powder>, <item:thermal:blitz_powder>],
    [redstone, <tag:items:forge:dusts/niter>]
]);

craftingTable.addShaped("petrotheum", <item:contenttweaker:petrotheum_dust>, [
    [<item:thermal:basalz_powder>, <item:thermal:basalz_powder>],
    [redstone, <tag:items:forge:dusts/obsidian>]
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
    [silver_plate, iron, silver_plate],
    [glass, <item:minecraft:redstone_block>, glass],
    [silver_plate, iron, silver_plate]
]);

craftingTable.addShaped("pipe2", <item:refinedpipes:improved_energy_pipe>*3, [
    [verdentium_nugget, brass_plate, verdentium_nugget],
    [<item:refinedpipes:basic_energy_pipe>, <item:refinedpipes:basic_energy_pipe>, <item:refinedpipes:basic_energy_pipe>],
    [verdentium_nugget, brass_plate, verdentium_nugget]
]);

craftingTable.addShaped("pipe3", <item:refinedpipes:basic_fluid_pipe>*4, [
    [silver_plate, iron, silver_plate],
    [glass, verdentium, glass],
    [silver_plate, iron, silver_plate]
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
    [silver, glass, silver]
]);

craftingTable.addShapeless("upgrade", <item:prettypipes:blank_module> * 2, [
    silver_plate, <item:thermal:quartz_dust>, redstone
]);

craftingTable.addShaped("extract_1", <item:prettypipes:low_extraction_module>, [
    [nul, <item:create:andesite_funnel>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("filter_1", <item:prettypipes:low_filter_module>, [
    [nul, <item:create:filter>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("speed_1", <item:prettypipes:low_speed_module>, [
    [<item:create:cogwheel>, <item:create:large_cogwheel>, <item:create:cogwheel>],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("low_priority_1", <item:prettypipes:low_low_priority_module>, [
    [nul, <item:minecraft:dirt>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("high_priority_1", <item:prettypipes:low_high_priority_module>, [
    [nul, iron, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("stack_limit", <item:prettypipes:stack_size_module>, [
    [nul, <item:create:andesite_tunnel>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("redstone", <item:prettypipes:redstone_module>, [
    [nul, <item:minecraft:redstone_torch>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("retrieval_1", <item:prettypipes:low_retrieval_module>, [
    [nul, <tag:items:forge:gears/nickel>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, <item:create:smart_chute>, nul]
]);

for i, module in modules {
    if i == 3 {
        craftingTable.addShaped(module+"_2", <item:prettypipes:medium_${module}_module>, [
            [nul, verdentium, nul],
            [lead, <item:prettypipes:low_${module}_module>, lead],
            [redstone, gold_gear, redstone]
        ]);
    } else if i <= 1 {
        craftingTable.addShaped(module+"_2", <item:prettypipes:medium_${module}_module>, [
            [nul, iron, nul],
            [tin, <item:prettypipes:low_${module}_module>, tin],
            [verdentium_nugget, verdentium_nugget, verdentium_nugget]
        ]);
    } else {
        craftingTable.addShaped(module+"_2", <item:prettypipes:medium_${module}_module>, [
        [nul, iron, nul],
        [<tag:items:forge:ingots/brass>, <item:prettypipes:low_${module}_module>, <tag:items:forge:ingots/brass>],
        [nul, verdentium, nul]
        ]);
    }
}

craftingTable.addShaped("round_robin", <item:prettypipes:round_robin_sorting_modifier>, [
    [nul, <item:create:turntable>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("random", <item:prettypipes:random_sorting_modifier>, [
    [nul, <item:create:analog_lever>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("belt", <item:create:belt_connector> * 2, [
    [<item:contenttweaker:infernal_rubber>, <item:contenttweaker:infernal_rubber>, <item:contenttweaker:infernal_rubber>],
    [<item:contenttweaker:infernal_rubber>, <item:contenttweaker:infernal_rubber>, <item:contenttweaker:infernal_rubber>]
]);

craftingTable.addShaped("tag", <item:prettypipes:tag_filter_modifier>, [
    [nul, <item:itemfilters:tag>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("mod", <item:prettypipes:mod_filter_modifier>, [
    [nul, <item:itemfilters:mod>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("nbt", <item:prettypipes:nbt_filter_modifier>, [
    [nul, <tag:items:minecraft:wool>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("damage", <item:prettypipes:damage_filter_modifier>, [
    [nul, <item:itemfilters:damage>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShaped("increase", <item:prettypipes:filter_increase_modifier>, [
    [nul, <item:create:attribute_filter>, nul],
    [redstone, <item:prettypipes:blank_module>, redstone],
    [nul, silver_nugget, nul]
]);

craftingTable.addShapeless("pipe_wrench", <item:prettypipes:wrench>, [
    iron_plate, <item:minecraft:stick>, <item:minecraft:stick>
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
    craftingTable.addShapeless(color+"_flower", flower, [
        dye, <item:contenttweaker:blank_flower>
    ]);
}

craftingTable.addShapeless("bronze_dust", <item:thermal:bronze_dust>, [<item:contenttweaker:bronze_half_dust>, <item:contenttweaker:bronze_half_dust>]);

craftingTable.addShaped("silver_coil", <item:contenttweaker:silver_coil>, [
    [nul, nul, redstone],
    [nul, silver, nul],
    [redstone, nul, nul]
]);

craftingTable.addShapeless("floral_fertilizer_2", <item:botania:fertilizer> * 2, [
    <item:minecraft:bone_meal>, <item:contenttweaker:purer_powder>, <item:minecraft:bone_meal>
]);

craftingTable.addShaped("verdentium_ingot", <item:contenttweaker:verdentium_ingot>, [
    [verdentium_nugget, verdentium_nugget, verdentium_nugget],
    [verdentium_nugget, verdentium_nugget, verdentium_nugget],
    [verdentium_nugget, verdentium_nugget, verdentium_nugget]
]);

craftingTable.addShaped("verdentium_block", <item:contenttweaker:verdentium_block>, [
    [verdentium, verdentium, verdentium],
    [verdentium, verdentium, verdentium],
    [verdentium, verdentium, verdentium]
]);

craftingTable.addShapeless("nickel_wire", <item:contenttweaker:nickel_wire>, [<tag:items:forge:plates/nickel>, <item:immersiveengineering:wirecutter>.transformDamage()]);

craftingTable.addShapeless("coalmeal4", <item:contenttweaker:coalmeal4>, [<item:contenttweaker:coalmeal3>, <item:contenttweaker:core_dust>, <tag:items:forge:dusts/mana>]);

craftingTable.addShaped("megemerald_empty", <item:contenttweaker:empty_megemerald>, [
    [<item:minecraft:emerald>, <item:minecraft:emerald>, <item:minecraft:emerald>],
    [<item:minecraft:emerald>, <item:thermal:jar>, <item:minecraft:emerald>],
    [<item:minecraft:emerald>, <item:minecraft:emerald>, <item:minecraft:emerald>]
]);

craftingTable.addShaped("machine_frame", <item:thermal:machine_frame>, [
    [lead, glass, lead],
    [glass, <item:contenttweaker:upgrade_augment_0>, glass],
    [lead, glass, lead]
]);

craftingTable.addShaped("redstone_servo", <item:thermal:redstone_servo>, [
    [redstone],
    [silver],
    [redstone]
]);

craftingTable.addShaped("botania_pebbles", <item:minecraft:cobblestone>, [
    [<item:botania:pebble>, <item:botania:pebble>],
    [<item:botania:pebble>, <item:botania:pebble>]
]);

craftingTable.addShaped("network_root", <item:storagenetwork:master>, [
    [<tag:items:forge:storage_blocks/quartz>, <item:storagenetwork:kabel>, <tag:items:forge:storage_blocks/quartz>],
    [<item:storagenetwork:kabel>, invar_block, <item:storagenetwork:kabel>],
    [<tag:items:forge:storage_blocks/quartz>, <item:storagenetwork:kabel>, <tag:items:forge:storage_blocks/quartz>]
]);

craftingTable.addShaped("hardened_components", <item:thermal:upgrade_augment_1>, [
    [invar, glass, invar],
    [glass, <item:contenttweaker:upgrade_augment_0>, glass],
    [invar, glass, invar]
]);

craftingTable.addShaped("strong_resonator", <item:contenttweaker:strong_resonator>, [
    [nul, brass_gear, nul],
    [silver_plate, <item:create:rose_quartz>, silver_plate],
    [nul, silver_plate, nul]
]);

craftingTable.addShaped("middling_resonator", <item:contenttweaker:middling_resonator>, [
    [nul, brass_gear, nul],
    [brass_plate, <item:create:rose_quartz>, brass_plate],
    [nul, brass_plate, nul]
]);

craftingTable.addShaped("weak_resonator", <item:contenttweaker:weak_resonator>, [
    [nul, brass_gear, nul],
    [iron_plate, <item:create:rose_quartz>, iron_plate],
    [nul, iron_plate, nul]
]);

var metal = <item:thermal:lumium_ingot>;

craftingTable.addShaped("redstone_furnace", <item:thermal:machine_furnace>, [
    [nul, redstone, nul],
    [metal, <item:thermal:machine_frame>, metal],
    [bronze_gear, <item:thermal:rf_coil>, bronze_gear]
]);

craftingTable.addShaped("centrifugal_seperator", <item:thermal:machine_centrifuge>, [
    [nul, tin_plate, nul],
    [metal, <item:thermal:machine_frame>, metal],
    [<tag:items:forge:gears/constantan>, <item:thermal:rf_coil>, <tag:items:forge:gears/constantan>]
]);

craftingTable.addShaped("alchemical_imbuer", <item:thermal:machine_brewer>, [
    [nul, <item:minecraft:brewing_stand>, nul],
    [glass, <item:thermal:machine_frame>, glass],
    [lumium_gear, <item:thermal:rf_coil>, lumium_gear]
]);

craftingTable.addShaped("fluid_encapsulator", <item:thermal:machine_bottler>, [
    [nul, redstone, nul],
    [metal, <item:thermal:machine_frame>, metal],
    [<tag:items:forge:gears/emerald>, <item:thermal:rf_coil>, <tag:items:forge:gears/emerald>]
]);

metal = <item:thermal:invar_ingot>;

craftingTable.addShaped("blast_chiller", <item:thermal:machine_chiller>, [
    [nul, <item:minecraft:blue_ice>, nul],
    [<item:minecraft:blue_ice>, <item:thermal:machine_frame>, <item:minecraft:blue_ice>],
    [invar_gear, <item:thermal:rf_coil>, invar_gear]
]);

craftingTable.addShaped("fractionating_still", <item:thermal:machine_refinery>, [
    [nul, <item:minecraft:bucket>, nul],
    [metal, <item:thermal:machine_frame>, metal],
    [copper_gear, <item:thermal:rf_coil>, copper_gear]
]);

craftingTable.addShaped("sawmill", <item:thermal:machine_sawmill>, [
    [nul, <item:thermal:saw_blade>, nul],
    [metal, <item:thermal:machine_frame>, metal],
    [bronze_gear, <item:thermal:rf_coil>, bronze_gear]
]);

metal = <item:thermal:signalum_ingot>;

craftingTable.addShaped("induction_smelter", <item:thermal:machine_smelter>, [
    [nul, <item:minecraft:blast_furnace>, nul],
    [metal, <item:thermal:machine_frame>, metal],
    [brass_gear, <item:thermal:rf_coil>, brass_gear]
]);

craftingTable.addShaped("pulverizer", <item:thermal:machine_pulverizer>, [
    [nul, <item:create:crushing_wheel>, nul],
    [<item:minecraft:flint>, <item:thermal:machine_frame>, <item:minecraft:flint>],
    [signalum_gear, <item:thermal:rf_coil>, signalum_gear]
]);

craftingTable.addShaped("magma_crucible", <item:thermal:machine_crucible>, [
    [nul, <item:minecraft:magma_block>, nul],
    [metal, <item:thermal:machine_frame>, metal],
    [lumium_gear, <item:thermal:rf_coil>, lumium_gear]
]);

metal = <item:thermal:enderium_ingot>;

craftingTable.addShaped("sequential_fabricator", <item:thermal:machine_crafter>, [
    [nul, <item:create:mechanical_crafter>, nul],
    [metal, <item:thermal:machine_frame>, metal],
    [signalum_gear, <item:thermal:rf_coil>, signalum_gear]
]);

metal = <item:thermal:enderium_plate>;

craftingTable.addShaped("phytogenic_insolator", <item:thermal:machine_insolator>, [
    [nul, <item:thermal:phytogro>, nul],
    [metal, <item:thermal:machine_frame>, metal],
    [lumium_gear, <item:thermal:rf_coil>, lumium_gear]
]);

craftingTable.addShaped("pyrolyzer", <item:thermal:machine_pyrolyzer>, [
    [nul, <item:minecraft:blaze_rod>, nul],
    [metal, <item:thermal:machine_frame>, metal],
    [gold_gear, <item:thermal:rf_coil>, gold_gear]
]);

metal = <item:thermal:enderium_ingot>;

craftingTable.addShaped("multiservo_press", <item:thermal:machine_press>, [
    [nul, <item:create:mechanical_press>, nul],
    [metal, <item:thermal:machine_frame>, metal],
    [nickel_gear, <item:thermal:rf_coil>, nickel_gear]
]);

craftingTable.addShapeless("verdentium_from_block", <item:contenttweaker:verdentium_ingot>*9, [verdentium_block]);

craftingTable.addShapeless("verdentium_from_ingot", <item:contenttweaker:verdentium_nugget>*9, [verdentium]);

craftingTable.addShaped("stone_gear", <item:contenttweaker:stone_gear>, [
    [air, <item:minecraft:cobblestone>, air],
    [<item:minecraft:cobblestone>, <item:minecraft:stick>, <item:minecraft:cobblestone>],
    [air, <item:minecraft:cobblestone>, air]
]);

craftingTable.removeRecipe(<item:appliedenergistics2:grindstone>);

craftingTable.addShaped("grindstone", <item:appliedenergistics2:grindstone>, [
    [<item:minecraft:stone>, <item:minecraft:stone>, <item:minecraft:stone>],
    [<item:contenttweaker:stone_gear>, <item:minecraft:furnace>, <item:contenttweaker:stone_gear>],
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]
]);

craftingTable.addShaped("terra_plate", <item:botania:terra_plate>, [
    [<tag:items:forge:storage_blocks/steel>, <tag:items:forge:storage_blocks/steel>, <tag:items:forge:storage_blocks/steel>],
    [<item:botania:rune_water>, <tag:items:forge:storage_blocks/manasteel>, <item:botania:rune_fire>],
    [<item:botania:rune_earth>, <item:botania:rune_mana>, <item:botania:rune_air>]
]);