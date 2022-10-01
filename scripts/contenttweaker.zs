#loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.stairs.BlockBuilderStairs;
import mods.contenttweaker.block.basic.BlockBuilderBasic;
import mods.contenttweaker.block.pillar.BlockBuilderPillarRotatable;
import mods.contenttweaker.block.BlockRenderType;
import mods.contenttweaker.fluid.FluidBuilder;
import crafttweaker.api.util.MCResourceLocation;

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
    "common_cluster_1_1",
    "washed_uncommon"
] as string[];
//the clusters with an _x_x are the processing items, like the common_cluster_1_1.
//is the first number is process method, in this case "1", the scrond number is the step.

val itemrarity = ["COMMON", "UNCOMMON", "RARE", "EPIC", "LEGENDARY", "UNCOMMON", "EPIC"] as string[];

for item in itemname{

    new ItemBuilder().build(item);//.withRarity(itemrarity[i])
}

val blockname = ["common_cluster", "uncommon_cluster", "rare_cluster", "epic_cluster", "legendary_cluster", "omega_cluster", "ultimate_cluster", "improved_common", "improved_uncommon", "improved_rare", "improved_epic", "improved_legendary", "improved_omega", "petrified_log"] as string[];

for block in blockname{
    new BlockBuilder()
        .notSolid()
        .setRequiresTool()
        .withHarvestTool(<tooltype:pickaxe>)
        .withRenderType(BlockRenderType.CUTOUT)
        .build(block);
}

val defaultFluidName = [] as string[];
val defaultFluidColor = [] as int[];
val defaultFluidMolten = [] as bool[];
val defaultFluidLuminosity = [] as int[];

for i, name in defaultFluidName{
    new FluidBuilder(defaultFluidMolten[i], defaultFluidColor[i]).luminosity(defaultFluidLuminosity[i]).build(name);
}

val customFluidName = [] as string[];
val customFluidColor = [] as int[];
val customFluidMolten = [] as bool[];
val customFluidFlowing = [] as MCResourceLocation[];
val customFluidStill = [] as MCResourceLocation[];
val customFluidLuminosity = [] as int[];

for i, name in customFluidName{
    new FluidBuilder(customFluidMolten[i], customFluidColor[i], customFluidStill[i], customFluidFlowing[i]).luminosity(customFluidLuminosity[i]).build(name);
}