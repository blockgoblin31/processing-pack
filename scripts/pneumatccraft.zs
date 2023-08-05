<recipetype:pneumaticcraft:explosion_crafting>.addRecipe("quartz", <item:contenttweaker:uncommon_cluster>, [<item:minecraft:quartz>, <item:minecraft:quartz>, <item:minecraft:quartz>], 50);
<recipetype:pneumaticcraft:explosion_crafting>.removeRecipe(<item:pneumaticcraft:ingot_iron_compressed>);
<recipetype:pneumaticcraft:explosion_crafting>.removeRecipe(<item:pneumaticcraft:compressed_iron_block>);
<recipetype:pneumaticcraft:explosion_crafting>.addRecipe("hard_compressed_iron_ingot", <tag:items:forge:ingots/tin>, [<item:pneumaticcraft:ingot_iron_compressed>], 75);
<recipetype:pneumaticcraft:explosion_crafting>.addRecipe("hard_compressed_iron_block", <tag:items:forge:storage_blocks/tin>, [<item:pneumaticcraft:compressed_iron_block>], 75);
<recipetype:pneumaticcraft:thermo_plant>.addRecipe("molten_andesite", <fluid:contenttweaker:liquid_cobblestone> * 1000, <item:minecraft:bone_meal>, <fluid:contenttweaker:molten_andesite> * 1000, <item:minecraft:air>, 1.0, 0);

<recipetype:pneumaticcraft:pressure_chamber>.removeRecipe(<item:pneumaticcraft:ingot_iron_compressed>);
<recipetype:pneumaticcraft:pressure_chamber>.removeRecipe(<item:pneumaticcraft:compressed_iron_block>);
<recipetype:pneumaticcraft:pressure_chamber>.addRecipe("ingot", [<tag:items:forge:ingots/tin>], [<item:pneumaticcraft:ingot_iron_compressed>], 2.0);
<recipetype:pneumaticcraft:pressure_chamber>.addRecipe("block", [<tag:items:forge:storage_blocks/tin>], [<item:pneumaticcraft:compressed_iron_block>], 2.0);

<recipetype:pneumaticcraft:pressure_chamber>.addRecipe("uncommon_plastic", [<item:contenttweaker:uncommon_ingot>.withTag({SequencedAssembly: {Progress: 0.4 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 2 as int}}), <item:pneumaticcraft:plastic>], [<item:contenttweaker:uncommon_plastic>.withTag({SequencedAssembly: {Progress: 0.6 as float, id: "crafttweaker:sequenced_assembly/rare_cluster" as string, Step: 3 as int}})], 2.0);

<recipetype:pneumaticcraft:thermo_plant>.addRecipe("graphite_pellet", <fluid:contenttweaker:liquid_cobblestone> * 0, <item:contenttweaker:graphite_dust>, <fluid:contenttweaker:molten_uncommon_cluster> * 0, <item:contenttweaker:graphite_pellet>, 1.0, 440);
<recipetype:pneumaticcraft:thermo_plant>.addRecipe("core_shard", <fluid:contenttweaker:core_water> * 100, <item:contenttweaker:nickel_wire>, <fluid:tconstruct:molten_nickel> * 64, <item:contenttweaker:core_shards>, 4.0, 440);
<recipetype:pneumaticcraft:thermo_plant>.addRecipe("liquid_stone", <fluid:contenttweaker:liquid_cobblestone> * 1000, <item:minecraft:stone>, <fluid:contenttweaker:liquid_stone> * 1000, <item:botania:pebble> * 2, 4.5, 0);

<recipetype:pneumaticcraft:pressure_chamber>.addRecipe("basalz", [<item:minecraft:gunpowder>], [<item:thermal:basalz_powder>], 4.0);

<recipetype:pneumaticcraft:thermo_plant>.addRecipe("oil", <fluid:contenttweaker:liquid_cobblestone> * 0, <item:minecraft:coal>, <fluid:pneumaticcraft:oil> * 100, <item:minecraft:air>, 4.0, 440);
