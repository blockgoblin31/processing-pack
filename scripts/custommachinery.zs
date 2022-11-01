mods.custommachinery.CMRecipeBuilder.create("machinery:freezer", 40)
    .requireItem(<item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}}))
    .produceItem(<item:contenttweaker:improved_common>)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:centrifuge", 60)
    .requireItem(<item:contenttweaker:melted_cluster>, "input")
    .produceItem(<item:contenttweaker:pure_cluster>, "output")
    .produceItem(<item:minecraft:cobblestone>)
    .requireEnergy(1000)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:coarse_filter>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:saturated_water>*500, "fluid_input")
    .produceItem(<item:minecraft:redstone>, "filtered")
    .produceFluid(<fluid:contenttweaker:lightly_saturated_water>*500, "fluid_output")
    .requireEnergy(250)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:medium_filter>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:lightly_saturated_water>*500, "fluid_input")
    .produceItem(<item:thermal:copper_dust>, "filtered")
    .produceFluid(<fluid:contenttweaker:mostly_unsaturated_water>*500, "fluid_output")
    .requireEnergy(250)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:fine_filter>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:mostly_unsaturated_water>*500, "fluid_input")
    .produceItem(<item:thermal:tin_dust>, "filtered")
    .produceFluid(<fluid:minecraft:water>*500, "fluid_output")
    .requireEnergy(250)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:fine_filter>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:saturated_core_water>*500, "fluid_input")
    //.produceItem(<item:minecraft:redstone>, "filtered")
    .produceFluid(<fluid:contenttweaker:lightly_saturated_core_water>*500, "fluid_output")
    .requireEnergy(250)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:medium_filter>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:lightly_saturated_core_water>*500, "fluid_input")
    //.produceItem(<item:minecraft:redstone>, "filtered")
    .produceFluid(<fluid:contenttweaker:mostly_unsaturated_core_water>*500, "fluid_output")
    .requireEnergy(250)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:fine_filter>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:mostly_unsaturated_core_water>*500, "fluid_input")
    //.produceItem(<item:minecraft:redstone>, "filtered")
    .produceFluid(<fluid:contenttweaker:core_water>*500, "fluid_output")
    .requireEnergy(250)
    .build();