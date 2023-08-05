#priority 100

import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.recipes.WrapperRecipe;
import crafttweaker.api.util.BlockPos;
import crafttweaker.api.blocks.MCBlock;

public class constants {
    public static var colors = ["white", "brown", "gray", "light_gray", "red", "orange", "yellow", "lime", "green", "blue", "light_blue", "cyan", "purple", "magenta", "pink", "black"] as string[];
    public static var seed_type as IItemStack;
    public static var coords = [new BlockPos(96, 75, 0), new BlockPos(91, 75, 29), new BlockPos(77, 75, 56), new BlockPos(56, 75, 77), new BlockPos(29, 75, 91), new BlockPos(-1, 75, 96), new BlockPos(-30, 75, 91), new BlockPos(-57, 75, 77), new BlockPos(-78, 75, 56), new BlockPos(-92, 75, 29), new BlockPos(-96, 75, -1), new BlockPos(-92, 75, -30), new BlockPos(-78, 75, -57), new BlockPos(-57, 75, -78), new BlockPos(-30, 75, -92), new BlockPos(0, 75, -96), new BlockPos(29, 75, -92), new BlockPos(56, 75, -78), new BlockPos(77, 75, -57), new BlockPos(91, 75, -30)] as BlockPos[];
    public static var transform = {<item:mekanism:sawdust> : [<block:contenttweaker:blank_cluster>, <block:contenttweaker:terrestrial_cluster>], <item:contenttweaker:infernal_sawdust> : [<block:contenttweaker:blank_cluster>, <block:contenttweaker:infernal_cluster>], <item:contenttweaker:voidic_sawdust> : [<block:contenttweaker:blank_cluster>, <block:contenttweaker:voidic_cluster>], <item:contenttweaker:coalmeal7> : [<block:contenttweaker:improved_omega>, <block:contenttweaker:ultimate_cluster>], <item:contenttweaker:coalmeal6> : [<block:contenttweaker:improved_legendary>, <block:contenttweaker:omega_cluster>], <item:contenttweaker:coalmeal5> : [<block:contenttweaker:improved_epic>, <block:contenttweaker:legendary_cluster>], <item:contenttweaker:coalmeal4> : [<block:contenttweaker:improved_rare>, <block:contenttweaker:epic_cluster>], <item:contenttweaker:coalmeal3> : [<block:contenttweaker:improved_uncommon>, <block:contenttweaker:rare_cluster>], <item:contenttweaker:coalmeal2> : [<block:contenttweaker:improved_common>, <block:contenttweaker:uncommon_cluster>]} as MCBlock[][IItemStack];
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
  public unspl(tail as string) as string {
    if this.indexOf(tail) != null {
        var num as usize = this.indexOf(tail);
        return this[0 .. num-1];
    }
    return this;
  }
  public spl(head as string) as string {
    if this.indexOf(head) != null {
        return this[(this.indexOf(head) + head.length as usize) .. this.length];
    }
    return this;
  }
}
public expand IItemStack[] {
    public indexOf(element as IItemStack) as usize {
        for i, e in this {
            if e.matches(element) {return i;}
        }
        return this.length;
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
for item in loadedMods.getMod("thermal").items {
    if "machine" in item.translationKey {
        <tag:items:custom:machines>.add(item);
    }
}
mods.jei.JEI.addInfo(<item:contenttweaker:common_cluster_1_1>, ["Drop this in water to get between 0 and 1 nuggets of iron and copper,", "and between 0 and 1 redstone dust"]);
mods.jei.JEI.addInfo(<item:contenttweaker:enriched_common>, ["Drop this in water to get between 1 and 3 nuggets of iron and copper,", "and between 0 and 4 redstone dust"]);
mods.jei.JEI.addInfo(<item:contenttweaker:pure_cluster>, ["Drop this in water to get between 1 and 2 crushed iron, copper, tin, and aluminum,", "and 2 to 5 redstone dust.", " ", "Drop this in sea water to get between 0 and 2 crushed iron and tin, 1 crushed silver,", "and 1 to 2 crushed nickel.", "Drop this in plant oil to get between 0 and 2 crushed copper and aluminum,", "and 1 crushed zinc"]);
Replacer.forOutput(<tag:items:custom:dynamos>).replace(<item:thermal:rf_coil>, <item:contenttweaker:silver_coil>).execute();
Replacer.forMods("naturesaura").excluding(<recipetype:naturesaura:animal_spawner>, <recipetype:naturesaura:offering>, <recipetype:naturesaura:altar>, <recipetype:naturesaura:tree_ritual>).replace(<item:minecraft:iron_ingot>, <item:contenttweaker:natura_ingot>).execute();
Replacer.forMods("storagenetwork").replace(<item:minecraft:iron_nugget>, <item:naturesaura:infused_iron>).replace(<item:minecraft:gold_ingot>, <item:thermal:signalum_ingot>).replace(<item:minecraft:gold_block>, <item:thermal:enderium_ingot>).replace(<item:minecraft:iron_ingot>, <item:thermal:invar_ingot>).execute();
//Replacer.forOutput(<tag:items:tconstruct:casts/gold>, <recipetype:tconstruct:casting_table>).replace(<fluid:tconstruct:molten_gold>, <fluid:tconstruct:molten_aluminum>).execute();
//Replacer.forTypes(villagerTrades).replace(<item:minecraft:diamond_axe>, <item:mekanismtools:steel_axe>).execute();
<tag:blocks:minecraft:mushroom_grow_block>.add(<block:contenttweaker:blank_cluster>);
<block:minecraft:obsidian>.setHarvestLevel(2);
<tag:items:naturesaura:ancient_logs>.add(<item:naturesaura:ancient_log>);
<tag:items:naturesaura:ancient_logs>.add(<item:naturesaura:ancient_bark>);
<tag:items:forge:gears>.add(<item:contenttweaker:stone_gear>);
<tag:items:forge:gears/stone>.add(<item:contenttweaker:stone_gear>);
<tag:blocks:forge:storage_blocks/lapis>.add(<tag:blocks:forge:storage_blocks/steel>);
<tag:blocks:forge:storage_blocks/lapis>.remove(<block:minecraft:lapis_block>);