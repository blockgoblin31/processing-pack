<recipetype:naturesaura:tree_ritual>.removeRecipe(<item:naturesaura:token_joy>);
<recipetype:naturesaura:tree_ritual>.addRecipe("token_joy", <item:minecraft:oak_sapling>, <item:naturesaura:token_joy> * 2, 200, <item:naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld" as string}), <item:naturesaura:gold_leaf>, <tag:items:minecraft:small_flowers>, <item:farmersdelight:tomato>, <item:pneumaticcraft:chips>, <item:contenttweaker:natura_ingot>, <item:minecraft:air>, <item:minecraft:air>);
//<recipetype:naturesaura:tree_ritual>.addRecipe("name", sapling, output, time, north, south, east, west, southeast, northwest, northeast, southwest);
<recipetype:naturesaura:altar>.removeRecipe(<item:naturesaura:infused_iron>);
<recipetype:naturesaura:altar>.addRecipe("infused_iron", <item:contenttweaker:natura_ingot>, <item:naturesaura:infused_iron>, "naturesaura:overworld", 15000, 80);
<recipetype:naturesaura:altar>.removeRecipe(<item:naturesaura:tainted_gold>);
<recipetype:naturesaura:altar>.addRecipe("tainted_gold", <item:contenttweaker:natura_ingot>, <item:naturesaura:tainted_gold>, "naturesaura:nether", 15000, 80);