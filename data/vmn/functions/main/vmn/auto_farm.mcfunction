##自动连锁耕地 进度

advancement revoke @s only vmn:farm_land
advancement grant @s only vmn:tutorial/range_farm
scoreboard players reset #temp_farm dp_vmn.temp
scoreboard players set #count dp_vmn.temp 0

tag @s add dp_vmn_TEMP
execute anchored eyes positioned ^ ^ ^ run function vmn:main/vmn/auto_farm2
execute store result score #temp_version dp_vmn.temp run data get entity @s DataVersion
execute if score #temp_farm dp_vmn.temp matches 1 run function vmn:main/vmn/dfs_check_tool
execute unless score #dfs_expected_count dp_vmn.temp matches -2147483648..2147483647 run scoreboard players reset #temp_farm dp_vmn.temp

execute if score #temp_farm dp_vmn.temp matches 1 if score @s dp_vmn.ATPminer.farming_mode matches 1 as @e[type=minecraft:marker,limit=1,sort=nearest,distance=..16,tag=dp_vmn_FARM] at @s run function vmn:main/vmn/auto_farm3
execute if score #temp_farm dp_vmn.temp matches 1 if score @s dp_vmn.ATPminer.farming_mode matches 2 as @e[type=minecraft:marker,limit=1,sort=nearest,distance=..16,tag=dp_vmn_FARM] at @s run function vmn:main/vmn/auto_farm6

execute positioned ~ ~10000 ~ run kill @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_0,tag=dp_vmn_TEMP,limit=1,sort=nearest,distance=..0.001]
kill @e[distance=..16,type=minecraft:marker,limit=1,sort=nearest,tag=dp_vmn_FARM]
tag @s remove dp_vmn_TEMP
function vmn:main/vmn/dfs_reset
