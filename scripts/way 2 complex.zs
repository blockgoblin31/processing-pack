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
            world.setBlockState(pos, <blockstate:minecraft:contenttweaker:common_cluster>);
            var heldItem = player.getHeldItem(hand);
            heldItem.mutable().shrink(1);
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
            world.setBlockState(pos, <blockstate:minecraft:contenttweaker:uncommon_cluster>);
            var heldItem = player.getHeldItem(hand);
            heldItem.mutable().shrink(1);
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
            world.setBlockState(pos, <blockstate:minecraft:contenttweaker:rare_cluster>);
            var heldItem = player.getHeldItem(hand);
            heldItem.mutable().shrink(1);
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
            world.setBlockState(pos, <blockstate:minecraft:contenttweaker:epic_cluster>);
            var heldItem = player.getHeldItem(hand);
            heldItem.mutable().shrink(1);
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
            world.setBlockState(pos, <blockstate:minecraft:contenttweaker:legendary_cluster>);
            var heldItem = player.getHeldItem(hand);
            heldItem.mutable().shrink(1);
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
            world.setBlockState(pos, <blockstate:minecraft:contenttweaker:omega_cluster>);
            var heldItem = player.getHeldItem(hand);
            heldItem.mutable().shrink(1);
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
            world.setBlockState(pos, <blockstate:minecraft:contenttweaker:ultimate_cluster>);
            var heldItem = player.getHeldItem(hand);
            heldItem.mutable().shrink(1);
        }
    }
});