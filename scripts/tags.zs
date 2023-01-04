#priority 100

import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.entity.AttributeModifier;
import crafttweaker.api.entity.AttributeOperation;
import crafttweaker.api.recipes.WrapperRecipe;

public class constants {
    public static var colors = ["white", "brown", "gray", "light_gray", "red", "orange", "yellow", "lime", "green", "blue", "light_blue", "cyan", "purple", "magenta", "pink", "black"] as string[];
    public static var addtribute = AttributeModifier.create("Add 1", 1, AttributeOperation.ADDITION);
}
public expand string {
  public substr(start as int, end as int) as string {
    return this[(start as usize) .. (end as usize)];
  }

  public substr(start as int) as string {
    return this[(start as usize) .. this.length];
  }
  public findbtwn(head as string, tail as string) as string {
    if this.indexOf(head) != null {
        var firstPos = (this.indexOf(head) + head.length) as usize;
        if this.indexOf(tail, firstPos) != null {
            var secondPos as usize = this.indexOf(tail, firstPos);
            return this[firstPos .. secondPos];
        }
    }
    if head == "" {
        var firstPos1 = 0 as usize;
        if this.indexOf(tail, firstPos1) != null {
            var secondPos1 as usize = this.indexOf(tail, firstPos1);
            return this[firstPos1 .. secondPos1];
        }
    }
    return this;
  }
  public revsubstr(tail as string) as string {
    if this.indexOf(tail) != null {
        var num as usize = this.indexOf(tail);
        return this[0 .. num];
    }
    return this;
  }
  public spl(head as string) as string {
    if this.indexOf(head) != null {
        return this[(this.indexOf(head) + 1 as usize) .. this.length];
    }
    return this;
  }
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
    if !(log in <tag:items:minecraft:logs_that_burn>) {
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
Replacer.forMods("naturesaura").excluding(<recipetype:naturesaura:animal_spawner>, <recipetype:naturesaura:offering>, <recipetype:naturesaura:altar>, <recipetype:naturesaura:tree_ritual>).replace(<item:minecraft:iron_ingot>, <item:contenttweaker:natura_ingot>).execute();

<tag:blocks:minecraft:mushroom_grow_block>.add(<block:contenttweaker:blank_cluster>);
<block:minecraft:obsidian>.setHarvestLevel(2);
