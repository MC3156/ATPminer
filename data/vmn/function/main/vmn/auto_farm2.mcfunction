##自动连锁耕地 2
# 递归检测

scoreboard players add #temp_eye_track dp_vmn.temp 1

execute unless score #temp_farm dp_vmn.temp matches 1 if block ~ ~ ~ minecraft:farmland align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_FARM"]}
execute if entity @e[type=minecraft:marker,tag=dp_vmn_FARM,distance=..16] run scoreboard players set #temp_farm dp_vmn.temp 1
execute unless score #temp_farm dp_vmn.temp matches 1 positioned ~.05 ~ ~ if block ~ ~ ~ minecraft:farmland align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_FARM"]}
execute if entity @e[type=minecraft:marker,tag=dp_vmn_FARM,distance=..16] run scoreboard players set #temp_farm dp_vmn.temp 1
execute unless score #temp_farm dp_vmn.temp matches 1 positioned ~ ~ ~.05 if block ~ ~ ~ minecraft:farmland align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_FARM"]}
execute if entity @e[type=minecraft:marker,tag=dp_vmn_FARM,distance=..16] run scoreboard players set #temp_farm dp_vmn.temp 1
execute unless score #temp_farm dp_vmn.temp matches 1 positioned ~ ~.05 ~ if block ~ ~ ~ minecraft:farmland align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_FARM"]}
execute if entity @e[type=minecraft:marker,tag=dp_vmn_FARM,distance=..16] run scoreboard players set #temp_farm dp_vmn.temp 1
execute unless score #temp_farm dp_vmn.temp matches 1 positioned ~-.05 ~ ~ if block ~ ~ ~ minecraft:farmland align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_FARM"]}
execute if entity @e[type=minecraft:marker,tag=dp_vmn_FARM,distance=..16] run scoreboard players set #temp_farm dp_vmn.temp 1
execute unless score #temp_farm dp_vmn.temp matches 1 positioned ~ ~ ~-.05 if block ~ ~ ~ minecraft:farmland align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_FARM"]}
execute if entity @e[type=minecraft:marker,tag=dp_vmn_FARM,distance=..16] run scoreboard players set #temp_farm dp_vmn.temp 1
execute unless score #temp_farm dp_vmn.temp matches 1 positioned ~ ~-.05 ~ if block ~ ~ ~ minecraft:farmland align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_FARM"]}
execute if entity @e[type=minecraft:marker,tag=dp_vmn_FARM,distance=..16] run scoreboard players set #temp_farm dp_vmn.temp 1

execute unless score #temp_farm dp_vmn.temp matches 1 unless score #temp_eye_track dp_vmn.temp matches 101.. positioned ^ ^ ^.05 run function vmn:main/vmn/auto_farm2
