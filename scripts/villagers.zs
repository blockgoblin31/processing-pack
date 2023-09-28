#debug

import crafttweaker.api.enchantment.MCEnchantment;
import crafttweaker.api.villager.MCMerchantOffer;
import crafttweaker.api.util.Random;
import crafttweaker.api.villager.MCVillagerProfession;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tool.ToolType;

var tooltypes = [
<tooltype:axe>,
<tooltype:crook>,
<tooltype:drill>,
<tooltype:excavator>,
<tooltype:farmersdelight_knife>,
<tooltype:hammer>,
<tooltype:hoe>,
<tooltype:immersiveengineering_cutter>,
<tooltype:immersiveengineering_hammer>,
<tooltype:immersiveengineering_screwdriver>,
<tooltype:knife>,
<tooltype:paxel>,
<tooltype:pickaxe>,
<tooltype:saw>,
<tooltype:shears>,
<tooltype:shovel>,
<tooltype:sickle>,
<tooltype:sword>,
<tooltype:wrench>] as ToolType[];
var enchantsSword = new stdlib.List<MCEnchantment>;
var enchantsHelm = new stdlib.List<MCEnchantment>;
var enchantsChest = new stdlib.List<MCEnchantment>;
var enchantsLegs = new stdlib.List<MCEnchantment>;
var enchantsBoot = new stdlib.List<MCEnchantment>;
var enchantsShov = new stdlib.List<MCEnchantment>;
var enchantsAxe = new stdlib.List<MCEnchantment>;
var enchantsPick = new stdlib.List<MCEnchantment>;
for enchant in game.enchantments {
    if !enchant.treasure {
        if (enchant != <enchantment:minecraft:soul_speed>) {
            if enchant.canApply(<item:mekanismtools:steel_axe>) enchantsAxe.add(enchant);
            if enchant.canApply(<item:mekanismtools:steel_sword>) enchantsSword.add(enchant);
            if enchant.canApply(<item:mekanismtools:steel_helmet>) enchantsHelm.add(enchant);
            if enchant.canApply(<item:mekanismtools:steel_chestplate>) enchantsChest.add(enchant);
            if enchant.canApply(<item:mekanismtools:steel_leggings>) enchantsLegs.add(enchant);
            if enchant.canApply(<item:mekanismtools:steel_boots>) enchantsBoot.add(enchant);
            if enchant.canApply(<item:mekanismtools:steel_shovel>) enchantsShov.add(enchant);
            if enchant.canApply(<item:mekanismtools:steel_pickaxe>) enchantsPick.add(enchant);
        }
    }
}


villagerTrades.removeAllTrades(<profession:minecraft:armorer>, 4);
villagerTrades.removeAllTrades(<profession:minecraft:toolsmith>, 4);
villagerTrades.removeAllTrades(<profession:minecraft:weaponsmith>, 4);
villagerTrades.removeAllTrades(<profession:minecraft:armorer>, 5);
villagerTrades.removeAllTrades(<profession:minecraft:toolsmith>, 5);
villagerTrades.removeAllTrades(<profession:minecraft:weaponsmith>, 5);

public function getRandomEnchant(random as Random, list as stdlib.List<MCEnchantment>) as MCEnchantment {
    var num = 0;
    for enchant in list {
        num += enchant.rarity.weight;
    }
    var i = random.nextInt(num);
    for enchant in list {
        i -= enchant.rarity.weight;
        if (i < 0) return enchant;
    }
}

public function addToolTrade(profession as MCVillagerProfession, level as int, item as IItemStack, enchantments as stdlib.List<MCEnchantment>, lowPrice as int, highPrice as int) as void {
villagerTrades.addTrade(profession, level, (entity, random) => {
    var level = 5 + random.nextInt(15);
    var result = item;
    var enchants = new stdlib.List<MCEnchantment>();
    var possibleEnchants = enchantments.clone();
    var i = 16;
    var newLevel = level;
    newLevel = newLevel + 1 + random.nextInt(i / 4 + 1) + random.nextInt(i / 4 + 1);
    var j = (random.nextDouble() + random.nextDouble() - 1.0) * 0.15;
    newLevel = math.Functions.max(math.Functions.round((newLevel as double) + (newLevel as double) * j) as int, 1 as int); 
    enchants.add(getRandomEnchant(random, possibleEnchants));
    while random.nextInt(50) <= newLevel {
        for e in possibleEnchants as MCEnchantment[] {
            if !e.isCompatibleWith(enchants[enchants.length - 1]) {
                possibleEnchants.remove(e);
            }
        }
        if possibleEnchants.length == 0 {
            break;
        }
        enchants.add(getRandomEnchant(random, possibleEnchants));
        newLevel /= 2;
    }
    for e in enchants {
        var maxLevel = 0;
        while e.getMinEnchantability(maxLevel) < level {
            maxLevel++;
            if (maxLevel == e.maxLevel) break;
        }
        if (result.getEnchantments().size == 0 && maxLevel == 0) maxLevel++;
        result = result.withEnchantment(e, maxLevel);
    }
    return new MCMerchantOffer(<item:minecraft:emerald> * random.nextInt(lowPrice, highPrice), result, 3, 15, 0.2);
});
}

addToolTrade(<profession:minecraft:armorer>, 5, <item:mekanismtools:steel_helmet>, enchantsHelm, 13, 28);
addToolTrade(<profession:minecraft:armorer>, 5, <item:mekanismtools:steel_chestplate>, enchantsChest, 21, 36);
addToolTrade(<profession:minecraft:armorer>, 4, <item:mekanismtools:steel_leggings>, enchantsLegs, 20, 33);
addToolTrade(<profession:minecraft:armorer>, 4, <item:mekanismtools:steel_boots>, enchantsBoot, 13, 28);
addToolTrade(<profession:minecraft:toolsmith>, 4, <item:mekanismtools:steel_axe>, enchantsAxe, 17, 32);
addToolTrade(<profession:minecraft:toolsmith>, 4, <item:mekanismtools:steel_shovel>, enchantsShov, 10, 25);
addToolTrade(<profession:minecraft:toolsmith>, 5, <item:mekanismtools:steel_pickaxe>, enchantsPick, 18, 33);
//addToolTrade(<profession:minecraft:toolsmith>, 5, <item:mekanismtools:steel_paxel>, enchantsPxl, 25, 39);
addToolTrade(<profession:minecraft:weaponsmith>, 5, <item:mekanismtools:steel_sword>, enchantsSword, 17, 32);
addToolTrade(<profession:minecraft:weaponsmith>, 4, <item:mekanismtools:steel_axe>, enchantsAxe, 17, 32);

villagerTrades.addTrade(<profession:minecraft:toolsmith>, 4, (entity, random) => {
    return new MCMerchantOffer(<item:mekanism:ingot_steel>, <item:minecraft:emerald>, 12, 30, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 4, (entity, random) => {
    return new MCMerchantOffer(<item:mekanism:ingot_steel>, <item:minecraft:emerald>, 12, 30, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 5, (entity, random) => {
    return new MCMerchantOffer(<item:mekanism:ingot_steel>, <item:minecraft:emerald> * random.nextInt(7, 22), 12, 30, 0.05);
});