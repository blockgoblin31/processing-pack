<recipetype:tconstruct:melting>.addOreMeltingRecipe("uncommon_simple", <item:contenttweaker:uncommon_cluster>, <fluid:tconstruct:molten_iron>*10, 1, 10, [<fluid:tconstruct:molten_aluminum>*16, <fluid:tconstruct:molten_bronze>*32, <fluid:thermal:redstone>*16]);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_redstone", <item:minecraft:air>, <fluid:thermal:redstone> * 144, <item:minecraft:redstone_block>, 900, false, false);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_redstone", <item:minecraft:air>, <fluid:thermal:redstone> * 16, <item:minecraft:redstone>, 100, false, true);

<recipetype:tconstruct:alloying>.removeRecipe(<fluid:tconstruct:molten_signalum>);
<recipetype:tconstruct:alloying>.addRecipe("signalum", [<fluid:thermal:redstone>*64, <fluid:tconstruct:molten_silver>*144, <fluid:tconstruct:molten_copper>*432], <fluid:tconstruct:molten_signalum>*576, 50);

<recipetype:tconstruct:casting_basin>.removeRecipe(<item:tconstruct:smeltery_controller>);

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_coal", <item:tconstruct:gem_cast>, <fluid:contenttweaker:molten_coal> * 144, <item:minecraft:coal>, 100, false, true);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_coal_sand", <tag:items:tconstruct:casts/single_use/gem>, <fluid:contenttweaker:molten_coal> * 144, <item:minecraft:coal>, 100, false, false);
<recipetype:tconstruct:melting>.addOreMeltingRecipe("coal", <item:minecraft:coal_ore>, <fluid:contenttweaker:molten_coal>*173, 1, 10, [<fluid:contenttweaker:liquid_cobblestone>*1000]);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_coal", <item:minecraft:air>, <fluid:contenttweaker:molten_coal> * 1296, <item:minecraft:coal_block>, 900, false, false);

<recipetype:tconstruct:melting>.addOreMeltingRecipe("stone", <item:minecraft:stone>, <fluid:minecraft:lava>*600, 1, 10);
<recipetype:tconstruct:melting>.addOreMeltingRecipe("cobblestone", <item:minecraft:cobblestone>, <fluid:contenttweaker:liquid_cobblestone>*600, 1, 10);
