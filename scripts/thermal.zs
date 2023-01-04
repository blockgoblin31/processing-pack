import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.MCItemDefinition;

<recipetype:thermal:crucible>.removeRecipe(<fluid:thermal:redstone>);
<recipetype:thermal:crucible>.addRecipe("crucible_redstone_dust", <fluid:thermal:redstone>*16, <item:minecraft:redstone>, 8000);
<recipetype:thermal:crucible>.addRecipe("crucible_redstone_block", <fluid:thermal:redstone>*144, <item:minecraft:redstone_block>, 72000);

<recipetype:thermal:chiller>.removeRecipe(<item:minecraft:redstone_block>);
<recipetype:thermal:chiller>.addRecipe("chiller_redstone", <item:minecraft:redstone_block>, <item:minecraft:air>, <fluid:thermal:redstone>*144, 72000);

<recipetype:thermal:sawmill>.removeRecipe([<item:thermal:sawdust>]);
<recipetype:thermal:pulverizer>.removeRecipe(<item:thermal:sawdust>);
<recipetype:thermal:pulverizer>.addRecipe("standard_sawdust", [<item:mekanism:sawdust> * 8] , <tag:items:custom:overworld_wood>, 0, 1000);
<recipetype:thermal:pulverizer>.addRecipe("infernal_sawdust", [<item:contenttweaker:infernal_sawdust> * 8] , <tag:items:custom:infernal_wood>, 0, 1000);
<recipetype:thermal:pulverizer>.addRecipe("voidic_sawdust", [<item:contenttweaker:voidic_sawdust> * 8] , <tag:items:custom:voidic_wood>, 0, 1000);

for i, plank in (<tag:items:minecraft:planks>.elements as MCItemDefinition[]) {
    var log = <tag:items:minecraft:logs>.elements[(i + 1) * 4 - 4].defaultInstance;
    var log_base = <tag:items:minecraft:logs>.elements[(i + 1) * 4 - 4].defaultInstance.translationKey.spl(".");
    var type as string;
    var planks as IItemStack;
    var sawdust as IItemStack;
    if "_log" in log_base {
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
    } else if "_stem" in log_base {
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
}