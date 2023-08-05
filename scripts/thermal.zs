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

/*var looping = true;
for i, plank in (<tag:items:minecraft:planks>.elements as MCItemDefinition[]) {
    if !(plank.defaultInstance.owner == "quark") {
        var log as IItemStack;
        var log_base as string;
        //if (<tag:items:minecraft:logs>.elements.length < ((i + 1) * 4 - 4)) {
            log = <tag:items:minecraft:logs>.elements[(i + 1) * 4 - 4].defaultInstance;
            log_base = <tag:items:minecraft:logs>.elements[(i + 1) * 4 - 4].defaultInstance.translationKey.spl(".");
        //} else {
        //    looping = false;
        //}
        var type as string;
        var planks as IItemStack;
        var sawdust as IItemStack;
        if looping && "_log" in log_base {
            type = log_base.spl(".").findbtwn("", "_log").spl("stripped_");
            planks = <item:${log_base.findbtwn("", ".")}:${type}_planks>;
            if log as MCItemDefinition in <tag:items:custom:infernal_wood> {
                sawdust = <item:contenttweaker:infernal_sawdust>;
            } else if log as MCItemDefinition in <tag:items:custom:voidic_wood> {
                sawdust = <item:contenttweaker:voidic_sawdust>;
            } else {
                sawdust = <item:mekanism:sawdust>;
            }
            for j in 0 .. 4 {
                if ((i as int + 1) * 4 - 4 + j) < <tag:items:minecraft:logs>.elements.length as int {
                    <recipetype:thermal:sawmill>.addRecipe("sawmill_" + type + "_logs_" + j as string, [planks * 6, sawdust % 25], <tag:items:minecraft:logs>.elements[(i as int + 1) * 4 - 4 + j].defaultInstance, 1000);
                }
            }
        } else if looping && "_stem" in log_base {
            type = log_base.spl(".").findbtwn("", "_stem").spl("stripped_");
            planks = <item:${log_base.findbtwn("", ".")}:${type}_planks>;
            if log as MCItemDefinition in <tag:items:custom:infernal_wood> {
                sawdust = <item:contenttweaker:infernal_sawdust>;
            } else if log as MCItemDefinition in <tag:items:custom:voidic_wood> {
                sawdust = <item:contenttweaker:voidic_sawdust>;
            } else {
                sawdust = <item:mekanism:sawdust>;
            }
            for j in 0 .. 4 {
                if ((i as int + 1) * 4 - 4 + j) < <tag:items:minecraft:logs>.elements.length as int {
                    <recipetype:thermal:sawmill>.addRecipe("sawmill_" + type + "_logs_" + j as string, [planks * 6, sawdust % 25], <tag:items:minecraft:logs>.elements[(i as int + 1) * 4 - 4 + j].defaultInstance, 1000);
                }
            }
        }
        looping = true;
    }
}*/

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