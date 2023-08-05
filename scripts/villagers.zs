import crafttweaker.api.enchantment.MCEnchantment;
import crafttweaker.api.villager.MCMerchantOffer;

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


villagerTrades.removeAllTrades(<profession:minecraft:armorer>, 4);
villagerTrades.removeAllTrades(<profession:minecraft:toolsmith>, 4);
villagerTrades.removeAllTrades(<profession:minecraft:weaponsmith>, 4);
villagerTrades.removeAllTrades(<profession:minecraft:armorer>, 5);
villagerTrades.removeAllTrades(<profession:minecraft:toolsmith>, 5);
villagerTrades.removeAllTrades(<profession:minecraft:weaponsmith>, 5);

villagerTrades.addTrade(<profession:minecraft:armorer>, 5, (entity, random) => {
    var level = random.nextInt(5, 20);
    var curLevel = 0;
    var result = <item:mekanismtools:steel_helmet>;
    while curLevel < level {
        var enchant = enchantsHelm[random.nextInt(enchantsHelm.length as int)];
        if enchant.canApply(result) {
            var enchLvl = random.nextInt(1, enchant.maxLevel);
            curLevel += enchLvl;
            if curLevel > level {
                enchLvl -= (curLevel - level);
                curLevel = level;
            }
            result = result.withEnchantment(enchant, enchLvl);
        }
    }
    return new MCMerchantOffer(<item:minecraft:emerald> * random.nextInt(13, 28), result, 3, 15, 0.2);
});

villagerTrades.addTrade(<profession:minecraft:armorer>, 5, (entity, random) => {
    var level = random.nextInt(5, 20);
    var curLevel = 0;
    var result = <item:mekanismtools:steel_chestplate>;
    while curLevel < level {
        var enchant = enchantsChest[random.nextInt(enchantsChest.length as int)];
        if enchant.canApply(result) {
            var enchLvl = random.nextInt(1, enchant.maxLevel);
            curLevel += enchLvl;
            if curLevel > level {
                enchLvl -= (curLevel - level);
                curLevel = level;
            }
            result = result.withEnchantment(enchant, enchLvl);
        }
    }
    return new MCMerchantOffer(<item:minecraft:emerald> * random.nextInt(21, 36), result, 3, 15, 0.2);
});

villagerTrades.addTrade(<profession:minecraft:armorer>, 4, (entity, random) => {
    var level = random.nextInt(5, 20);
    var curLevel = 0;
    var result = <item:mekanismtools:steel_leggings>;
    while curLevel < level {
        var enchant = enchantsLegs[random.nextInt(enchantsLegs.length as int)];
        if enchant.canApply(result) {
            var enchLvl = random.nextInt(1, enchant.maxLevel);
            curLevel += enchLvl;
            if curLevel > level {
                enchLvl -= (curLevel - level);
                curLevel = level;
            }
            result = result.withEnchantment(enchant, enchLvl);
        }
    }
    return new MCMerchantOffer(<item:minecraft:emerald> * random.nextInt(20, 33), result, 3, 15, 0.2);
});

villagerTrades.addTrade(<profession:minecraft:armorer>, 4, (entity, random) => {
    var level = random.nextInt(5, 20);
    var curLevel = 0;
    var result = <item:mekanismtools:steel_boots>;
    while curLevel < level {
        var enchant = enchantsBoot[random.nextInt(enchantsBoot.length as int)];
        if enchant.canApply(result) {
            var enchLvl = random.nextInt(1, enchant.maxLevel);
            curLevel += enchLvl;
            if curLevel > level {
                enchLvl -= (curLevel - level);
                curLevel = level;
            }
            result = result.withEnchantment(enchant, enchLvl);
        }
    }
    return new MCMerchantOffer(<item:minecraft:emerald> * random.nextInt(13, 28), result, 3, 15, 0.2);
});

villagerTrades.addTrade(<profession:minecraft:toolsmith>, 4, (entity, random) => {
    var level = random.nextInt(5, 20);
    var curLevel = 0;
    var result = <item:mekanismtools:steel_axe>;
    while curLevel < level {
        var enchant = enchantsAxe[random.nextInt(enchantsAxe.length as int)];
        if enchant.canApply(result) {
            var enchLvl = random.nextInt(1, enchant.maxLevel);
            curLevel += enchLvl;
            if curLevel > level {
                enchLvl -= (curLevel - level);
                curLevel = level;
            }
            result = result.withEnchantment(enchant, enchLvl);
        }
    }
    return new MCMerchantOffer(<item:minecraft:emerald> * random.nextInt(17, 32), result, 3, 15, 0.2);
});

villagerTrades.addTrade(<profession:minecraft:toolsmith>, 4, (entity, random) => {
    var level = random.nextInt(5, 20);
    var curLevel = 0;
    var result = <item:mekanismtools:steel_shovel>;
    while curLevel < level {
        var enchant = enchantsShov[random.nextInt(enchantsShov.length as int)];
        if enchant.canApply(result) {
            var enchLvl = random.nextInt(1, enchant.maxLevel);
            curLevel += enchLvl;
            if curLevel > level {
                enchLvl -= (curLevel - level);
                curLevel = level;
            }
            result = result.withEnchantment(enchant, enchLvl);
        }
    }
    return new MCMerchantOffer(<item:minecraft:emerald> * random.nextInt(10, 25), result, 3, 15, 0.2);
});

villagerTrades.addTrade(<profession:minecraft:toolsmith>, 5, (entity, random) => {
    var level = random.nextInt(5, 20);
    var curLevel = 0;
    var result = <item:mekanismtools:steel_pickaxe>;
    while curLevel < level {
        var enchant = enchantsPick[random.nextInt(enchantsPick.length as int)];
        if enchant.canApply(result) {
            var enchLvl = random.nextInt(1, enchant.maxLevel);
            curLevel += enchLvl;
            if curLevel > level {
                enchLvl -= (curLevel - level);
                curLevel = level;
            }
            result = result.withEnchantment(enchant, enchLvl);
        }
    }
    return new MCMerchantOffer(<item:minecraft:emerald> * random.nextInt(18, 33), result, 3, 15, 0.2);
});

villagerTrades.addTrade(<profession:minecraft:toolsmith>, 4, (entity, random) => {
    return new MCMerchantOffer(<item:mekanism:ingot_steel>, <item:minecraft:emerald>, 12, 30, 0.05);
});

/*
villagerTrades.addTrade(<profession:minecraft:toolsmith>, 5, (entity, random) => {
    var level = random.nextInt(5, 20);
    var curLevel = 0;
    var result = <item:mekanismtools:steel_paxel>;
    while curLevel < level {
        var enchant = enchantsPxl[random.nextInt(enchantsPxl.length as int)];
        if enchant.canApply(result) {
            var enchLvl = random.nextInt(1, enchant.maxLevel);
            curLevel += enchLvl;
            if curLevel > level {
                enchLvl -= (curLevel - level);
                curLevel = level;
            }
            result = result.withEnchantment(enchant, enchLvl);
        }
    }
    return new MCMerchantOffer(<item:minecraft:emerald> * random.nextInt(25, 39), result, 3, 15, 0.2);
});
*/

villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 5, (entity, random) => {
    var level = random.nextInt(5, 20);
    var curLevel = 0;
    var result = <item:mekanismtools:steel_sword>;
    while curLevel < level {
        var enchant = enchantsSword[random.nextInt(enchantsSword.length as int)];
        if enchant.canApply(result) {
            var enchLvl = random.nextInt(1, enchant.maxLevel);
            curLevel += enchLvl;
            if curLevel > level {
                enchLvl -= (curLevel - level);
                curLevel = level;
            }
            result = result.withEnchantment(enchant, enchLvl);
        }
    }
    return new MCMerchantOffer(<item:minecraft:emerald> * random.nextInt(17, 32), result, 3, 15, 0.2);
});

villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 4, (entity, random) => {
    return new MCMerchantOffer(<item:mekanism:ingot_steel>, <item:minecraft:emerald>, 12, 30, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 4, (entity, random) => {
    var level = random.nextInt(5, 20);
    var curLevel = 0;
    var result = <item:mekanismtools:steel_axe>;
    while curLevel < level {
        var enchant = enchantsSword[random.nextInt(enchantsSword.length as int)];
        if enchant.canApply(result) {
            var enchLvl = random.nextInt(1, enchant.maxLevel);
            curLevel += enchLvl;
            if curLevel > level {
                enchLvl -= (curLevel - level);
                curLevel = level;
            }
            result = result.withEnchantment(enchant, enchLvl);
        }
    }
    return new MCMerchantOffer(<item:minecraft:emerald> * random.nextInt(17, 32), result, 3, 15, 0.2);
});

villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 5, (entity, random) => {
    return new MCMerchantOffer(<item:minecraft:netherite_ingot>, <item:minecraft:emerald> * random.nextInt(7, 22), 12, 30, 0.05);
});