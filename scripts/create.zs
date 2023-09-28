#debug

val air = <item:minecraft:air>;
import crafttweaker.api.item.IItemStack;
import mods.create.MixingManager;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IIngredientWithAmount;

/* default recipe
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("cluster")
    .transitionTo(<item:contenttweaker:unfinished_cluster>)
    .require(<item:contenttweaker:cluster>)
    .loops(1)
    .addOutput(<item:contenttweaker:cluster>, 1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:machine>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:machine>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:machine>))
);
*/

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("uncommon_cluster")
    .transitionTo(<item:contenttweaker:useless_common>)
    .require(<item:contenttweaker:uncommon_base>)
    .loops(1)
    .addOutput(<item:contenttweaker:improved_common>, 1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_blasting>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_sawdust>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_cryogenic>))
);

<recipetype:create:mixing>.addRecipe("mixing_uncommon", "none", <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.66666667 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 2 as int}}), [<item:contenttweaker:infernal_sawdust>, <item:contenttweaker:useless_common>.withTag({SequencedAssembly: {Progress: 0.33333334 as float, id: "crafttweaker:sequenced_assembly/uncommon_cluster" as string, Step: 1 as int}})]);
<recipetype:create:mixing>.addRecipe("mixing_coal", "none", <item:minecraft:coal_ore>, [<item:contenttweaker:petrified_log>], [<fluid:contenttweaker:liquid_cobblestone>*1000]);
<recipetype:create:mixing>.addRecipe("mixing_base_uncommon", "none", <item:contenttweaker:uncommon_base>, [<item:minecraft:redstone> * 5, <item:minecraft:iron_nugget>, <item:create:copper_nugget>], [<fluid:contenttweaker:liquid_cobblestone> * 1000]);

<recipetype:create:splashing>.addRecipe("splashing_uncommon", [<item:contenttweaker:washed_uncommon>], <item:contenttweaker:uncommon_cluster>);

<recipetype:create:milling>.addRecipe("milling_uncommon", [<item:thermal:tin_dust>, <item:thermal:copper_dust>, <item:thermal:iron_dust>, <item:minecraft:redstone> * 9, <item:immersiveengineering:dust_aluminum>], <item:contenttweaker:washed_uncommon>);

<recipetype:create:milling>.addRecipe("milling_coal", [<item:mekanism:dust_coal>], <item:minecraft:coal>);

for log in <tag:items:minecraft:logs>.elements {
    <recipetype:create:cutting>.removeRecipeByInput(log);
}
<recipetype:create:cutting>.addRecipe("nether_sawdust", <item:contenttweaker:infernal_sawdust>, <tag:items:custom:infernal_wood>, 100);
<recipetype:create:cutting>.addRecipe("end_sawdust", <item:contenttweaker:voidic_sawdust>, <tag:items:custom:voidic_wood>, 100);
<recipetype:create:cutting>.addRecipe("overworld_sawdust", <item:mekanism:sawdust>, <tag:items:custom:overworld_wood>, 100);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("petrification").require(<tag:items:minecraft:logs_that_burn>).transitionTo(<item:minecraft:oak_log>).loops(20).addOutput(<item:contenttweaker:petrified_log>, 1).addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(10)));
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("hot_stick").require(<item:contenttweaker:extinguished_stick>).transitionTo(<item:contenttweaker:extinguished_stick>).loops(16).addOutput(<item:contenttweaker:graphite_lollipop>, 1).addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:mekanism:dust_coal>)));
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("too_hot_stick")
    .require(<item:contenttweaker:fire_stick>)
    .transitionTo(<item:contenttweaker:fire_stick>)
    .loops(16)
    .addOutput(<item:contenttweaker:graphite_lollipop>, 1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:mekanism:dust_coal>))
    .addOutput(<item:contenttweaker:extinguished_stick>, 1)
);

<recipetype:create:filling>.addRecipe("filling_test", <item:contenttweaker:fire_stick>, <tag:items:forge:rods/bronze>, <fluid:minecraft:lava> * 1000);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("rare_cluster")
    .transitionTo(<item:contenttweaker:useless_uncommon>)
    .require(<item:contenttweaker:rare_base>)
    .loops(1)
    .addOutput(<item:contenttweaker:improved_uncommon>, 1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_melting>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_ingot_cast>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_pressure_chamber_with_plastic>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_plate_press>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_casting_basin_with_liquid_cobble_>))
);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("epic_cluster")
    .transitionTo(<item:contenttweaker:useless_rare>)
    .require(<item:contenttweaker:epic_base>)
    .loops(1)
    .addOutput(<item:contenttweaker:improved_rare>, 1)
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_mechanical_crafting_with_core_shards>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_crushing>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_deploying_on_stone>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_terra_plate_with_core_gem_and_voidic_sawdust>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<item:contenttweaker:fake_sandpaper_polishing>))
);

<recipetype:create:milling>.addRecipe("gunpowder1", [<item:minecraft:gunpowder> % 65], <item:minecraft:flint>);
<recipetype:create:crushing>.addRecipe("gunpowder2", [<item:minecraft:gunpowder> % 65, <item:minecraft:gunpowder> % 40], <item:minecraft:flint>);

<recipetype:create:mixing>.addRecipe("salt_water", "none", <fluid:exnihilosequentia:sea_water>*1000, [<item:mekanism:salt>], [<fluid:minecraft:water> * 1000]);

<recipetype:create:mixing>.removeByName("create:mixing/lava_from_cobble");
<recipetype:create:mixing>.removeRecipe(<item:create:andesite_alloy>);
<recipetype:create:mixing>.removeRecipe(<item:create:chromatic_compound>);
<recipetype:create:filling>.removeRecipe(<item:create:blaze_cake>);
<recipetype:create:crushing>.removeRecipe(<item:create:cinder_flour>);
<recipetype:create:milling>.addRecipe("milling_flour", [<item:create:cinder_flour>], <item:minecraft:weeping_vines>);
<recipetype:create:milling>.addRecipe("quartz_crushing", [<item:thermal:quartz_dust>], <item:minecraft:quartz>);
<recipetype:create:crushing>.addRecipe("purer_powder", [<item:contenttweaker:purer_powder>], <item:contenttweaker:pure_cluster>);

<recipetype:create:mixing>.addRecipe("rare_cluster", "heated", <item:contenttweaker:melted_cluster>, [<item:contenttweaker:rare_cluster>]);

<recipetype:create:compacting>.addRecipe("compacting_rubber", "none", <item:contenttweaker:raw_infernal_rubber>, [<item:create:cinder_flour>], [<fluid:minecraft:water> * 1000], 200);

<recipetype:create:splashing>.addRecipe("extinguish", [<item:contenttweaker:extinguished_stick>], <item:contenttweaker:fire_stick>);

<recipetype:create:emptying>.addRecipe("emptying_flower", <item:contenttweaker:blank_flower>, <fluid:contenttweaker:chromatic_mixture> * 100, <tag:items:botania:mystical_flowers>);

for color in constants.colors {
    var dye = <item:minecraft:${color}_dye>;
    <recipetype:create:mixing>.addRecipe(color+"_dye_mixing", "none", dye * 2, [dye], [<fluid:contenttweaker:chromatic_mixture> * 100]);
}

<recipetype:create:compacting>.addRecipe("core_stuff", "heated", <item:contenttweaker:core_gem>, [<item:contenttweaker:core_shards> * 9], [], 200);
<recipetype:create:mechanical_crafting>.addRecipe("core_cluster", <item:contenttweaker:core_t3_cluster>.withTag({SequencedAssembly: {Progress: 0.2 as float, id: "crafttweaker:sequenced_assembly/epic_cluster" as string, Step: 1 as int}}), [
    [air, air, <item:contenttweaker:core_shards>, air, air],
    [<item:contenttweaker:core_shards>, <item:contenttweaker:voidic_sawdust>, <item:contenttweaker:epic_base>, <item:contenttweaker:voidic_sawdust>, <item:contenttweaker:core_shards>],
    [air, air, <item:contenttweaker:core_shards>, air, air]
]);

<recipetype:create:crushing>.addRecipe("crushing", [<item:contenttweaker:impure_powder>.withTag({SequencedAssembly: {Progress: 0.4 as float, id: "crafttweaker:sequenced_assembly/epic_cluster" as string, Step: 2 as int}})], <item:contenttweaker:core_t3_cluster>);

<recipetype:create:deploying>.addRecipe("deploy_test", <item:minecraft:stone_slab>, <item:contenttweaker:impure_powder>, [<item:contenttweaker:cluster_stone_mixture>.withTag({SequencedAssembly: {Progress: 0.6 as float, id: "crafttweaker:sequenced_assembly/epic_cluster" as string, Step: 3 as int}})]);

<recipetype:create:sandpaper_polishing>.addRecipe("sand_paper_polishing_test", <item:contenttweaker:improved_rare>, <item:contenttweaker:allgomerated_t3>);

<recipetype:create:deploying>.addRecipe("megemerald", <item:contenttweaker:empty_megemerald>, <item:minecraft:emerald>, [<item:contenttweaker:megemerald>]);
<recipetype:create:crushing>.addRecipe("megemerald_emptying", [<item:contenttweaker:empty_megemerald>, <item:thermal:emerald_dust>, <item:thermal:emerald_dust> % 50], <item:contenttweaker:megemerald>);

var dusts = [<item:contenttweaker:light_epic>, <item:contenttweaker:heavy_epic>] as IItemStack[];
var woodusts = [<item:mekanism:sawdust>, <item:contenttweaker:infernal_sawdust>, <item:contenttweaker:voidic_sawdust>] as IItemStack[];
var mixed = [<item:contenttweaker:light_terrestrial>, <item:contenttweaker:light_infernal>, <item:contenttweaker:light_voidic>, <item:contenttweaker:heavy_terrestrial>, <item:contenttweaker:heavy_infernal>, <item:contenttweaker:heavy_voidic>] as IItemStack[];

for i, dust in dusts {
    for j, sawdust in woodusts {
        <recipetype:create:compacting>.addRecipe("epic_dust_"+i as string+"_"+j as string, "heated", mixed[((3*i)+j)], [dust, sawdust], [], 100);
    }
}

<recipetype:create:mixing>.addRecipe("epic_base", "heated", <item:contenttweaker:epic_base>, [<item:minecraft:redstone> * 10, <item:thermal:tin_ingot>, <item:create:copper_ingot> * 2, <item:create:brass_ingot>, <item:botania:light_gray_petal>], [<fluid:contenttweaker:liquid_cobble> * 1000]);
<recipetype:create:mixing>.addRecipe("saturate_water", "none", <fluid:contenttweaker:saturated_water> * 500, [<item:contenttweaker:lighter_epic>], [<fluid:minecraft:water> * 500]);
<recipetype:create:mixing>.addRecipe("saturate_core_water", "none", <fluid:contenttweaker:saturated_core_water> * 500, [<item:contenttweaker:heavier_epic>], [<fluid:contenttweaker:core_water> * 500]);

var baseInputs = [[], [<tag:items:forge:dusts/coal>.asIIngredient()], [<item:contenttweaker:phosphate>, <item:minecraft:redstone>], [<item:contenttweaker:graphite_pellet>, <tag:items:forge:dusts/niter>.asIIngredient()], [<tag:items:forge:dusts/mana>.asIIngredient(), <item:contenttweaker:core_dust>]] as IIngredient[][];
var baseClusters = [<item:minecraft:bone_meal>, <item:contenttweaker:coalmeal1>, <item:contenttweaker:coalmeal2>, <item:contenttweaker:coalmeal3>, <item:contenttweaker:coalmeal4>] as IItemStack[];
var usedClusters = new stdlib.List<IItemStack>;

for k in 0 .. baseClusters.length {
    if !baseClusters[k].matches(<item:minecraft:bone_meal>) {
        for i in 0 .. usedClusters.length {
            var input = new stdlib.List<IIngredientWithAmount>;
            for item in baseInputs[k as usize] {
                input.add(item);
            }
            input.add(usedClusters[i].asIIngredientWithAmount().ingredient);
            for j in (i+1) .. usedClusters.length {
                var add = baseInputs[baseClusters.indexOf(usedClusters[j]) as usize] as IIngredient[];
                for item in add {
                    input.add(item);
                }
            }
            <recipetype:create:mixing>.addRecipe(baseClusters[k].registryName.path+i, "none", baseClusters[k], input as IIngredientWithAmount[], [], 100);
        }
    }
    usedClusters.add(baseClusters[k]);
}
<recipetype:create:mixing>.addRecipe("new_ender_eye", "heated", <item:minecraft:ender_eye>, [<item:minecraft:blaze_powder>, <item:thermal:basalz_powder>, <item:botania:mana_pearl>]);
