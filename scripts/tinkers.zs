import crafttweaker.api.item.IItemStack;

<recipetype:tconstruct:melting>.addOreMeltingRecipe("uncommon_simple", <item:contenttweaker:uncommon_cluster>, <fluid:tconstruct:molten_iron>*32, 1, 10, [<fluid:tconstruct:molten_aluminum>*64, <fluid:tconstruct:molten_bronze>*128, <fluid:thermal:redstone>*64]);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_redstone", <item:minecraft:air>, <fluid:thermal:redstone> * 144, <item:minecraft:redstone_block>, 90, false, false);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_redstone", <item:minecraft:air>, <fluid:thermal:redstone> * 16, <item:minecraft:redstone>, 10, false, true);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_andesite", <item:minecraft:air>, <fluid:contenttweaker:molten_andesite> * 1000, <item:minecraft:andesite>, 90, false, false);

<recipetype:tconstruct:alloying>.removeRecipe(<fluid:tconstruct:molten_signalum>);
<recipetype:tconstruct:alloying>.addRecipe("signalum", [<fluid:thermal:redstone>*4, <fluid:tconstruct:molten_silver>*9, <fluid:tconstruct:molten_copper>*27], <fluid:tconstruct:molten_signalum>*36, 50);

<recipetype:tconstruct:casting_basin>.removeRecipe(<item:tconstruct:smeltery_controller>);

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_coal", <item:tconstruct:gem_cast>, <fluid:contenttweaker:molten_coal> * 144, <item:minecraft:coal>, 10, false, true);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_coal_sand", <tag:items:tconstruct:casts/single_use/gem>, <fluid:contenttweaker:molten_coal> * 144, <item:minecraft:coal>, 10, false, false);
<recipetype:tconstruct:melting>.addOreMeltingRecipe("coal", <item:minecraft:coal_ore>, <fluid:contenttweaker:molten_coal>*144, 1, 10, [<fluid:contenttweaker:liquid_cobblestone>*1000]);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_coal", <item:minecraft:air>, <fluid:contenttweaker:molten_coal> * 1296, <item:minecraft:coal_block>, 90, false, false);

<recipetype:tconstruct:melting>.addOreMeltingRecipe("stone", <item:minecraft:stone>, <fluid:minecraft:lava>*1000, 1, 10);
<recipetype:tconstruct:melting>.addOreMeltingRecipe("cobblestone", <item:minecraft:cobblestone>, <fluid:contenttweaker:liquid_cobblestone>*1000, 1, 10);

<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/gold/gilded_blackstone");

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_rod_bronze", <item:tconstruct:rod_cast>, <fluid:tconstruct:molten_bronze> * 72, <item:contenttweaker:bronze_rod>, 10, false, true);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_rod_bronze_sand", <tag:items:tconstruct:casts/single_use/rod>, <fluid:tconstruct:molten_bronze> * 72, <item:contenttweaker:bronze_rod>, 10, false, false);

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_cluster", <item:tconstruct:ingot_cast>, <fluid:contenttweaker:molten_uncommon_cluster> * 144, <item:contenttweaker:uncommon_ingot>.withTag({SequencedAssembly: {Progress: 0.4 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 2 as int}}), 10, false, true);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_stone", <item:minecraft:air>, <fluid:minecraft:lava> * 1000, <item:minecraft:stone>, 90, false, false);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_cobblestone", <item:minecraft:air>, <fluid:contenttweaker:liquid_cobblestone> * 1000, <item:minecraft:cobblestone>, 90, false, false);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_uncommon", <item:contenttweaker:uncommon_plate>.withTag({SequencedAssembly: {Progress: 0.8 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 4 as int}}), <fluid:contenttweaker:liquid_cobblestone> * 1000, <item:contenttweaker:improved_uncommon>, 90, false, false);

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("andesite_alloy", <tag:items:forge:nuggets/tin>, <fluid:contenttweaker:molten_andesite> * 2000, <item:create:andesite_alloy> * 2, 45, false, false);
<recipetype:tconstruct:melting>.addMeltingRecipe("bronze_dust", <item:contenttweaker:bronze_half_dust>, <fluid:tconstruct:molten_bronze> * 72, 1, 10);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("smeltery_controller", <item:thermal:copper_gear>, <fluid:tconstruct:seared_stone> * 576, <item:tconstruct:smeltery_controller>, 200, true, false);
<recipetype:tconstruct:alloying>.addRecipe("seared_stone", [<fluid:contenttweaker:liquid_cobblestone> * 125, <fluid:tconstruct:molten_clay> * 125], <fluid:tconstruct:seared_stone> * 72, 50);

var remove = ["heater", "melter", "gauge", "fuel_tank", "ingot_tank"] as string[];
for item in remove {
    <recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/seared/"+item);
}

<recipetype:tconstruct:melting>.addMeltingRecipe("heater", <item:tconstruct:seared_heater>, <fluid:tconstruct:scorched_stone> * 1152, 600, 10);
<recipetype:tconstruct:melting>.addMeltingRecipe("melter", <item:tconstruct:seared_melter>, <fluid:tconstruct:scorched_stone> * 1296, 600, 10, [<fluid:tconstruct:molten_glass> * 1250]);
<recipetype:tconstruct:melting>.addMeltingRecipe("fuel_tank", <item:tconstruct:seared_fuel_tank>, <fluid:tconstruct:scorched_stone> * 1152, 600, 10, [<fluid:tconstruct:molten_glass> * 1000]);
<recipetype:tconstruct:melting>.addMeltingRecipe("ingot_tank", <item:tconstruct:seared_ingot_tank>, <fluid:tconstruct:scorched_stone> * 856, 600, 10, [<fluid:tconstruct:molten_glass> * 3000]);
<recipetype:tconstruct:melting>.addMeltingRecipe("fuel_gauge", <item:tconstruct:seared_fuel_gauge>, <fluid:tconstruct:scorched_stone> * 576, 600, 10, [<fluid:tconstruct:molten_glass> * 5000]);
<recipetype:tconstruct:melting>.addMeltingRecipe("ingot_gauge", <item:tconstruct:seared_ingot_gauge>, <fluid:tconstruct:scorched_stone> * 576, 600, 10, [<fluid:tconstruct:molten_glass> * 5000]);