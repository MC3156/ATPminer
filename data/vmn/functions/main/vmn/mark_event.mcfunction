##标记连锁事件
# 广度搜索

execute unless score #dfs_state dp_vmn.temp matches 1 store result score #foodLevel dp_vmn.temp run data get entity @s foodLevel
execute unless score #dfs_state dp_vmn.temp matches 1 if score #foodLevel dp_vmn.temp matches ..1 run scoreboard players reset #block_value dp_vmn.temp
execute unless score #dfs_state dp_vmn.temp matches 1 if score #foodLevel dp_vmn.temp matches ..1 run scoreboard players set #temp_secret dp_vmn.temp 3163

execute if score #temp_secret dp_vmn.temp matches 3163 run scoreboard players reset #foodLevel dp_vmn.temp

execute unless score #temp_secret dp_vmn.temp matches 3163 run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_MAIN","dp_vmn_ACTIVE_0"]}
execute unless score #temp_secret dp_vmn.temp matches 3163 store result entity @e[type=minecraft:marker,limit=1,sort=nearest,tag=dp_vmn_MAIN,tag=dp_vmn_ACTIVE_0] data.value int 1 run scoreboard players get #block_value dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3163 as @e[type=minecraft:marker,tag=dp_vmn_ACTIVE_0,limit=1,sort=nearest] at @s run function vmn:main/vmn/mark_event2
execute unless score #temp_secret dp_vmn.temp matches 3163 anchored eyes run function vmn:main/vmn/eye_track
execute unless score #temp_secret dp_vmn.temp matches 3163 if score #no_damage dp_vmn.temp matches 1 run scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_ACTIVE_0,limit=1,sort=nearest] dp_vmn.no_damage 1
execute unless score #temp_secret dp_vmn.temp matches 3163 as @e[type=minecraft:marker,tag=dp_vmn_NO_TAG] run function vmn:main/vmn/sub_random_tag
execute unless score #temp_secret dp_vmn.temp matches 3163 as @e[type=minecraft:marker,tag=dp_vmn_ACTIVE_0,limit=1,sort=nearest] run tag @s remove dp_vmn_ACTIVE_0
execute unless score #temp_secret dp_vmn.temp matches 3163 run scoreboard players reset #twice_check dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3163 run scoreboard players reset #eye_track_times dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3163 run scoreboard players reset #block_value dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3163 run scoreboard players reset #no_damage dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3163 run data remove storage dp_vmn:1 TEMP.random

scoreboard players reset #temp_secret dp_vmn.temp
