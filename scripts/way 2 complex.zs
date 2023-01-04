import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.MCPlayerInteractEvent;
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    if player == null || player.world.isRemote() {
        return;
    }
    var world = player.world;
    var item = event.getItemStack();
    var hand = event.hand;
    if <item:contenttweaker:coalmeal1>.matches(item) {
        var blockState = world.getBlockState(pos);
        if <block:minecraft:stone> == blockState.block {
            pos = pos.up();
            blockState = world.getBlockState(pos);
            if world.isAir(pos) {
                world.setBlockState(pos, <blockstate:contenttweaker:common_cluster>);
                if !(player.isCreative()) == false {
                    println(player.isCreative() as string);
                    var heldItem = player.getHeldItem(hand);
                    heldItem.mutable().shrink(1);
                }
            }
        }
    }
});

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    if player == null || player.world.isRemote() {
        return;
    }
    var world = player.world;
    var item = event.getItemStack();
    var hand = event.hand;
    if <item:contenttweaker:coalmeal2>.matches(item) {
        var blockState = world.getBlockState(pos);
        if <block:contenttweaker:improved_common> == blockState.block {
            world.setBlockState(pos, <blockstate:contenttweaker:uncommon_cluster>);
            if !(player.isCreative()) == false {
                var heldItem = player.getHeldItem(hand);
                heldItem.mutable().shrink(1);
            }
        }
    }
});

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    if player == null || player.world.isRemote() {
        return;
    }
    var world = player.world;
    var item = event.getItemStack();
    var hand = event.hand;
    if <item:contenttweaker:coalmeal3>.matches(item) {
        var blockState = world.getBlockState(pos);
        if <block:contenttweaker:improved_uncommon> == blockState.block {
            world.setBlockState(pos, <blockstate:contenttweaker:rare_cluster>);
            if !(player.isCreative()) == false {
                var heldItem = player.getHeldItem(hand);
                heldItem.mutable().shrink(1);
            }
        }
    }
});

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    if player == null || player.world.isRemote() {
        return;
    }
    var world = player.world;
    var item = event.getItemStack();
    var hand = event.hand;
    if <item:contenttweaker:coalmeal4>.matches(item) {
        var blockState = world.getBlockState(pos);
        if <block:contenttweaker:improved_rare> == blockState.block {
            world.setBlockState(pos, <blockstate:contenttweaker:epic_cluster>);
            if !(player.isCreative()) == false {
                var heldItem = player.getHeldItem(hand);
                heldItem.mutable().shrink(1);
            }
        }
    }
});

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    if player == null || player.world.isRemote() {
        return;
    }
    var world = player.world;
    var item = event.getItemStack();
    var hand = event.hand;
    if <item:contenttweaker:coalmeal5>.matches(item) {
        var blockState = world.getBlockState(pos);
        if <block:contenttweaker:improved_epic> == blockState.block {
            world.setBlockState(pos, <blockstate:contenttweaker:legendary_cluster>);
            if !(player.isCreative()) == false {
                var heldItem = player.getHeldItem(hand);
                heldItem.mutable().shrink(1);
            }
        }
    }
});

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    if player == null || player.world.isRemote() {
        return;
    }
    var world = player.world;
    var item = event.getItemStack();
    var hand = event.hand;
    if <item:contenttweaker:coalmeal6>.matches(item) {
        var blockState = world.getBlockState(pos);
        if <block:contenttweaker:improved_legendary> == blockState.block {
            world.setBlockState(pos, <blockstate:contenttweaker:omega_cluster>);
            if !(player.isCreative()) == false {
                var heldItem = player.getHeldItem(hand);
                heldItem.mutable().shrink(1);
            }
        }
    }
});

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    if player == null || player.world.isRemote() {
        return;
    }
    var world = player.world;
    var item = event.getItemStack();
    var hand = event.hand;
    if <item:contenttweaker:coalmeal7>.matches(item) {
        var blockState = world.getBlockState(pos);
        if <block:contenttweaker:improved_omega> == blockState.block {
            world.setBlockState(pos, <blockstate:contenttweaker:ultimate_cluster>);
            if !(player.isCreative()) == false {
                var heldItem = player.getHeldItem(hand);
                heldItem.mutable().shrink(1);
            }
        }
    }
});

import crafttweaker.api.event.tick.MCWorldTickEvent;
import crafttweaker.api.world.MCServerWorld;
import crafttweaker.api.entity.MCEntity;
import crafttweaker.api.entity.MCItemEntity;

CTEventManager.register<crafttweaker.api.event.tick.MCWorldTickEvent>((event) => {
    var world = event.getWorld();
    if event.end {
        return;
    }
    if world.isRemote() {
        return;
    }
    if world is MCServerWorld{
    var items = (world as MCServerWorld).getEntities((entity as MCEntity) => entity is MCItemEntity && <item:contenttweaker:common_cluster_1_1>.matches((entity as MCItemEntity).getItem()), <entitytype:minecraft:item>) as MCEntity[];
    for item in items {
        println(item as string);
        var pos = item.getPosition();
        println(pos as string);
        var block = world.getBlockState(pos);
        println(block as string);
        if <block:minecraft:water> == block.block {
            (world as MCServerWorld).server.executeCommand("loot spawn " + pos.x as string + " " + pos.y as string + " " + pos.z as string + " loot mayhem:tier_1", true);
            (item as MCItemEntity).item.mutable().shrink(1);
        }
    }}
});

CTEventManager.register<crafttweaker.api.event.tick.MCWorldTickEvent>((event) => {
    var world = event.getWorld();
    if event.end {
        return;
    }
    if world.isRemote() {
        return;
    }
    if world is MCServerWorld{
    var items = (world as MCServerWorld).getEntities((entity as MCEntity) => entity is MCItemEntity && <item:contenttweaker:enriched_common>.matches((entity as MCItemEntity).getItem()), <entitytype:minecraft:item>) as MCEntity[];
    for item in items {
        println(item as string);
        var pos = item.getPosition();
        println(pos as string);
        var block = world.getBlockState(pos);
        println(block as string);
        if <block:minecraft:water> == block.block {
            (world as MCServerWorld).server.executeCommand("loot spawn " + pos.x as string + " " + pos.y as string + " " + pos.z as string + " loot mayhem:tier_1_1", true);
            (item as MCItemEntity).item.mutable().shrink(1);
        }
    }}
});

CTEventManager.register<crafttweaker.api.event.tick.MCWorldTickEvent>((event) => {
    var world = event.getWorld();
    if event.end {
        return;
    }   
    if world.isRemote() {
        return;
    }
    if world is MCServerWorld{
    var items = (world as MCServerWorld).getEntities((entity as MCEntity) => entity is MCItemEntity && <item:contenttweaker:pure_cluster>.matches((entity as MCItemEntity).getItem()), <entitytype:minecraft:item>) as MCEntity[];
    for item in items {
        println(item as string);
        var pos = item.getPosition();
        println(pos as string);
        var block = world.getBlockState(pos);
        println(block as string);
        if <block:minecraft:water> == block.block {
            (world as MCServerWorld).server.executeCommand("loot spawn " + pos.x as string + " " + pos.y as string + " " + pos.z as string + " loot mayhem:quench_water", true);
            (item as MCItemEntity).item.mutable().shrink(1);
        }
    }}
});

CTEventManager.register<crafttweaker.api.event.tick.MCWorldTickEvent>((event) => {
    var world = event.getWorld();
    if event.end {
        return;
    }
    if world.isRemote() {
        return;
    }
    if world is MCServerWorld{
    var items = (world as MCServerWorld).getEntities((entity as MCEntity) => entity is MCItemEntity && <item:contenttweaker:pure_cluster>.matches((entity as MCItemEntity).getItem()), <entitytype:minecraft:item>) as MCEntity[];
    for item in items {
        println(item as string);
        var pos = item.getPosition();
        println(pos as string);
        var block = world.getBlockState(pos);
        println(block as string);
        if <block:exnihilosequentia:sea_water> == block.block {
            (world as MCServerWorld).server.executeCommand("loot spawn " + pos.x as string + " " + pos.y as string + " " + pos.z as string + " loot mayhem:quench_seawater", true);
            (item as MCItemEntity).item.mutable().shrink(1);
        }
    }}
});

CTEventManager.register<crafttweaker.api.event.tick.MCWorldTickEvent>((event) => {
    var world = event.getWorld();
    if event.end {
        return;
    }
    if world.isRemote() {
        return;
    }
    if world is MCServerWorld{
    var items = (world as MCServerWorld).getEntities((entity as MCEntity) => entity is MCItemEntity && <item:contenttweaker:pure_cluster>.matches((entity as MCItemEntity).getItem()), <entitytype:minecraft:item>) as MCEntity[];
    for item in items {
        println(item as string);
        var pos = item.getPosition();
        println(pos as string);
        var block = world.getBlockState(pos);
        println(block as string);
        if <block:immersiveengineering:plantoil_fluid_block> == block.block {
            (world as MCServerWorld).server.executeCommand("loot spawn " + pos.x as string + " " + pos.y as string + " " + pos.z as string + " loot mayhem:quench_oil", true);
            (item as MCItemEntity).item.mutable().shrink(1);
        }
    }}
});

import crafttweaker.api.event.entity.player.interact.MCEntityInteractEvent;

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCEntityInteractEvent>((event) => {
    var entity = event.target;
    var hand = event.hand;
    var player = event.player;
    var world = player.world;
    if player == null || player.world.isRemote() {
        return;
    }
    var item = player.getHeldItem(hand);
    if entity.type == <entitytype:minecraft:wandering_trader> {
        if <item:minecraft:bucket>.matches(item) && world is MCServerWorld {
            (world as MCServerWorld).server.executeCommand("/playsound minecraft:entity.wandering_trader.no neutral "+player.getName() as string+" "+entity.position.x as string+" "+entity.position.y as string+" "+entity.position.z as string+" 30", true);
            item.mutable().shrink(1);
            if player.inventory.firstEmptyStack > -1 {
                var time = (world.gameTime % 40) as string;
                player.inventory.addIItemStackToInventory(<item:contenttweaker:wandering_trader_bucket>.withTag({Time: time as string}));
            } else {
                world.addEntity(new MCItemEntity(world, player.position.x, player.position.y, player.position.z, <item:contenttweaker:wandering_trader_bucket>));
            }
            entity.remove();
        }
    }
});

import crafttweaker.api.event.entity.living.MCLivingEntityUseItemFinishEvent;
import crafttweaker.api.player.MCPlayerEntity;

CTEventManager.register<crafttweaker.api.event.entity.living.MCLivingEntityUseItemFinishEvent>((event) => {
    var item = event.item;
    var entity = event.entityLiving;
    var world = entity.world;
    if entity is MCPlayerEntity && world is MCServerWorld {
        if <item:contenttweaker:wandering_trader_bucket>.matches(item) {
            var player = entity as MCPlayerEntity;
            (world as MCServerWorld).server.executeCommand("/playsound minecraft:entity.wandering_trader.death neutral "+player.getName() as string+" "+player.position.x as string+" "+player.position.y as string+" "+player.position.z as string+" 30", true);
            player.getAttribute(<attribute:minecraft:generic.max_health>).applyPersistentModifier(constants.addtribute);
            player.inventory.addIItemStackToInventory(<item:minecraft:bucket>);
        }
    }
});

import crafttweaker.api.util.Random;
import crafttweaker.api.event.tick.MCPlayerTickEvent;

CTEventManager.register<crafttweaker.api.event.tick.MCPlayerTickEvent>((event) => {
    var player = event.player;
    var world = player.world;
    var time = world.gameTime % 40;
    if world is MCServerWorld {
        var held_main_hand = false;
        if <item:contenttweaker:wandering_trader_bucket>.withTag({Time: time as string}).matches(player.inventory.currentItem) {
            if world.random.nextInt(0, 2) == 1 {
                (world as MCServerWorld).server.executeCommand("/playsound minecraft:entity.wandering_trader.no neutral "+player.getName() as string+" "+player.position.x as string+" "+player.position.y as string+" "+player.position.z as string+" 20", true);
                held_main_hand = true;
            }
        }
        if <item:contenttweaker:wandering_trader_bucket>.withTag({Time: time as string}).matches(player.inventory.getStackInSlot(40)) && world.random.nextInt(0, 2) == 1 {
                (world as MCServerWorld).server.executeCommand("/playsound minecraft:entity.wandering_trader.no neutral "+player.getName() as string+" "+player.position.x as string+" "+player.position.y as string+" "+player.position.z as string+" 20", true);
        }
        for i in 0 .. 36 {
            if <item:contenttweaker:wandering_trader_bucket>.withTag({Time: time as string}).matches(player.inventory.getStackInSlot(i)) && world.random.nextInt(0, 3) == 1 {
                if held_main_hand {
                    held_main_hand = false;
                } else if i < 9 {
                    (world as MCServerWorld).server.executeCommand("/playsound minecraft:entity.wandering_trader.no neutral "+player.getName() as string+" "+player.position.x as string+" "+player.position.y as string+" "+player.position.z as string+" 15", true);
                } else {
                    (world as MCServerWorld).server.executeCommand("/playsound minecraft:entity.wandering_trader.no neutral "+player.getName() as string+" "+player.position.x as string+" "+player.position.y as string+" "+player.position.z as string+" 10", true);
                }
            }
        }
    }
});

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCEntityInteractEvent>((event) => {
    var entity = event.target;
    var hand = event.hand;
    var player = event.player;
    var world = player.world;
    if player == null || player.world.isRemote() {
        return;
    }
    var item = player.getHeldItem(hand);
    if entity.type == <entitytype:minecraft:trader_llama> {
        if <item:contenttweaker:wandering_trader_bucket>.matches(item) && world is MCServerWorld {
            var item = new MCItemEntity(world, entity.position.x, entity.position.y, entity.position.z, <item:contenttweaker:verdentium_nugget> * world.random.nextInt(1, 2));
            entity.remove();
            world.addEntity(item);
        }
    }
});

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    if player == null || player.world.isRemote() {
        return;
    }
    var world = player.world;
    var item = event.getItemStack();
    var hand = event.hand;
    if <item:exnihilosequentia:ancient_spores>.matches(item) {
        var blockState = world.getBlockState(pos);
        if <block:contenttweaker:verdent_fruit> == blockState.block {
            pos = pos.up();
            blockState = world.getBlockState(pos);
            if world.isAir(pos) {
                world.setBlockState(pos, <blockstate:minecraft:red_mushroom>);
                pos = pos.down();
                world.setBlockState(pos, <blockstate:contenttweaker:blank_cluster>);
                if !(player.isCreative()) == false {
                    println(player.isCreative() as string);
                    var heldItem = player.getHeldItem(hand);
                    heldItem.mutable().shrink(1);
                }
            }
        }
    }
});

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    if player == null || player.world.isRemote() {
        return;
    }
    var world = player.world;
    var item = event.getItemStack();
    var hand = event.hand;
    if <item:mekanism:sawdust>.matches(item) {
        var blockState = world.getBlockState(pos);
        if <block:contenttweaker:blank_cluster> == blockState.block {
            world.setBlockState(pos, <blockstate:contenttweaker:terrestrial_cluster>);
            if !(player.isCreative()) == false {
                var heldItem = player.getHeldItem(hand);
                heldItem.mutable().shrink(1);
            }
        }
    }
});

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    if player == null || player.world.isRemote() {
        return;
    }
    var world = player.world;
    var item = event.getItemStack();
    var hand = event.hand;
    if <item:contenttweaker:infernal_sawdust>.matches(item) {
        var blockState = world.getBlockState(pos);
        if <block:contenttweaker:blank_cluster> == blockState.block {
            world.setBlockState(pos, <blockstate:contenttweaker:infernal_cluster>);
            if !(player.isCreative()) == false {
                var heldItem = player.getHeldItem(hand);
                heldItem.mutable().shrink(1);
            }
        }
    }
});

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
    var pos = event.blockPos;
    var player = event.player;
    if player == null || player.world.isRemote() {
        return;
    }
    var world = player.world;
    var item = event.getItemStack();
    var hand = event.hand;
    if <item:contenttweaker:voidic_sawdust>.matches(item) {
        var blockState = world.getBlockState(pos);
        if <block:contenttweaker:blank_cluster> == blockState.block {
            world.setBlockState(pos, <blockstate:contenttweaker:voidic_cluster>);
            if !(player.isCreative()) == false {
                var heldItem = player.getHeldItem(hand);
                heldItem.mutable().shrink(1);
            }
        }
    }
});

import crafttweaker.api.util.BlockPos;

CTEventManager.register<crafttweaker.api.event.tick.MCWorldTickEvent>((event) => {
  if event.world is MCServerWorld && event.world.asServerWorld().server.getWorld(<resource:minecraft:the_end>) == event.world {
    var gateway = false;
    var coords = [new BlockPos(96, 75, 0), new BlockPos(91, 75, 29), new BlockPos(77, 75, 56), new BlockPos(56, 75, 77), new BlockPos(29, 75, 91), new BlockPos(-1, 75, 96), new BlockPos(-30, 75, 91), new BlockPos(-57, 75, 77), new BlockPos(-78, 75, 56), new BlockPos(-92, 75, 29), new BlockPos(-96, 75, -1), new BlockPos(-92, 75, -30), new BlockPos(-78, 75, -57), new BlockPos(-57, 75, -78), new BlockPos(-30, 75, -92), new BlockPos(0, 75, -96), new BlockPos(29, 75, -92), new BlockPos(56, 75, -78), new BlockPos(77, 75, -57), new BlockPos(91, 75, -30)] as BlockPos[];
    for num in 0 .. 20 {
      if !(event.world.isAir(coords[num])) {
        gateway = true;
      } else {
      }
    }
    var dragons = (event.world as MCServerWorld).getEntities((entity) => true, <entitytype:minecraft:ender_dragon>);
    if !(gateway) && dragons.length >= 1 {
      dragons[0].onKillCommand();
      (event.world as MCServerWorld).server.executeCommand("kill @e[type=minecraft:end_crystal]", true);
      (event.world as MCServerWorld).server.executeCommand("kill @e[type=minecraft:experience_orb]", true);
      event.world.setBlockState(new BlockPos(0, 65, 0), <blockstate:minecraft:air>);
    }
  }
});