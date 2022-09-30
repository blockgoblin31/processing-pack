
import crafttweaker.api.item.IItemStack;

val uncommon_assembley1 = <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.6666667 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 2 as int}});
val uncommon_assebbley2 = <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}});
println(uncommon_assembley1 as string);
var blastFurnaceInputsOld = [] as IItemStack[];
var blastFurnaceOutputsOld = [] as IItemStack[];

var list1 = blastFurnaceInputsOld as stdlib.List<IItemStack>;
var list2 = blastFurnaceOutputsOld as stdlib.List<IItemStack>;

list1.add(uncommon_assebbley2);
list2.add(uncommon_assembley1);
println(list1 as string);
var blastFurnaceInputs = list1 as IItemStack[];
var blastFurnaceOutputs = list2 as IItemStack[];

for i, input in blastFurnaceInputs{
    var nameOld = i as string;
    var name = "customblastfurnacerecipe" + nameOld;
    blastFurnace.addRecipe(name, blastFurnaceOutputs[i], input, 0, 100);
}