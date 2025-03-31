# 7

execute unless block ~ ~ ~ #minecraft:air run scoreboard players operation TRA CS.a = #temp dp_vmn.temp
execute unless block ~ ~ ~ #minecraft:air run scoreboard players reset #temp dp_vmn.temp
execute if block ~ ~ ~ #minecraft:air run scoreboard players add #temp dp_vmn.temp 1
execute if block ~ ~ ~ #minecraft:air if score #temp dp_vmn.temp matches ..141 positioned ^ ^ ^.05 run function vmn:debug/8
