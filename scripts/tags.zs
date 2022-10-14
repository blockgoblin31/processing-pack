#priority 100

import crafttweaker.api.recipe.Replacer;

public class constants {
    public static var colors = ["white", "brown", "gray", "light_gray", "red", "orange", "yellow", "lime", "green", "blue", "light_blue", "cyan", "purple", "magenta", "pink", "black"] as string[];
}
<tag:items:custom:dynamos>.add(<item:thermal:dynamo_stirling>, <item:thermal:dynamo_compression>, <item:thermal:dynamo_magmatic>, <item:thermal:dynamo_numismatic>, <item:thermal:dynamo_lapidary>, <item:thermal:dynamo_disenchantment>, <item:thermal:dynamo_gourmand>);
<tag:items:custom:infernal_wood>.add(<item:minecraft:crimson_planks>, <item:minecraft:warped_planks>, <item:tconstruct:bloodshroom_planks>);
<tag:items:forge:rods/bronze>.add(<item:contenttweaker:bronze_rod>);
<tag:items:forge:dusts/flour>.add(<item:create:wheat_flour>);
mods.jei.JEI.addInfo(<item:contenttweaker:common_cluster_1_1>, ["Drop this in water to get between 0 and 1 nuggets of iron and copper,", "and between 0 and 1 redstone dust"]);
mods.jei.JEI.addInfo(<item:contenttweaker:enriched_common>, ["Drop this in water to get between 1 and 3 nuggets of iron and copper,", "and between 0 and 4 redstone dust"]);
mods.jei.JEI.addInfo(<item:contenttweaker:pure_cluster>, ["Drop this in water to get between 1 and 2 crushed iron, copper, tin, and aluminum,", "and 2 to 5 redstone dust.", " ", "Drop this in sea water to get between 0 and 2 crushed iron and tin, 1 crushed silver,", "and 1 to 2 crushed nickel.", "Drop this in plant oil to get between 0 and 2 crushed copper and aluminum,", "and 1 crushed zinc"]);

Replacer.forOutput(<tag:items:custom:dynamos>).replace(<item:thermal:rf_coil>, <item:contenttweaker:silver_coil>).execute();