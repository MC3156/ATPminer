##活跃子标记
# 挖掘、搜索、失活

execute if score @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] dp_vmn.block_count >= #value_max_bfs dp_vmn.global_setting run scoreboard players set #temp_secret dp_vmn.temp 3157
execute if score #temp_secret dp_vmn.temp matches 3157 run function vmn:main/vmn/disable_entity
execute unless score #temp_secret dp_vmn.temp matches 3157 if score @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] dp_vmn.max_damage matches 1.. if score #count dp_vmn.temp < @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] dp_vmn.expected_count run function vmn:main/vmn/active_sub_marker2
execute unless score #temp_secret dp_vmn.temp matches 3157 unless score @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] dp_vmn.max_damage matches 1.. run function vmn:main/vmn/active_sub_marker2
execute unless score #temp_secret dp_vmn.temp matches 3157 if score @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] dp_vmn.depth <= #value_max_depth dp_vmn.global_setting if entity @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,sort=nearest,distance=..128] run function vmn:main/vmn/active_sub_marker4
kill @s
