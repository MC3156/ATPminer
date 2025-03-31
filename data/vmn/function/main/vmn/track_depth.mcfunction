##视追深度
# 用于矩形挖掘定位

execute unless block ~ ~ ~ #minecraft:air run scoreboard players operation @s dp_vmn.track_depth = #temp_track_depth dp_vmn.temp
execute unless block ~ ~ ~ #minecraft:air run scoreboard players reset #temp_track_depth dp_vmn.temp
execute if block ~ ~ ~ #minecraft:air run scoreboard players add #temp_track_depth dp_vmn.temp 1
execute if block ~ ~ ~ #minecraft:air if score #temp_track_depth dp_vmn.temp matches ..141 positioned ^ ^ ^.05 run function vmn:main/vmn/track_depth
