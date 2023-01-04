import crafttweaker.api.item.IItemStack;

var seed = <item:agricraft:agri_seed>.withTag({agri_genome: [{agri_gene: "agri_species" as string, agri_dominant: {agri_plant: "agricraft:verdentium_plant" as string}, agri_recessive: {agri_plant: "agricraft:verdentium_plant" as string}}, {agri_gene: "chicken" as string, agri_dominant: {agri_key: 0 as byte}, agri_recessive: {agri_key: 0 as byte}}, {agri_gene: "cow" as string, agri_dominant: {agri_key: 0 as byte}, agri_recessive: {agri_key: 0 as byte}}, {agri_gene: "fertility" as string, agri_dominant: {fertility: 1 as int}, agri_recessive: {fertility: 1 as int}}, {agri_gene: "gain" as string, agri_dominant: {gain: 1 as int}, agri_recessive: {gain: 1 as int}}, {agri_gene: "growth" as string, agri_dominant: {growth: 1 as int}, agri_recessive: {growth: 1 as int}}, {agri_gene: "mutativity" as string, agri_dominant: {mutativity: 1 as int}, agri_recessive: {mutativity: 1 as int}}, {agri_gene: "panda" as string, agri_dominant: {agri_key: 0 as byte}, agri_recessive: {agri_key: 0 as byte}}, {agri_gene: "pig" as string, agri_dominant: {agri_key: 0 as byte}, agri_recessive: {agri_key: 0 as byte}}, {agri_gene: "rabbit" as string, agri_dominant: {agri_key: 0 as byte}, agri_recessive: {agri_key: 0 as byte}}, {agri_gene: "resistance" as string, agri_dominant: {resistance: 1 as int}, agri_recessive: {resistance: 1 as int}}, {agri_gene: "sheep" as string, agri_dominant: {agri_key: 0 as byte}, agri_recessive: {agri_key: 0 as byte}}, {agri_gene: "strength" as string, agri_dominant: {strength: 1 as int}, agri_recessive: {strength: 1 as int}}, {agri_gene: "turtle" as string, agri_dominant: {agri_key: 0 as byte}, agri_recessive: {agri_key: 0 as byte}}]});

<recipetype:botania:runic_altar>.removeAll();
<recipetype:botania:terra_plate>.removeAll();

<recipetype:botania:runic_altar>.addRecipe("water_rune", <item:botania:rune_water>, 5000, [<item:botania:manasteel_ingot>, <item:botania:mana_powder>, <item:minecraft:kelp>, <tag:items:minecraft:fishes>]);
<recipetype:botania:runic_altar>.addRecipe("fire_rune", <item:botania:rune_fire>, 5000, [<item:botania:manasteel_ingot>, <item:botania:mana_powder>, <item:minecraft:blaze_powder>, <item:minecraft:nether_wart>]);
<recipetype:botania:runic_altar>.addRecipe("earth_rune", <item:botania:rune_earth>, 5000, [<item:botania:manasteel_ingot>, <item:botania:mana_powder>, <item:minecraft:coal>, <tag:items:forge:mushrooms>]);
<recipetype:botania:runic_altar>.addRecipe("air_rune", <item:botania:rune_air>, 5000, [<item:botania:manasteel_ingot>, <item:botania:mana_powder>, <item:minecraft:feather>, <tag:items:forge:dusts/flour>]);
<recipetype:botania:runic_altar>.addRecipe("mana_rune", <item:botania:rune_mana>, 10000, [<item:botania:manasteel_block>, <item:botania:mana_powder>]);
<recipetype:botania:runic_altar>.addRecipe("spring", <item:botania:rune_spring>, 10000, [<item:botania:rune_fire>, <item:botania:rune_water>, <tag:items:minecraft:saplings>, <tag:items:minecraft:saplings>, <tag:items:minecraft:saplings>, <item:farmersdelight:cabbage>]);
<recipetype:botania:runic_altar>.addRecipe("summer", <item:botania:rune_summer>, 10000, [<item:botania:rune_fire>, <item:botania:rune_air>, <tag:items:forge:crops/tomato>, <tag:items:forge:crops/tomato>, <tag:items:forge:crops/tomato>, <item:minecraft:cactus>]);
<recipetype:botania:runic_altar>.addRecipe("autumn", <item:botania:rune_autumn>, 10000, [<item:botania:rune_earth>, <item:botania:rune_air>, <tag:items:minecraft:leaves>, <tag:items:minecraft:leaves>, <tag:items:minecraft:leaves>, <item:minecraft:pumpkin>]);
<recipetype:botania:runic_altar>.addRecipe("winter", <item:botania:rune_winter>, 10000, [<item:botania:rune_water>, <item:botania:rune_earth>, <item:minecraft:snow_block>, <item:minecraft:snow_block>, <item:minecraft:snow_block>, <item:farmersdelight:onion>]);

<recipetype:botania:petal_apothecary>.addRecipe("verdentium", seed, <item:minecraft:wheat_seeds>, <item:contenttweaker:purer_powder>, <item:contenttweaker:purer_powder>, <item:contenttweaker:purer_powder>, <item:contenttweaker:purer_powder>, <item:botania:lime_petal>);

<recipetype:botania:terra_plate>.addRecipe("terra_plate_test", <item:contenttweaker:allgomerated_t3>.withTag({SequencedAssembly: {Progress: 0.8 as float, id: "crafttweaker:sequenced_assembly/epic_cluster" as string, Step: 4 as int}}), 1000, <item:contenttweaker:cluster_stone_mixture>, <item:minecraft:emerald>, <item:contenttweaker:core_gem>);

var inputs = [<item:contenttweaker:light_terrestrial>, <item:contenttweaker:light_infernal>, <item:contenttweaker:light_voidic>, <item:contenttweaker:heavy_terrestrial>, <item:contenttweaker:heavy_infernal>, <item:contenttweaker:heavy_voidic>] as IItemStack[];
var outputs = [<item:contenttweaker:natura_dust> * 3, <item:thermal:nickel_dust> * 3, <item:immersiveengineering:dust_aluminum> * 3, <item:thermal:tin_dust> * 3, <item:thermal:gold_dust> * 3, <item:contenttweaker:zinc_dust> * 3] as IItemStack[];

for i, item in inputs {
    <recipetype:botania:mana_infusion>.addRecipe("metal_from_mana_"+(i as int +1) as string, outputs[i], item, 500*((i as int % 3)+1));
}