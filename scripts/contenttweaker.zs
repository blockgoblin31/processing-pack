#loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.stairs.BlockBuilderStairs;
import mods.contenttweaker.block.basic.BlockBuilderBasic;
import mods.contenttweaker.block.pillar.BlockBuilderPillarRotatable;
import mods.contenttweaker.block.BlockRenderType;

val itemname = ["infernal_sawdust", "coalmeal1", "coalmeal2", "coalmeal3", "coalmeal4", "coalmeal5", "coalmeal6", "coalmeal7", "voidic_sawdust", "useless_common", "useless_uncommon", "useless_rare", "useless_epic", "useless_legendary", "useless_omega", "fake_sawdust", "fake_blasting", "fake_cryogenic", "washed_uncommon"] as string[];
val itemrarity = ["COMMON", "UNCOMMON", "RARE", "EPIC", "LEGENDARY", "UNCOMMON", "EPIC"] as string[];

for item in itemname{

    new ItemBuilder().build(item);//.withRarity(itemrarity[i])
}

val blockname = ["common_cluster", "uncommon_cluster", "rare_cluster", "epic_cluster", "legendary_cluster", "omega_cluster", "ultimate_cluster", "improved_common", "improved_uncommon", "improved_rare", "improved_epic", "improved_legendary", "improved_omega"] as string[];

for block in blockname{
    var current = new BlockBuilder();
        current.notSolid();
        current.setRequiresTool();
        current.withHarvestTool(<tooltype:pickaxe>);
        current.withRenderType(BlockRenderType.CUTOUT);
        current.build(block);
}
