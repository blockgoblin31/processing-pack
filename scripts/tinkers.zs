import crafttweaker.api.item.IItemStack;

<recipetype:tconstruct:melting>.addOreMeltingRecipe("uncommon_simple", <item:contenttweaker:uncommon_cluster>, <fluid:tconstruct:molten_iron>*32, 1, 100, [<fluid:tconstruct:molten_aluminum>*64, <fluid:tconstruct:molten_bronze>*128, <fluid:thermal:redstone>*64]);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_redstone", <item:minecraft:air>, <fluid:thermal:redstone> * 144, <item:minecraft:redstone_block>, 900, false, false);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_redstone", <item:minecraft:air>, <fluid:thermal:redstone> * 16, <item:minecraft:redstone>, 20, true, false);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_andesite", <item:minecraft:air>, <fluid:contenttweaker:molten_andesite> * 1000, <item:minecraft:andesite>, 900, false, true);

<recipetype:tconstruct:alloying>.removeRecipe(<fluid:tconstruct:molten_signalum>);
<recipetype:tconstruct:alloying>.addRecipe("signalum_alloy", [<fluid:thermal:redstone>*4, <fluid:tconstruct:molten_silver>*9, <fluid:tconstruct:molten_copper>*27], <fluid:tconstruct:molten_signalum>*36, 50);

<recipetype:tconstruct:casting_basin>.removeRecipe(<item:tconstruct:smeltery_controller>);

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_coal", <item:tconstruct:gem_cast>, <fluid:contenttweaker:molten_coal> * 144, <item:minecraft:coal>, 100, false, false);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_coal_sand", <tag:items:tconstruct:casts/single_use/gem>, <fluid:contenttweaker:molten_coal> * 144, <item:minecraft:coal>, 100, true, false);
<recipetype:tconstruct:melting>.addOreMeltingRecipe("coal", <item:minecraft:coal_ore>, <fluid:contenttweaker:molten_coal>*144, 1, 100, [<fluid:contenttweaker:liquid_cobblestone>*1000]);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_coal", <item:minecraft:air>, <fluid:contenttweaker:molten_coal> * 1296, <item:minecraft:coal_block>, 900, false, false);

<recipetype:tconstruct:melting>.addOreMeltingRecipe("stone", <item:minecraft:stone>, <fluid:minecraft:lava>*500, 1, 10);
<recipetype:tconstruct:melting>.addOreMeltingRecipe("cobblestone", <item:minecraft:cobblestone>, <fluid:contenttweaker:liquid_cobblestone>*500, 1, 10);

<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/gold/gilded_blackstone");

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_rod_bronze", <item:tconstruct:rod_cast>, <fluid:tconstruct:molten_bronze> * 72, <item:contenttweaker:bronze_rod>, 100, false, false);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_rod_bronze_sand", <tag:items:tconstruct:casts/single_use/rod>, <fluid:tconstruct:molten_bronze> * 72, <item:contenttweaker:bronze_rod>, 100, true, false);

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_cluster", <item:tconstruct:ingot_cast>, <fluid:contenttweaker:molten_base_cluster> * 144, <item:contenttweaker:uncommon_ingot>.withTag({SequencedAssembly: {Progress: 0.4 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 2 as int}}), 100, false, false);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_stone", <item:minecraft:air>, <fluid:minecraft:lava> * 1000, <item:minecraft:stone>, 900, false, false);
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_cobblestone", <item:minecraft:air>, <fluid:contenttweaker:liquid_cobblestone> * 1000, <item:minecraft:cobblestone>, 900, false, false);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("item_casting_basin_uncommon", <item:contenttweaker:uncommon_plate>.withTag({SequencedAssembly: {Progress: 0.8 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 4 as int}}), <fluid:contenttweaker:liquid_cobblestone> * 1000, <item:contenttweaker:improved_uncommon>, 900, false, false);

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("andesite_alloy", <tag:items:forge:nuggets/tin>, <fluid:contenttweaker:molten_andesite> * 2000, <item:create:andesite_alloy> * 2, 45, false, false);
<recipetype:tconstruct:melting>.addMeltingRecipe("bronze_half_dust", <item:contenttweaker:bronze_half_dust>, <fluid:tconstruct:molten_bronze> * 72, 1, 10);

<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("smeltery_controller", <item:thermal:copper_gear>, <fluid:tconstruct:seared_stone> * 576, <item:tconstruct:smeltery_controller>, 200, true, false);
<recipetype:tconstruct:alloying>.addRecipe("seared_stone", [<fluid:contenttweaker:liquid_cobblestone> * 125, <fluid:tconstruct:molten_clay> * 125], <fluid:tconstruct:seared_stone> * 72, 50);

var remove = ["heater", "melter", "gauge", "fuel_tank", "ingot_tank"] as string[];
for item in remove {
    <recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/seared/"+item);
}

<recipetype:tconstruct:melting>.addMeltingRecipe("heater", <item:tconstruct:seared_heater>, <fluid:tconstruct:scorched_stone> * 1152, 600, 10);
<recipetype:tconstruct:melting>.addMeltingRecipe("melter", <item:tconstruct:seared_melter>, <fluid:tconstruct:scorched_stone> * 1296, 600, 100, [<fluid:tconstruct:molten_glass> * 1250]);
<recipetype:tconstruct:melting>.addMeltingRecipe("fuel_tank", <item:tconstruct:seared_fuel_tank>, <fluid:tconstruct:scorched_stone> * 1152, 600, 100, [<fluid:tconstruct:molten_glass> * 1000]);
<recipetype:tconstruct:melting>.addMeltingRecipe("ingot_tank", <item:tconstruct:seared_ingot_tank>, <fluid:tconstruct:scorched_stone> * 856, 600, 100, [<fluid:tconstruct:molten_glass> * 3000]);
<recipetype:tconstruct:melting>.addMeltingRecipe("fuel_gauge", <item:tconstruct:seared_fuel_gauge>, <fluid:tconstruct:scorched_stone> * 576, 600, 100, [<fluid:tconstruct:molten_glass> * 5000]);
<recipetype:tconstruct:melting>.addMeltingRecipe("ingot_gauge", <item:tconstruct:seared_ingot_gauge>, <fluid:tconstruct:scorched_stone> * 576, 600, 100, [<fluid:tconstruct:molten_glass> * 5000]);

<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_nickel_wire", <item:tconstruct:wire_cast>, <fluid:tconstruct:molten_nickel> * 72, <item:contenttweaker:nickel_wire>, 20, false, false);
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("item_casting_table_nickel_wire_sand", <tag:items:tconstruct:casts/single_use/wire>, <fluid:tconstruct:molten_nickel> * 72, <item:contenttweaker:nickel_wire>, 20, true, false);

<recipetype:tconstruct:alloying>.addRecipe("rare_base", [<fluid:contenttweaker:liquid_stone> * 500, <fluid:tconstruct:molten_tin> * 96, <fluid:thermal:redstone> * 160, <fluid:tconstruct:molten_iron> * 32, <fluid:tconstruct:molten_aluminum> * 64], <fluid:contenttweaker:molten_base_cluster> * 18, 50);

<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/invar/dust");
<recipetype:tconstruct:alloying>.removeByName("tconstruct:smeltery/alloys/molten_enderium");
<recipetype:tconstruct:casting_table>.removeRecipe(<item:thermal:signalum_ingot>);
<recipetype:tconstruct:casting_table>.removeRecipe(<item:thermal:signalum_gear>);
<recipetype:tconstruct:casting_table>.removeRecipe(<item:thermal:signalum_nugget>);
<recipetype:tconstruct:casting_table>.removeRecipe(<item:thermal:signalum_plate>);
<recipetype:tconstruct:casting_table>.removeRecipe(<item:thermal:signalum_coin>);
<recipetype:tconstruct:casting_basin>.removeRecipe(<item:thermal:signalum_block>);
<recipetype:tconstruct:alloying>.removeByName("tconstruct:smeltery/alloys/molten_invar");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/seared/grout");
<recipetype:tconstruct:melting>.addMeltingRecipe("scorched_grout", <item:tconstruct:grout>, <fluid:tconstruct:scorched_stone> * 144, 600, 100);

for item in <tag:items:tconstruct:casts/gold>.elements {
    var recipe = <recipetype:tconstruct:casting_table>.getRecipesByOutput(item.defaultInstance)[0];
    var text = recipe.commandString.findbtwn(": [", ">]");
    <recipetype:tconstruct:casting_table>.removeRecipe(item.defaultInstance);    
    if text[1] == 't' {
        <recipetype:tconstruct:casting_table>.addItemCastingRecipe(item.registryName.path, <tagmanager:items>.getTag(text[11 .. text.length]), <fluid:tconstruct:molten_aluminum> * 144, item.defaultInstance, 40, true, false);
    } else {
        <recipetype:tconstruct:casting_table>.addItemCastingRecipe(item.registryName.path, <item:${text[6 .. text.length]}>, <fluid:tconstruct:molten_aluminum> * 144, item.defaultInstance, 40, true, false);
    }
}