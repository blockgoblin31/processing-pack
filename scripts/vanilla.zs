
import crafttweaker.api.item.IItemStack;

var furnaceRemove = [<item:tconstruct:seared_brick>] as IItemStack[];

var furnaceInputs = [<item:tconstruct:grout>] as IItemStack[];
var furnaceOutputs = [<item:tconstruct:scorched_brick>] as IItemStack[];

var blastFurnaceRemove = [<item:tconstruct:seared_brick>] as IItemStack[];

var blastFurnaceInputsOld = [<item:tconstruct:grout>] as IItemStack[];
var blastFurnaceOutputsOld = [<item:tconstruct:scorched_brick>] as IItemStack[];

var list1 = blastFurnaceInputsOld as stdlib.List<IItemStack>;
var list2 = blastFurnaceOutputsOld as stdlib.List<IItemStack>;

val uncommon_assembley1 = <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.6666667 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 2 as int}});
val uncommon_assembley2 = <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}});

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

//recipes.removeRecipeByInput(<item:minecraft:coal_ore>);