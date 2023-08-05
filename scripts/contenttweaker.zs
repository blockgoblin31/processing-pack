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
import crafttweaker.api.food.MCFood;

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
    "cactus_shreds",
    "pyrotheum_dust",
    "cryotheum_dust",
    "petrotheum_dust",
    "aerotheum_dust",
    "melted_cluster",
    "pure_cluster",
    "cluster_rock",
    "raw_infernal_rubber",
    "infernal_rubber",
    "pure_powder",
    "blank_flower",
    "bronze_half_dust",
    "graphite_dust",
    "silver_coil",
    "verdentium_nugget",
    "verdentium_ingot",
    "purer_powder",
    "brass_gear",
    "core_shards",
    "core_gem",
    "core_dust",
    "impure_powder",
    "core_t3_cluster",
    "cluster_stone_mixture",
    "allgomerated_t3",
    "nickel_wire",
    "fake_mechanical_crafting_with_core_shards",
    "fake_crushing",
    "fake_deploying_on_stone",
    "fake_terra_plate_with_core_gem_and_voidic_sawdust",
    "useless_rare",
    "useless_epic",
    "useless_legendary",
    "useless_mythic",
    "useless_omega",
    "useless_celestial",
    "fake_sandpaper_polishing",
    "megemerald",
    "empty_megemerald",
    "epic_powder",
    "lighter_epic",
    "light_epic",
    "heavy_epic",
    "heavier_epic",
    "pure_terrestrial_sawdust",
    "pure_infernal_sawdust",
    "pure_voidic_sawdust",
    "light_terrestrial",
    "light_infernal",
    "light_voidic",
    "heavy_terrestrial",
    "heavy_infernal",
    "heavy_voidic",
    "light_terrestrial_block",
    "light_infernal_block",
    "light_voidic_block",
    "heavy_terrestrial_block",
    "heavy_infernal_block",
    "heavy_voidic_block",
    "verdentium_grit",
    "verdent_slice",
    "zinc_dust",
    "purest_powder",
    "natura_dust",
    "natura_ingot",
    "uncommon_base",
    "rare_base",
    "epic_base",
    "legendary_base",
    "omega_base",
    "ultimate_base",
    "celestial_base",
    "mythic_base",
    "upgrade_augment_0",
    "slag_dust",
    "air_catalyst",
    "earth_catalyst",
    "fire_catalyst",
    "water_catalyst",
    "core_ingot",
    "stone_gear"
] as string[];
//the clusters with an _x_x are the processing items, like the common_cluster_1_1.
//is the first number is process method, in this case "1", the scrond number is the step.
for item in itemname{

    new ItemBuilder().build(item);//.withRarity(itemrarity[i])
}

val clustername = ["common_cluster", "uncommon_cluster", "rare_cluster", "epic_cluster", "legendary_cluster", "omega_cluster", "ultimate_cluster", "mythic_cluster", "celestial_cluster", "supreme_cluster", "improved_common", "improved_uncommon", "improved_rare", "improved_epic", "improved_legendary", "improved_omega", "improved_mythic", "improved_celestial", "blank_cluster", "terrestrial_cluster", "infernal_cluster", "voidic_cluster", "core_ore"] as string[];

for block in clustername{
    new BlockBuilder()
        .notSolid()
        .setRequiresTool()
        .withHarvestTool(<tooltype:pickaxe>)
        .withRenderType(BlockRenderType.CUTOUT)
        .withHardnessAndResistance(2f)
        .build(block);
}

val blockname = ["verdentium_block", "petrified_log", "freezer", "centrifuge"] as string[];

for block in blockname {
    new BlockBuilder()
        .setRequiresTool()
        .withHarvestTool(<tooltype:pickaxe>)
        .withHardnessAndResistance(2f)
        .build(block);
}

val defaultFluidName = ["liquid_cobblestone", "molten_coal", "molten_andesite", "molten_uncommon_cluster", "chromatic_mixture", "core_water", "saturated_water", "saturated_core_water", "liquid_stone", "liquid_cobble", "molten_base_cluster"] as string[];
val defaultFluidColor = [0xcccccc, 0x111111, 0xbbbbbb, 0xaa7777, 0x0f1b00, 0x333333, 0x3F76E4, 0x333333, 0xcccccc, 0xbbbbbb, 0x666666] as int[];
val defaultFluidMolten = [true, true, true, true, false, false, false, false, false, true, true] as bool[];
val defaultFluidLuminosity = [0, 5, 0, 5, 0, 10, 0, 5, 0, 0, 4] as int[];

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

val durabilityItems = ["strong_resonator", "middling_resonator", "weak_resonator"] as string[];

for name in durabilityItems {
    new ItemBuilder()
        .withMaxDamage(120)
        .build(name);
}

new ItemBuilder().withMaxStackSize(1).withFood(new MCFood(0, 1).setCanEatWhenFull(true)).build("wandering_trader_bucket");

new BlockBuilder().notSolid().withRenderType(BlockRenderType.CUTOUT).build("verdent_fruit");