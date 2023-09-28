import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.tag.TagManagerItem;

<recipetype:thermal:crucible>.removeRecipe(<fluid:thermal:redstone>);
<recipetype:thermal:crucible>.addRecipe("crucible_redstone_dust", <fluid:thermal:redstone>*16, <item:minecraft:redstone>, 8000);
<recipetype:thermal:crucible>.addRecipe("crucible_redstone_block", <fluid:thermal:redstone>*144, <item:minecraft:redstone_block>, 72000);

<recipetype:thermal:chiller>.removeRecipe(<item:minecraft:redstone_block>);
<recipetype:thermal:chiller>.addRecipe("chiller_redstone", <item:minecraft:redstone_block>, <item:minecraft:air>, <fluid:thermal:redstone>*144, 72000);

<recipetype:thermal:sawmill>.removeByRegex(".*(_logs|_stems)$");
<recipetype:thermal:pulverizer>.removeRecipe(<item:thermal:sawdust>);
<recipetype:thermal:pulverizer>.addRecipe("standard_sawdust", [<item:mekanism:sawdust> * 8] , <tag:items:custom:overworld_wood>, 0, 1000);
<recipetype:thermal:pulverizer>.addRecipe("infernal_sawdust", [<item:contenttweaker:infernal_sawdust> * 8] , <tag:items:custom:infernal_wood>, 0, 1000);
<recipetype:thermal:pulverizer>.addRecipe("voidic_sawdust", [<item:contenttweaker:voidic_sawdust> * 8] , <tag:items:custom:voidic_wood>, 0, 1000);

var types = new stdlib.List<string>;
for i, logDefinition in (<tag:items:minecraft:logs>.elements as MCItemDefinition[]) {
    var log = logDefinition.defaultInstance;
    var logBase = log.translationKey.spl(".");
    var type as string;
    var sawdust as IItemStack;
    var working = true;
    if "_log" in logBase type = logBase.spl(".").findbtwn("", "_log").spl("stripped_").findbtwn("", "_stripped");
    else if "_stem" in logBase type = logBase.spl(".").findbtwn("", "_stem").spl("stripped_").findbtwn("", "_stripped");
    else if "_wood" in logBase type = logBase.spl(".").findbtwn("", "_wood").spl("stripped_").findbtwn("", "_stripped");
    else if "_bark" in logBase type = logBase.spl(".").findbtwn("", "_bark").spl("stripped_").findbtwn("", "_stripped");
    else if "_hyphae" in logBase type = logBase.spl(".").findbtwn("", "_hyphae").spl("stripped_").findbtwn("", "_stripped");
    else {
        println(logBase+" errors");
        type = "";
        working = false;
    }
    if type in types working = false;
    if working {
        if log.definition in <tag:items:custom:overworld_wood> sawdust = <item:mekanism:sawdust>;
        else if log.definition in <tag:items:custom:infernal_wood> sawdust = <item:contenttweaker:infernal_sawdust>;
        else sawdust = <item:contenttweaker:voidic_sawdust>;
        types.add(type);
        if "_stem" in logBase && log.owner == "minecraft" <recipetype:thermal:sawmill>.addRecipe("sawmill_" + type + "_wood_" + i as string, [<item:${logBase.findbtwn("", ".")}:${type}_planks> * 6, sawdust % 25], <tagmanager:items>.getTag(logBase.findbtwn("", ".")+":"+type+"_stems"), 1000);
        else <recipetype:thermal:sawmill>.addRecipe("sawmill_" + type + "_wood_" + i as string, [<item:${logBase.findbtwn("", ".")}:${type}_planks> * 6, sawdust % 25], <tagmanager:items>.getTag(logBase.findbtwn("", ".")+":"+type+"_logs"), 1000);
    }
}

<recipetype:thermal:furnace>.addRecipe("invar", <item:thermal:invar_ingot>, <item:thermal:invar_dust>, 0, 1000);
<recipetype:thermal:chiller>.addRecipe("signalum", <item:thermal:signalum_ingot>, <item:thermal:chiller_ingot_cast>, <fluid:tconstruct:molten_signalum> * 144, 500);
<recipetype:thermal:furnace>.addRecipe("rich_slag", <item:thermal:rich_slag>, <item:contenttweaker:slag_dust> * 4, 0, 1000);
<recipetype:thermal:furnace>.addRecipe("emeralds", <item:minecraft:emerald>, <item:contenttweaker:verdentium_grit>, 0, 1000);
<recipetype:thermal:pulverizer>.removeRecipe(<item:thermal:cinnabar>);

<recipetype:thermal:smelter>.addRecipe("water_stuffs", [<item:appliedenergistics2:certus_quartz_dust> % 200], [<item:minecraft:lapis_lazuli>, <item:contenttweaker:water_catalyst>], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("fire_stuffs", [<item:thermal:cinnabar> % 200], [<item:minecraft:glowstone_dust>, <item:contenttweaker:fire_catalyst>], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("air_stuffs", [<item:appliedenergistics2:silicon> % 200], [<item:minecraft:quartz>, <item:contenttweaker:air_catalyst>], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("earth_stuffs", [<item:contenttweaker:graphite_bar> % 200], [<item:minecraft:coal>, <item:contenttweaker:earth_catalyst>], 0, 2000);
<recipetype:thermal:smelter>.addRecipe("verdentium_stuffs", [<item:minecraft:emerald>], [<item:contenttweaker:core_gem>, <item:contenttweaker:verdentium_grit>], 0, 2000);