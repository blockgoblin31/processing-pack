// priority: 0

settings.logAddedRecipes = true
settings.logRemovedRecipes = true
settings.logSkippedRecipes = false
settings.logErroringRecipes = true

console.info('Hello, World! (You will see this line every time server resources reload)')

onEvent('recipes', event => {
	console.info('EBF Recipe Script')

	let ebfDefinition = MbdRegistry.getDefinition("meyhem:cooler");

	let recipeMap;

	if (ebfDefinition != null) { // two ways to get the recipeMap
    	recipeMap = ebfDefinition.getRecipeMap();
	} else {
    	recipeMap = MbdRegistry.getRecipeMap("ebf");
	}

	if (recipeMap != null) {
    		console.info('EBF RecipeMap Found');
			recipeMap = ebfDefinition.getRecipeMap();
			recipeMap.start()
			.duration(100)
			.name("chill_uncommon")
			.inputItems(Item.of('contenttweaker:useless_common', '{SequencedAssembly:{Progress:0.6666667f,id:"crafttweaker:sequenced_assembly/uncommon_cluster",Step:2}}'))
			.outputItems('contenttweaker:improved_common')
			.buildAndRegister();
	}
	else{
		console.info('EBF RecipeMap Missing')
	}

})

onEvent('item.tags', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')
})

 /*recipeMap.start()
    .duration(100)
    .name("name") // have to set a unique name.
    .inputItems('3x minecraft:apple')
    .outputItems('3x minecraft:apple')
    .inputItems('3x minecraft:apple')
    .outputItems('3x minecraft:apple')
    .inputFE(1000)
    .outputFE(1000)
    .inputFluids('minecraft:water 100')
    .outputFluids('minecraft:water 100')
    .inputMana(200) // botania mana
    .outputMana(200)
    .inputHeat(105.5) // mekanism heat
    .outputHeat(105.5)
    .inputGases("mekanism:xxxx 100") // mekanism gas
    .outputGases("mekanism:xxxx 100")
    .inputPigments("mekanism:xxxx 100") // mekanism pigment
    .outputPigments("mekanism:xxxx 100")
    .inputInfusions("mekanism:xxxx 100") // mekanism infusion
    .outputInfusions("mekanism:xxxx 100")
    .inputSlurries("mekanism:xxxx 100") // mekanism slurry
    .outputSlurries("mekanism:xxxx 100")
    .inputs(MbdRegistry.getCapability("item"), "minecraft:apple") // for addons capability
    .outputs(MbdRegistry.getCapability("fluid"), "minecraft:water 100")
    .buildAndRegister();
    */