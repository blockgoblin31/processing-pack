<recipetype:tconstruct:melting>.addOreMeltingRecipe("uncommon_simple", <item:contenttweaker:uncommon_cluster>, <fluid:tconstruct:molten_iron>*32, 1, 10, [<fluid:tconstruct:molten_aluminum>*64, <fluid:tconstruct:molten_bronze>*128, <fluid:thermal:redstone>*64]);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_redstone", <item:minecraft:air>, <fluid:thermal:redstone> * 144, <item:minecraft:redstone_block>, 90, false, false);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_redstone", <item:minecraft:air>, <fluid:thermal:redstone> * 16, <item:minecraft:redstone>, 10, false, true);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_andesite", <item:minecraft:air>, <fluid:contenttweaker:molten_andesite> * 1000, <item:minecraft:andesite>, 90, false, false);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_andesite", <item:minecraft:air>, <fluid:contenttweaker:molten_andesite> * 500, <item:minecraft:andesite>, 900, false, false);

<recipetype:tconstruct:alloying>.removeRecipe(<fluid:tconstruct:molten_signalum>);
<recipetype:tconstruct:alloying>.addRecipe("signalum", [<fluid:thermal:redstone>*64, <fluid:tconstruct:molten_silver>*144, <fluid:tconstruct:molten_copper>*432], <fluid:tconstruct:molten_signalum>*576, 50);

<recipetype:tconstruct:casting_basin>.removeRecipe(<item:tconstruct:smeltery_controller>);

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_coal", <item:tconstruct:gem_cast>, <fluid:contenttweaker:molten_coal> * 144, <item:minecraft:coal>, 10, false, true);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_coal_sand", <tag:items:tconstruct:casts/single_use/gem>, <fluid:contenttweaker:molten_coal> * 144, <item:minecraft:coal>, 10, false, false);
<recipetype:tconstruct:melting>.addOreMeltingRecipe("coal", <item:minecraft:coal_ore>, <fluid:contenttweaker:molten_coal>*144, 1, 10, [<fluid:contenttweaker:liquid_cobblestone>*1000]);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_coal", <item:minecraft:air>, <fluid:contenttweaker:molten_coal> * 1296, <item:minecraft:coal_block>, 90, false, false);

<recipetype:tconstruct:melting>.addOreMeltingRecipe("stone", <item:minecraft:stone>, <fluid:minecraft:lava>*500, 1, 10);
<recipetype:tconstruct:melting>.addOreMeltingRecipe("cobblestone", <item:minecraft:cobblestone>, <fluid:contenttweaker:liquid_cobblestone>*500, 1, 10);

<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/gold/gilded_blackstone");

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_rod_bronze", <item:tconstruct:rod_cast>, <fluid:tconstruct:molten_bronze> * 72, <item:contenttweaker:bronze_rod>, 10, false, true);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_rod_bronze_sand", <tag:items:tconstruct:casts/single_use/rod>, <fluid:tconstruct:molten_bronze> * 72, <item:contenttweaker:bronze_rod>, 10, false, false);

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_cluster", <item:tconstruct:ingot_cast>, <fluid:contenttweaker:molten_uncommon_cluster> * 144, <item:contenttweaker:uncommon_ingot>.withTag({SequencedAssembly: {Progress: 0.4 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 2 as int}}), 10, false, true);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_stone", <item:minecraft:air>, <fluid:minecraft:lava> * 1000, <item:minecraft:stone>, 90, false, false);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_cobblestone", <item:minecraft:air>, <fluid:contenttweaker:liquid_cobblestone> * 1000, <item:minecraft:cobblestone>, 90, false, false);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_uncommon", <item:contenttweaker:uncommon_plate>.withTag({SequencedAssembly: {Progress: 0.8 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 4 as int}}), <fluid:contenttweaker:liquid_cobblestone> * 1000, <item:contenttweaker:improved_uncommon>, 90, false, false);

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("andesite_alloy", <tag:items:forge:nuggets/tin>, <fluid:contenttweaker:molten_andesite> * 2000, <item:create:andesite_alloy> * 2, 45, false, false);
