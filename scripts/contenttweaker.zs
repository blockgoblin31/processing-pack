#loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.stairs.BlockBuilderStairs;
import mods.contenttweaker.block.basic.BlockBuilderBasic;
import mods.contenttweaker.block.pillar.BlockBuilderPillarRotatable;
import mods.contenttweaker.block.BlockRenderType;

val itemname = [
    "common_cluster",
    "uncommon_cluster",
    "rare_cluster",
    "epic_cluster",
    "legendary_cluster",
    "omega_cluster",
    "ultimate_cluster",
    "infernal_sawdust",
    "coalmeal1",
    "coalmeal2",
    "coalmeal3",
    "coalmeal4",
    "coalmeal5",
    "coalmeal6",
    "coalmeal7",
    "voidic_sawdust",
    "useless_common",
    "fake_sawdust",
    "fake_blasting",
    "fake_cryogenic",
    "common_cluster_1_1"
] as string[];
//the clusters with an _x_x are the processing items, like the common_cluster_1_1.
//is the first number is process methot, in this case "1", the scrond number is the step.
val itemrarity = ["COMMON", "UNCOMMON", "RARE", "EPIC", "LEGENDARY", "UNCOMMON", "EPIC"] as string[];

for item in itemname{

    new ItemBuilder().build(item);//.withRarity(itemrarity[i])
}

val blockname = ["improved_common"] as string[];

for block in blockname{
    var current = new BlockBuilder();
        current.notSolid();
        current.setRequiresTool();
        current.withHarvestTool(<tooltype:pickaxe>);
        current.withRenderType(BlockRenderType.CUTOUT);
        current.build(block);
}

val blockname = [
    "common_cluster",
    "uncommon_cluster",
    "rare_cluster",
    "epic_cluster",
    "legendary_cluster",
    "omega_cluster",
    "ultimate_cluster",
    "improved_common",
    "improved_uncommon",
    "improved_rare",
    "improved_epic",
    "improved_legendary",
    "improved_omega"
] as string[];

for block in blockname{
    var current = new BlockBuilder();
        current.notSolid();
        current.setRequiresTool();
        current.withHarvestTool(<tooltype:pickaxe>);
        current.withRenderType(BlockRenderType.CUTOUT);
        current.build(block);
}
/*#loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.stairs.BlockBuilderStairs;
import mods.contenttweaker.block.basic.BlockBuilderBasic;
import mods.contenttweaker.block.pillar.BlockBuilderPillarRotatable;
import mods.contenttweaker.block.BlockRenderType;

val itemname = ["common_cluster", "uncommon_cluster", "rare_cluster", "epic_cluster", "legendary_cluster", "omega_cluster", "ultimate_cluster", "infernal_sawdust", "coalmeal1", "coalmeal2", "coalmeal3", "coalmeal4", "coalmeal5", "coalmeal6", "coalmeal7", "voidic_sawdust", "useless_common", "fake_sawdust", "fake_blasting", "fake_cryogenic"] as string[];
val itemrarity = ["COMMON", "UNCOMMON", "RARE", "EPIC", "LEGENDARY", "UNCOMMON", "EPIC"] as string[];

val test = [{""}]

var i = itemname.length;

for item in itemname{

    new ItemBuilder().withRarity(itemrarity[i]).build(item);//.withRarity(itemrarity[i])
}

val blockname = ["improved_common"] as string[];

for block in blockname{
    var current = new BlockBuilder();
        current.notSolid();
        current.setRequiresTool();
        current.withHarvestTool(<tooltype:pickaxe>);
        current.withRenderType(BlockRenderType.CUTOUT);
        current.build(block);
}*/