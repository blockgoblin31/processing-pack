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
    "washed_uncommon",
    "phosphate",
    "fire_stick",
    "extinguished_stick",
    "bronze_rod",
    "graphite_pellet",
    "enriched_common",
    "fake_melting",
    "fake_ingot_cast",
    "fake_pressure_chamber_with_plastic",
    "fake_plate_press",
    "fake_casting_basin_with_liquid_cobble_",
    "graphite_lollipop",
    "useless_uncommon",
    "uncommon_ingot",
    "uncommon_plastic",
    "uncommon_plate",
    "cactus_pulp",
    "cactus_shreds"
] as string[];
//the clusters with an _x_x are the processing items, like the common_cluster_1_1.
//is the first number is process method, in this case "1", the scrond number is the step.

val itemrarity = ["COMMON", "UNCOMMON", "RARE", "EPIC", "LEGENDARY", "UNCOMMON", "EPIC"] as string[];

for item in itemname{

    new ItemBuilder().build(item);//.withRarity(itemrarity[i])
}

val blockname = ["common_cluster", "uncommon_cluster", "rare_cluster", "epic_cluster", "legendary_cluster", "omega_cluster", "ultimate_cluster", "mythic_cluster", "celestial_cluster", "supreme_cluster", "improved_common", "improved_uncommon", "improved_rare", "improved_epic", "improved_legendary", "improved_omega", "improved_mythic", "improved_celestial", "petrified_log"] as string[];

for block in blockname{
    new BlockBuilder()
        .notSolid()
        .setRequiresTool()
        .withHarvestTool(<tooltype:pickaxe>)
        .withRenderType(BlockRenderType.CUTOUT)
        .withHardnessAndResistance(2f)
        .build(block);
}

val defaultFluidName = ["liquid_cobblestone", "molten_coal", "molten_andesite", "molten_uncommon_cluster", "gelid_cryotheum"] as string[];
val defaultFluidColor = [0xcccccc, 0x111111, 0xbbbbbb, 0xaa7777, 0x0066ff] as int[];
val defaultFluidMolten = [true, true, true, true, false] as bool[];
val defaultFluidLuminosity = [0, 5, 0, 5, 0] as int[];

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

new ItemBuilder().withMaxDamage(120).build("saw");