/* default recipe
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("cluster")
    .transitionTo(<item:contenttweaker:unfinished_cluster>)
    .require(<item:contenttweaker:cluster>)
    .loops(1)
    .addOutput(<item:contenttweaker:cluster>, 1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:machine>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:machine>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:machine>))
);
*/

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("uncommon_cluster")
    .transitionTo(<item:contenttweaker:useless_common>)
    .require(<item:contenttweaker:common_cluster>)
    .loops(1)
    .addOutput(<item:contenttweaker:improved_common>, 1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_blasting>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_sawdust>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_cryogenic>))
);

<recipetype:create:mixing>.addRecipe("mixing_uncommon", "none", <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.66666667 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 2 as int}}), [<item:contenttweaker:infernal_sawdust>, <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}})]);
<recipetype:create:mixing>.addRecipe("mixing_coal", "none", <item:minecraft:coal_ore>, [<item:contenttweaker:petrified_log>], [<fluid:contenttweaker:liquid_cobblestone>*1000]);

<recipetype:create:splashing>.addRecipe("splashing_uncommon", [<item:contenttweaker:washed_uncommon>], <item:contenttweaker:uncommon_cluster>);

<recipetype:create:milling>.addRecipe("milling_uncommon", [<item:thermal:tin_dust>, <item:thermal:copper_dust>, <item:thermal:iron_dust>, <item:minecraft:redstone>, <item:immersiveengineering:dust_aluminum>], <item:contenttweaker:washed_uncommon>);

<recipetype:create:milling>.addRecipe("milling_coal", [<item:mekanism:dust_coal>], <item:minecraft:coal>);

<recipetype:create:cutting>.addRecipe("nether_sawdust", <item:contenttweaker:infernal_sawdust>, <tag:items:custom:infernal_wood>, 100);
//<recipetype:create:cutting>.addRecipe("overworld_sawdust", <item:mekanism:sawdust>, <tag:items:custom:overworld_wood>, 100);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("petrification").require(<tag:items:minecraft:logs_that_burn>).transitionTo(<item:minecraft:oak_log>).loops(50).addOutput(<item:contenttweaker:petrified_log>, 1).addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(10)));
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("hot_stick").require(<item:contenttweaker:extinguished_stick>).transitionTo(<item:contenttweaker:extinguished_stick>).loops(16).addOutput(<item:contenttweaker:graphite_lollipop>, 1).addStep(<recipetype:create:pressing>.factory(), (rb) => rb.require(<item:mekanism:dust_coal>)));
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("too_hot_stick")
    .require(<item:contenttweaker:fire_stick>)
    .transitionTo(<item:contenttweaker:fire_stick>)
    .loops(16)
    .addOutput(<item:contenttweaker:graphite_lollipop>, 1)
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.require(<item:mekanism:dust_coal>))
    .addOutput(<item:contenttweaker:extinguished_stick>, 1)
);

<recipetype:create:filling>.addRecipe("filling_test", <item:contenttweaker:fire_stick>, <tag:items:forge:rods/bronze>, <fluid:minecraft:lava> * 1000);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("rare_cluster")
    .transitionTo(<item:contenttweaker:useless_uncommon>)
    .require(<item:contenttweaker:uncommon_cluster>)
    .loops(1)
    .addOutput(<item:contenttweaker:rare_cluster>, 1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_melting>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_ingot_cast>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_pressure_chamber_with_plastic>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_plate_press>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_casting_basin_with_liquid_cobble_>))
);

<recipetype:create:milling>.addRecipe("gunpowder1", [<item:minecraft:gunpowder> % 65], <item:minecraft:flint>);
<recipetype:create:crushing>.addRecipe("gunpowder1", [<item:minecraft:gunpowder> % 65, <item:minecraft:gunpowder> % 40], <item:minecraft:flint>);

<recipetype:create:mixing>.addRecipe("salt_water", "none", <fluid:exnihilosequentia:sea_water>*1000, [<item:mekanism:salt>], [<fluid:minecraft:water> * 1000]);

<recipetype:create:mixing>.removeByName("create:mixing/lava_from_cobble");
<recipetype:create:mixing>.removeRecipe(<item:create:andesite_alloy>);
<recipetype:create:mixing>.removeRecipe(<item:create:chromatic_compound>);
<recipetype:create:filling>.removeRecipe(<item:create:blaze_cake>);
<recipetype:create:crushing>.removeRecipe(<item:create:cinder_flour>);
<recipetype:create:milling>.addRecipe("milling_flour", [<item:create:cinder_flour>], <item:minecraft:weeping_vines>);
<recipetype:create:milling>.addRecipe("quartz", [<item:thermal:quartz_dust>], <item:minecraft:quartz>);

<recipetype:create:mixing>.addRecipe("rare_cluster", "heated", <item:contenttweaker:melted_cluster>, [<item:contenttweaker:rare_cluster>]);

<recipetype:create:compacting>.addRecipe("compacting_rubber", "none", <item:contenttweaker:raw_infernal_rubber>, [<item:create:cinder_flour>], [<fluid:minecraft:water> * 1000], 200);

<recipetype:create:splashing>.addRecipe("extinguish", [<item:contenttweaker:extinguished_stick>], <item:contenttweaker:fire_stick>);
