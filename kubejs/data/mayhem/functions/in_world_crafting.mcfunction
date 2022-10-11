#prep

execute as @e[type=item] at @s store result score @s count run data get entity @s Item.Count


execute as @e[type=item,nbt={Item:{id:"contenttweaker:common_cluster_1_1"}}] at @s if block ~ ~ ~ water run loot spawn ~ ~ ~ loot mayhem:tier_1
execute as @e[type=item,nbt={Item:{id:"contenttweaker:common_cluster_1_1"}}] at @s if block ~ ~ ~ water run scoreboard players remove @s count 1
execute as @e[type=item,nbt={Item:{id:"contenttweaker:common_cluster_1_1"}}] at @s if block ~ ~ ~ water store result entity @s Item.Count int 1 run scoreboard players get @s count

execute as @e[type=item,nbt={Item:{id:"contenttweaker:enriched_common"}}] at @s if block ~ ~ ~ water run loot spawn ~ ~ ~ loot mayhem:tier_1_1
execute as @e[type=item,nbt={Item:{id:"contenttweaker:enriched_common"}}] at @s if block ~ ~ ~ water run scoreboard players remove @s count 1
execute as @e[type=item,nbt={Item:{id:"contenttweaker:enriched_common"}}] at @s if block ~ ~ ~ water store result entity @s Item.Count int 1 run scoreboard players get @s count

execute as @e[type=item,nbt={Item:{id:"contenttweaker:pure_cluster"}}] at @s if block ~ ~ ~ minecraft:water run loot spawn ~ ~ ~ loot mayhem:quench_water
execute as @e[type=item,nbt={Item:{id:"contenttweaker:pure_cluster"}}] at @s if block ~ ~ ~ minecraft:water run scoreboard players remove @s count 1
execute as @e[type=item,nbt={Item:{id:"contenttweaker:pure_cluster"}}] at @s if block ~ ~ ~ minecraft:water store result entity @s Item.Count int 1 run scoreboard players get @s count

execute as @e[type=item,nbt={Item:{id:"contenttweaker:pure_cluster"}}] at @s if block ~ ~ ~ exnihilosequentia:sea_water run loot spawn ~ ~ ~ loot mayhem:quench_seawater
execute as @e[type=item,nbt={Item:{id:"contenttweaker:pure_cluster"}}] at @s if block ~ ~ ~ exnihilosequentia:sea_water run scoreboard players remove @s count 1
execute as @e[type=item,nbt={Item:{id:"contenttweaker:pure_cluster"}}] at @s if block ~ ~ ~ exnihilosequentia:sea_water store result entity @s Item.Count int 1 run scoreboard players get @s count

execute as @e[type=item,nbt={Item:{id:"contenttweaker:pure_cluster"}}] at @s if block ~ ~ ~ immersiveengineering:plantoil run loot spawn ~ ~ ~ loot mayhem:quench_oil
execute as @e[type=item,nbt={Item:{id:"contenttweaker:pure_cluster"}}] at @s if block ~ ~ ~ immersiveengineering:plantoil run scoreboard players remove @s count 1
execute as @e[type=item,nbt={Item:{id:"contenttweaker:pure_cluster"}}] at @s if block ~ ~ ~ immersiveengineering:plantoil store result entity @s Item.Count int 1 run scoreboard players get @s count