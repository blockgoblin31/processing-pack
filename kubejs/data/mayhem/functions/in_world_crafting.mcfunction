#prep

execute as @e[type=item] at @s store result score @s count run data get entity @s Item.Count


execute as @e[type=item,nbt={Item:{id:"contenttweaker:common_cluster_1_1"}}] at @s if block ~ ~ ~ water run loot spawn ~ ~ ~ loot mayhem:tier_1
execute as @e[type=item,nbt={Item:{id:"contenttweaker:common_cluster_1_1"}}] at @s if block ~ ~ ~ water run scoreboard players remove @s count 1
execute as @e[type=item,nbt={Item:{id:"contenttweaker:common_cluster_1_1"}}] at @s if block ~ ~ ~ water store result entity @s Item.Count int 1 run scoreboard players get @s count