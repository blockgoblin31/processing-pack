#priority 100

import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.item.IIngredient;

public class constants {
    public static var colors = ["white", "brown", "gray", "light_gray", "red", "orange", "yellow", "lime", "green", "blue", "light_blue", "cyan", "purple", "magenta", "pink", "black"] as string[];
}
val end_woods = [<tag:items:betterendforge:mossy_glowshroom_logs>, <tag:items:betterendforge:lacugrove_logs>, <tag:items:betterendforge:end_lotus_logs>, <tag:items:betterendforge:pythdendron_logs>, <tag:items:betterendforge:dragon_tree_logs>, <tag:items:betterendforge:tenanea_logs>, <tag:items:betterendforge:helix_tree_logs>, <tag:items:betterendforge:umbrella_tree_logs>, <tag:items:betterendforge:jellyshroom_logs>, <tag:items:betterendforge:lucernia_logs>] as MCTag<MCItemDefinition>[];
<tag:items:custom:dynamos>.add(<item:thermal:dynamo_stirling>, <item:thermal:dynamo_compression>, <item:thermal:dynamo_magmatic>, <item:thermal:dynamo_numismatic>, <item:thermal:dynamo_lapidary>, <item:thermal:dynamo_disenchantment>, <item:thermal:dynamo_gourmand>);
for wood_type in end_woods {
    for log in wood_type.elements{
        <tag:items:custom:voidic_wood>.add(log.defaultInstance);
    }
}
for log in <tag:items:minecraft:logs_that_burn>.elements {
    <tag:items:custom:overworld_wood>.add(log);
}
for log in <tag:items:custom:voidic_wood>.elements {
    <tag:items:custom:overworld_wood>.remove(log);
}
for log in <tag:items:minecraft:logs>.elements {
    if log in <tag:items:minecraft:logs_that_burn> {
    } else {
        <tag:items:custom:infernal_wood>.add(log);
    }
}
<tag:items:forge:rods/bronze>.add(<item:contenttweaker:bronze_rod>);
<tag:items:forge:dusts/flour>.add(<item:create:wheat_flour>);
<tag:items:forge:ingots/verdentium>.add(<item:contenttweaker:verdentium_ingot>);
<tag:items:forge:nuggets/verdentium>.add(<item:contenttweaker:verdentium_nugget>);
<tag:items:forge:storage_blocks/verdentium>.add(<item:contenttweaker:verdentium_block>);
<tag:items:forge:gears/brass>.add(<item:contenttweaker:brass_gear>);
mods.jei.JEI.addInfo(<item:contenttweaker:common_cluster_1_1>, ["Drop this in water to get between 0 and 1 nuggets of iron and copper,", "and between 0 and 1 redstone dust"]);
mods.jei.JEI.addInfo(<item:contenttweaker:enriched_common>, ["Drop this in water to get between 1 and 3 nuggets of iron and copper,", "and between 0 and 4 redstone dust"]);
mods.jei.JEI.addInfo(<item:contenttweaker:pure_cluster>, ["Drop this in water to get between 1 and 2 crushed iron, copper, tin, and aluminum,", "and 2 to 5 redstone dust.", " ", "Drop this in sea water to get between 0 and 2 crushed iron and tin, 1 crushed silver,", "and 1 to 2 crushed nickel.", "Drop this in plant oil to get between 0 and 2 crushed copper and aluminum,", "and 1 crushed zinc"]);

Replacer.forOutput(<tag:items:custom:dynamos>).replace(<item:thermal:rf_coil>, <item:contenttweaker:silver_coil>).execute();

val metals = ["copper", "aluminum", "tin", "silver", "bronze", "brass", "iron", "nickel", "gold", "lead"] as string[];

var tags = [<tag:items:forge:ingots/copper>, <tag:items:forge:ingots/tin>, <tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/lead>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/uranium>, <tag:items:forge:nuggets/copper>, <tag:items:forge:ingots/nickel>, <tag:items:forge:nuggets/tin>, <tag:items:forge:nuggets/silver>, <tag:items:forge:nuggets/bronze>, <tag:items:forge:nuggets/lead>, <tag:items:forge:nuggets/nickel>, <tag:items:forge:storage_blocks/copper>, <tag:items:forge:storage_blocks/tin>, <tag:items:forge:storage_blocks/silver>, <tag:items:forge:storage_blocks/bronze>, <tag:items:forge:storage_blocks/nickel>, <tag:items:forge:storage_blocks/lead>] as MCTag<MCItemDefinition>[];
var items = [<item:create:copper_ingot>, <item:thermal:tin_ingot>, <item:thermal:bronze_ingot>, <item:thermal:lead_ingot>, <item:thermal:silver_ingot>, <item:immersiveengineering:ingot_uranium>, <item:create:copper_nugget>, <item:immersiveengineering:ingot_nickel>, <item:thermal:tin_nugget>, <item:thermal:silver_nugget>, <item:thermal:bronze_nugget>, <item:thermal:lead_nugget>, <item:immersiveengineering:nugget_nickel>, <item:create:copper_block>, <item:thermal:tin_block>, <item:thermal:silver_block>, <item:thermal:bronze_block>, <item:thermal:nickel_block>, <item:immersiveengineering:storage_lead>] as IItemStack[];
/*
for i, tag in tags {
    val works = (items[i] as MCItemDefinition).isIn(tag);
    if works == false {
        println("Bad Match!"+items[i] as string + "is not in"+ tag as string);
    }
    for item in tag.elements {
        tag.remove(item);
        if item.matches(items[i]) == false {
            //recipes.removeRecipe(item.defaultInstance);
            Replacer.forAllTypesExcluding(<recipetype:immersiveengineering:arc_furnace>).replace(item.defaultInstance, items[i]).suppressWarnings().execute();
        }
    }
    tag.add(items[i]);
}

for i, metal in metals {
//    var tag = <tagManager:items>.getTag("forge:plates/"+metal);
  //  println(tag as string);
    //for plate in tag.elements {
      //  println(plate as string);
    //}
}*/
