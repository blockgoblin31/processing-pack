<recipetype:thermal:crucible>.removeRecipe(<fluid:thermal:redstone>);
<recipetype:thermal:crucible>.addRecipe("crucible_redstone_dust", <fluid:thermal:redstone>*16, <item:minecraft:redstone>, 8000);
<recipetype:thermal:crucible>.addRecipe("crucible_redstone_block", <fluid:thermal:redstone>*144, <item:minecraft:redstone_block>, 72000);

<recipetype:thermal:chiller>.removeRecipe(<item:minecraft:redstone_block>);
<recipetype:thermal:chiller>.addRecipe("chiller_redstone", <item:minecraft:redstone_block>, <item:minecraft:air>, <fluid:thermal:redstone>*144, 72000);