#priority 99

import crafttweaker.api.item.IItemStack;

var furnaceRemove = [<item:tconstruct:seared_brick>] as IItemStack[];

var furnaceInputs = [<item:tconstruct:grout>, <item:contenttweaker:common_cluster>] as IItemStack[];
var furnaceOutputs = [<item:tconstruct:scorched_brick>, <item:contenttweaker:common_cluster_1_1> * 2] as IItemStack[];

var blastFurnaceRemove = [<item:tconstruct:seared_brick>] as IItemStack[];

var blastFurnaceInputsOld = [<item:tconstruct:grout>, <item:contenttweaker:raw_infernal_rubber>] as IItemStack[];
var blastFurnaceOutputsOld = [<item:tconstruct:scorched_brick>, <item:contenttweaker:infernal_rubber>] as IItemStack[];

var list1 = blastFurnaceInputsOld as stdlib.List<IItemStack>;
var list2 = blastFurnaceOutputsOld as stdlib.List<IItemStack>;

val uncommon_assembley1 = <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}});
val uncommon_assembley2 = <item:contenttweaker:common_cluster>;

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

composter.setValue(<item:contenttweaker:cactus_shreds>, 0.1);
composter.setValue(<item:contenttweaker:cactus_pulp>, 0.3);