import mods.immersivepetroleum.ReservoirRegistry;
import mods.immersivepetroleum.ReservoirBuilder;

ReservoirRegistry.removeAll();
(new ReservoirBuilder(<fluid:contenttweaker:core_water>, 1000000, 10000000, 1000, 2)).build("core_fluid");