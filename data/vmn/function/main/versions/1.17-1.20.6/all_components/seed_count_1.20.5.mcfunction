##种子数量处理+种植 1.20.5

execute if block ~ ~ ~ #minecraft:air store result score #temp_scount dp_vmn.temp run data get entity @s Item.count 1
execute if block ~ ~ ~ #minecraft:air if score #temp_scount dp_vmn.temp matches 1 run kill @s
execute if block ~ ~ ~ #minecraft:air if entity @s store result entity @s Item.count int 1 run scoreboard players remove #temp_scount dp_vmn.temp 1
