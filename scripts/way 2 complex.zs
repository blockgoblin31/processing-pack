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
            (world as MCServerWorld).server.executeCommand("loot spawn " + pos.x as string + " " + pos.y as string + " " + pos.z as string + " loot mayhem:tier_1");
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
            (world as MCServerWorld).server.executeCommand("loot spawn " + pos.x as string + " " + pos.y as string + " " + pos.z as string + " loot mayhem:tier_1_1");
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
            (world as MCServerWorld).server.executeCommand("loot spawn " + pos.x as string + " " + pos.y as string + " " + pos.z as string + " loot mayhem:quench_water");
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
            (world as MCServerWorld).server.executeCommand("loot spawn " + pos.x as string + " " + pos.y as string + " " + pos.z as string + " loot mayhem:quench_seawater");
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
            (world as MCServerWorld).server.executeCommand("loot spawn " + pos.x as string + " " + pos.y as string + " " + pos.z as string + " loot mayhem:quench_oil");
            (item as MCItemEntity).item.mutable().shrink(1);
        }
    }}
});