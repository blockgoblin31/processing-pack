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
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:infernal_sawdust>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:voidic_sawdust>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:uncommon_cluster>))
);

<recipetype:create:mixing>.addRecipe("mixing_test_1", "none", <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}}), [<item:contenttweaker:infernal_sawdust>, <item:contenttweaker:common_cluster>]);