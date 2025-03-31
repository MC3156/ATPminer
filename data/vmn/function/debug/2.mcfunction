
execute unless block ~ ~ ~ #minecraft:air run scoreboard players operation TRA CS.a = #temp dp_vmn.temp
execute unless block ~ ~ ~ #minecraft:air run function vmn:debug/3
execute if block ~ ~ ~ #minecraft:air run scoreboard players add #temp dp_vmn.temp 1
execute if block ~ ~ ~ #minecraft:air positioned ^ ^ ^.05 unless score #temp4 dp_vmn.temp matches 1 if score #temp dp_vmn.temp matches ..141 run function vmn:debug/2

#execute if score #temp4 dp_vmn.temp matches -4.. run say -4..
execute if score #temp4 dp_vmn.temp matches -4.. if score @s dp_vmn.oak_log matches 1.. run function vmn:debug/5
