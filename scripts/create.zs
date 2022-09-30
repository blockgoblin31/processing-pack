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
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_sawdust>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_blasting>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_cryogenic>))
);

<recipetype:create:mixing>.addRecipe("mixing_test_1", "none", <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}}), [<item:contenttweaker:infernal_sawdust>, <item:contenttweaker:common_cluster>]);


//<recipetype:create:cutting>.addRecipe(String name, IItemStack output, IIngredient input, @Optional(100) int duration)

<recipetype:create:cutting>.addRecipe("nether_sawdust", <item:contenttweaker:infernal_sawdust>, <tag:items:custom:infernal_wood>, 100);

<recipetype:create:mixing>.addRecipe("mixing_uncommon", "none", <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}}), [<item:contenttweaker:infernal_sawdust>, <item:contenttweaker:common_cluster>]);

<recipetype:create:splashing>.addRecipe("splashing_uncommon", [<item:contenttweaker:fake_blasting>], <item:contenttweaker:uncommon_cluster>);

<recipetype:create:milling>.addRecipe("milling_uncommon", [<item:thermal:tin_dust>, <item:thermal:copper_dust>, <item:thermal:iron_dust>, <item:minecraft:redstone>, <item:immersiveengineering:dust_aluminum>], <item:minecraft:dirt>);