/*val itemname = ["common_cluster", "uncommon_cluster", "rare_cluster", "epic_cluster", "legendary_cluster", "omega_cluster", "ultimate_cluster", "infernal_sawdust", "coalmeal1", "coalmeal2", "coalmeal3", "coalmeal4", "coalmeal5", "coalmeal6", "coalmeal7", "voidic_sawdust", "useless_common", "fake_sawdust", "fake_blasting", "fake_cryogenic"] as string[];
val itemrarity = ["COMMON", "UNCOMMON", "RARE", "EPIC", "LEGENDARY", "UNCOMMON", "EPIC"] as string[];
var i = itemname.length;

for item in itemname{
    i = i + 1;

    //new ItemBuilder().build(item);
    
    println(itemrarity[i]);
    if(i < itemrarity.length)
    {
        //new ItemBuilder().withRarity(itemrarity[i]).build(item);//.withRarity(itemrarity[i])
        println(item);
    }
}*/