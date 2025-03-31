##范围种植

function vmn:main/versions/1.17-1.20.6/advancement_reward/1
advancement grant @s only vmn:tutorial/range_plant
scoreboard players set #count dp_vmn.temp 0
scoreboard players set #temp dp_vmn.temp 0

tag @s add dp_vmn_TEMP
execute anchored eyes positioned ^ ^ ^ run function vmn:main/vmn/auto_farm2
function vmn:config/farmland/seed_count
execute if entity @s[gamemode=creative] run scoreboard players set #count dp_vmn.temp 2147483647

execute unless score #count dp_vmn.temp matches ..0 if score @s dp_vmn.ATPminer.farming_mode matches 1 as @e[type=minecraft:marker,limit=1,sort=nearest,distance=..16,tag=dp_vmn_FARM] at @s run function vmn:main/vmn/range_planting2
execute unless score #count dp_vmn.temp matches ..0 if score @s dp_vmn.ATPminer.farming_mode matches 2 as @e[type=minecraft:marker,limit=1,sort=nearest,distance=..16,tag=dp_vmn_FARM] at @s run function vmn:main/vmn/range_planting3

kill @e[distance=..16,type=minecraft:marker,limit=1,sort=nearest,tag=dp_vmn_FARM]
tag @s remove dp_vmn_TEMP
function vmn:main/vmn/dfs_reset
