import crafttweaker.api.item.IItemStack;

val uncommon_assembley1 = <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.6666667 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 2 as int}});
val uncommon_assebbley2 = <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}});

var blastFurnaceInputsOld = [] as IItemStack[];
var blastFurnaceOutputsOld = [] as IItemStack[];

var list1 = blastFurnaceInputsOld as stdlib.List<IItemStack>;
var list2 = blastFurnaceOutputsOld as stdlib.List<IItemStack>;

list1.add(uncommon_assebbley2);
list2.add(uncommon_assembley1);

var blastFurnaceInputs = blastFurnaceInputsOld as IItemStack[];
var blastFurnaceOutputs = blastFurnaceOutputsOld as IItemStack[];

for i, input in blastFurnaceInputs{
    var nameOld = i as string;
    var name = "customBlastFurnaceRecipe" + i;
    blastFurnace.addRecipe(name, blastFurnaceOutputs[i], input, 0, 100);
}