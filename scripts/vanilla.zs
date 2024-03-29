#priority 99

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.MCItemDefinition;

var furnaceRemove = [<item:immersiveengineering:nugget_aluminum>, <item:thermal:invar_ingot>, <item:thermal:signalum_ingot>, <item:thermal:enderium_ingot>, <item:tconstruct:seared_brick>] as IItemStack[];

var furnaceInputs = [<item:contenttweaker:core_ore>, <item:contenttweaker:verdentium_grit>, <item:tconstruct:grout>, <item:contenttweaker:common_cluster>,<item:contenttweaker:natura_dust>] as IItemStack[];
var furnaceOutputs = [<item:contenttweaker:core_ingot>, <item:contenttweaker:verdentium_ingot>, <item:tconstruct:scorched_brick>, <item:contenttweaker:common_cluster_1_1> * 2, <item:contenttweaker:natura_ingot>] as IItemStack[];
var furnaceTagInputs = [<tag:items:forge:dusts/emerald>] as MCTag<MCItemDefinition>[];
var furnaceTagOutputs = [<item:minecraft:emerald>] as IItemStack[];

var blastFurnaceRemove = [<item:thermal:invar_ingot>, <item:thermal:signalum_ingot>, <item:thermal:enderium_ingot>, <item:tconstruct:seared_brick>] as IItemStack[];

var blastFurnaceInputsOld = [<item:tconstruct:grout>, <item:contenttweaker:raw_infernal_rubber>, <item:contenttweaker:common_cluster>] as IItemStack[];
var blastFurnaceOutputsOld = [<item:tconstruct:scorched_brick>, <item:contenttweaker:infernal_rubber>, <item:contenttweaker:common_cluster_1_1>*2] as IItemStack[];

var list1 = blastFurnaceInputsOld as stdlib.List<IItemStack>;
var list2 = blastFurnaceOutputsOld as stdlib.List<IItemStack>;

val uncommon_assembley1 = <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}});
val uncommon_assembley2 = <item:contenttweaker:uncommon_base>;

list1.add(uncommon_assembley2);
list2.add(uncommon_assembley1);

var blastFurnaceInputs = list1 as IItemStack[];
var blastFurnaceOutputs = list2 as IItemStack[];

for item in blastFurnaceRemove{
    blastFurnace.removeRecipe(item);
}

for i, input in blastFurnaceInputs{
    var nameOld = i as string;
    var name = "customblastfurnacerecipe" + nameOld;
    blastFurnace.addRecipe(name, blastFurnaceOutputs[i], input, 0, 100);
}

for item in furnaceRemove{
    furnace.removeRecipe(item);
}

for i, input in furnaceInputs{
    furnace.addRecipe("customfurnacerecipe" + i as string, furnaceOutputs[i], input, 0, 100);
}
for i, input in furnaceTagInputs{
    furnace.addRecipe("custom_furnace_recipe_"+i as string, furnaceTagOutputs[i], input, 0, 100);
}

composter.setValue(<item:contenttweaker:cactus_shreds>, 0.1);
composter.setValue(<item:contenttweaker:cactus_pulp>, 0.3);