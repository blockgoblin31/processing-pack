<recipetype:pneumaticcraft:explosion_crafting>.addRecipe("quartz", <item:contenttweaker:uncommon_cluster>, [<item:minecraft:quartz>, <item:minecraft:quartz>, <item:minecraft:quartz>], 50);
<recipetype:pneumaticcraft:explosion_crafting>.removeRecipe(<item:pneumaticcraft:ingot_iron_compressed>);
<recipetype:pneumaticcraft:explosion_crafting>.removeRecipe(<item:pneumaticcraft:compressed_iron_block>);
<recipetype:pneumaticcraft:explosion_crafting>.addRecipe("hard_compressed_iron_ingot", <tag:items:forge:ingots/tin>, [<item:pneumaticcraft:ingot_iron_compressed>], 75);
<recipetype:pneumaticcraft:explosion_crafting>.addRecipe("hard_compressed_iron_block", <tag:items:forge:storage_blocks/tin>, [<item:pneumaticcraft:compressed_iron_block>], 75);
<recipetype:pneumaticcraft:thermo_plant>.addRecipe("xp_bottling", <fluid:contenttweaker:liquid_cobblestone> * 1000, <item:minecraft:bone_meal>, <fluid:contenttweaker:molten_andesite> * 1000, <item:minecraft:air>, 1.0, 0);

<recipetype:pneumaticcraft:pressure_chamber>.removeRecipe(<item:pneumaticcraft:ingot_iron_compressed>);
<recipetype:pneumaticcraft:pressure_chamber>.removeRecipe(<item:pneumaticcraft:compressed_iron_block>);
<recipetype:pneumaticcraft:pressure_chamber>.addRecipe("ingot", [<tag:items:forge:ingots/tin>], [<item:pneumaticcraft:ingot_iron_compressed>], 2.0);
<recipetype:pneumaticcraft:pressure_chamber>.addRecipe("block", [<tag:items:forge:storage_blocks/tin>], [<item:pneumaticcraft:compressed_iron_block>], 2.0);

<recipetype:pneumaticcraft:heat_frame_cooling>.addRecipe("slimeball_to_snowball", <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.6666667 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 2 as int}}), <item:contenttweaker:improved_common>, 258);

<recipetype:pneumaticcraft:pressure_chamber>.addRecipe("uncommon_plastic", [<item:contenttweaker:uncommon_ingot>.withTag({SequencedAssembly: {Progress: 0.4 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 2 as int}}), <item:pneumaticcraft:plastic>], [<item:contenttweaker:uncommon_plastic>.withTag({SequencedAssembly: {Progress: 0.6 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 3 as int}})], 2.0);

<recipetype:pneumaticcraft:thermo_plant>.addRecipe("melting_uncommon", <fluid:contenttweaker:liquid_cobblestone> * 0, <item:contenttweaker:uncommon_cluster>, <fluid:contenttweaker:molten_uncommon_cluster> * 144, <item:minecraft:air>, 1.0, 100);
<recipetype:pneumaticcraft:thermo_plant>.addRecipe("graphite_pellet", <fluid:contenttweaker:liquid_cobblestone> * 0, <item:contenttweaker:graphite_dust>, <fluid:contenttweaker:molten_uncommon_cluster> * 0, <item:contenttweaker:graphite_pellet>, 1.0, 500);

<recipetype:pneumaticcraft:pressure_chamber>.addRecipe("blaze", [<item:minecraft:gunpowder>], [<item:thermal:basalz_powder>], 4.0);