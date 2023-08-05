mods.custommachinery.CMRecipeBuilder.create("machinery:freezer", 40)
    .requireItem(<item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.6666667 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 2 as int}}))
    .produceItem(<item:contenttweaker:improved_common>)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:centrifuge", 60)
    .requireItem(<item:contenttweaker:melted_cluster>)
    .produceItem(<item:contenttweaker:pure_cluster>, "output")
    .produceItem(<item:minecraft:cobblestone>)
    .requireEnergy(1000)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:strong_resonator>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:saturated_water>*500, "fluid_input")
    .produceItem(<item:minecraft:redstone> * 3, "filtered")
    .produceFluid(<fluid:minecraft:water>*500, "fluid_output")
    .requireEnergy(250)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:middling_resonator>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:saturated_water>*500, "fluid_input")
    .produceItem(<item:thermal:copper_dust> * 3, "filtered")
    .produceFluid(<fluid:minecraft:water>*500, "fluid_output")
    .requireEnergy(250)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:weak_resonator>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:saturated_water>*500, "fluid_input")
    .produceItem(<item:thermal:quartz_dust> * 3, "filtered")
    .produceFluid(<fluid:minecraft:water>*500, "fluid_output")
    .requireEnergy(250)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:strong_resonator>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:saturated_core_water>*500, "fluid_input")
    .produceItem(<item:thermal:lead_dust> * 3, "filtered")
    .produceFluid(<fluid:contenttweaker:core_water>*500, "fluid_output")
    .requireEnergy(250)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:middling_resonator>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:saturated_core_water>*500, "fluid_input")
    .produceItem(<item:thermal:iron_dust> * 3, "filtered")
    .produceFluid(<fluid:contenttweaker:core_water>*500, "fluid_output")
    .requireEnergy(250)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:filter", 60)
    .damageItem(<item:contenttweaker:weak_resonator>, 1, "filter")
    .requireFluid(<fluid:contenttweaker:saturated_core_water>*500, "fluid_input")
    .produceItem(<item:thermal:silver_dust> * 3, "filtered")
    .produceFluid(<fluid:contenttweaker:core_water>*500, "fluid_output")
    .requireEnergy(250)
    .build();

mods.custommachinery.CMRecipeBuilder.create("machinery:centrifuge", 100)
    .requireItem(<item:contenttweaker:epic_powder>)
    .produceItem(<item:contenttweaker:lighter_epic>)
    .produceItem(<item:contenttweaker:light_epic>)
    .produceItem(<item:contenttweaker:heavy_epic>)
    .produceItem(<item:contenttweaker:heavier_epic>)
    .requireEnergy(5000)
    .build();