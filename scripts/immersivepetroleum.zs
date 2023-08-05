import mods.immersivepetroleum.ReservoirRegistry;
import mods.immersivepetroleum.ReservoirBuilder;
import mods.immersivepetroleum.DistillationBuilder;
import mods.immersivepetroleum.DistillationTower;

ReservoirRegistry.removeAll();
(new ReservoirBuilder(<fluid:contenttweaker:core_water>, 1000000, 10000000, 1000, 2)).build("core_fluid");
DistillationTower.removeAll();
new DistillationBuilder()
    .setOutputFluids([<fluid:contenttweaker:liquid_stone>, <fluid:contenttweaker:liquid_cobble>])
    .setInputFluid(<tag:fluids:custom:cobblestone>, 2)
    .setEnergy(5)
    .setTime(2)
    .addByproduct(<item:minecraft:cobblestone>, 0)
    .build("liquid_cobble");