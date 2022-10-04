mods.custommachinery.CMRecipeBuilder.create("machinery:freezer", 40)
    .requireItem(<item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}}))
    .produceItem(<item:contenttweaker:improved_common>)
    .build();