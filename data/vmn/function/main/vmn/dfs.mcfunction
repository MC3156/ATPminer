##尝试深度搜索
# 当搜索总数到达广度搜索线程数的10倍就停止，进行广度搜索

execute unless entity @e[tag=dp_vmn_CONST,type=minecraft:armor_stand] run scoreboard players set #temp_secret dp_vmn.temp 3161

execute if score #temp_secret dp_vmn.temp matches 3161 run tellraw @a [{"text":"连锁采集功能: ","color":"gold"},{"text":"请管理员使用/reload重载数据包 ","color":"red"},{"text":"→[缺失CONST实体]","color":"gray","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"可能的原因\n","color":"gold"},{"text":"使用/kill或其他方式清除了CONST常驻实体(包括1个盔甲架实体,它位于世界出生点区块的建筑限制区域外,不影响数据包之外的其它正常功能)","color":"gray"}]}}]

execute unless score #temp_secret dp_vmn.temp matches 3161 store result score #foodLevel dp_vmn.temp run data get entity @s foodLevel
execute unless score #temp_secret dp_vmn.temp matches 3161 if score #foodLevel dp_vmn.temp matches ..1 run scoreboard players reset #block_value dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3161 if score #foodLevel dp_vmn.temp matches ..1 run scoreboard players set #temp_secret dp_vmn.temp 3162

execute if score #temp_secret dp_vmn.temp matches 3162 run scoreboard players reset #foodLevel dp_vmn.temp

execute unless score #temp_secret dp_vmn.temp matches 3161..3162 run tag @s add dp_vmn_TEMP
execute unless score #temp_secret dp_vmn.temp matches 3161..3162 store result score #temp_version dp_vmn.temp run data get entity @s DataVersion 1
execute unless score #temp_secret dp_vmn.temp matches 3161..3162 anchored eyes run function vmn:main/vmn/eye_track
execute unless score #temp_secret dp_vmn.temp matches 3161..3162 store result score #count dp_vmn.temp if entity @e[type=minecraft:marker,tag=dp_vmn_SUB,tag=dp_vmn_NO_TAG]
execute unless score #temp_secret dp_vmn.temp matches 3161..3162 as @e[type=minecraft:marker,tag=dp_vmn_SUB,tag=dp_vmn_NO_TAG,distance=..128] at @s run function vmn:main/vmn/dfs4
execute unless score #temp_secret dp_vmn.temp matches 3161..3162 unless score #dfs_state dp_vmn.temp matches 1 run scoreboard players set #temp_pass_hand dp_vmn.temp 1
execute unless score #temp_secret dp_vmn.temp matches 3161..3162 unless score #dfs_state dp_vmn.temp matches 1 run function vmn:main/vmn/dfs_check_tool
execute unless score #temp_secret dp_vmn.temp matches 3161..3162 unless score #dfs_state dp_vmn.temp matches 1 if score #count dp_vmn.temp > #dfs_expected_count dp_vmn.temp run scoreboard players set #dfs_state dp_vmn.temp 1
execute unless score #temp_secret dp_vmn.temp matches 3161..3162 unless score #dfs_state dp_vmn.temp matches 1 run function vmn:main/vmn/dfs6
execute unless score #temp_secret dp_vmn.temp matches 3161..3162 run kill @e[type=minecraft:marker,tag=dp_vmn_SUB,tag=dp_vmn_NO_TAG]
execute unless score #temp_secret dp_vmn.temp matches 3161..3162 run function vmn:main/vmn/dfs_reset
execute unless score #temp_secret dp_vmn.temp matches 3161..3162 run tag @p[tag=dp_vmn_TEMP] remove dp_vmn_TEMP
execute as @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_0,tag=dp_vmn_TEMP] run kill @s
scoreboard players reset #temp_secret dp_vmn.temp
