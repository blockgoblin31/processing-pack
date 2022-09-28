#loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.tool.ItemBuilderTool;

val itemname = ["common_cluster", "uncommon_cluster", "rare_cluster", "epic_cluster", "legendary_cluster", "omega_cluster", "ultimate_cluster", "infernal_sawdust", "coalmeal1", "coalmeal2", "coalmeal3", "coalmeal4", "coalmeal5", "coalmeal6", "coalmeal7", "voidic_sawdust", "improved_common", "useless_common", "fake_sawdust", "fake_blasting", "fake_cryogenic"] as string[];

for item in itemname{
    new ItemBuilder().build(item);
}
