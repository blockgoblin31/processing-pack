<recipetype:tconstruct:melting>.addOreMeltingRecipe("uncommon_simple", <item:contenttweaker:uncommon_cluster>, <fluid:tconstruct:molten_bronze>*32, 1, 10, [<fluid:tconstruct:molten_aluminum>*16, <fluid:tconstruct:molten_iron>*16, <fluid:thermal:redstone>*16]);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_redstone", <item:minecraft:air>, <fluid:thermal:redstone> * 144, <item:minecraft:redstone_block>, 900, false, false);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_redstone", <item:minecraft:air>, <fluid:thermal:redstone> * 16, <item:minecraft:redstone>, 100, false, true);

<recipetype:tconstruct:alloying>.removeRecipe(<fluid:tconstruct:molten_signalum>);
<recipetype:tconstruct:alloying>.addRecipe("signalum", [<fluid:thermal:redstone>*64, <fluid:tconstruct:molten_silver>*144, <fluid:tconstruct:molten_copper>*432], <fluid:tconstruct:molten_signalum>*576, 50);