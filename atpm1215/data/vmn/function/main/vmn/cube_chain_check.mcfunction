##例行检查

execute unless entity @e[tag=dp_vmn_CONST,type=minecraft:armor_stand] run scoreboard players set #temp_secret dp_vmn.temp 3161

execute if score #temp_secret dp_vmn.temp matches 3161 run tellraw @a [{"text":"连锁采集功能: ","color":"gold"},{"text":"请管理员使用/reload重载数据包 ","color":"red"},{"text": "→[缺失CONST实体]", "color": "gray", "underlined": true, "hover_event": {"action": "show_text", "value": [{"text": "可能的原因\n", "color": "gold"}, {"text": "使用/kill或其他方式清除了CONST常驻实体(包括1个盔甲架实体,它位于世界出生点区块的建筑限制区域外,不影响数据包之外的其它正常功能)", "color": "gray"}]}}]
execute if score #temp_secret dp_vmn.temp matches 3161 run tellraw @a [{"text":"Chained Harvesting: ","color":"gold"},{"text":"Admin must /reload datapack ","color":"red"},{"text": "→[MISSING CONST ENTITY]", "color": "gray", "underlined": true, "hover_event": {"action": "show_text", "value": [{"text": "Potential Causes\n", "color": "gold"}, {"text": "CONST persistent entity was removed via /kill or other means (includes 1 armor stand entity located outside build limit in world spawn chunk. Doesn't affect non-datapack functions)", "color": "gray"}]}}]

execute unless score #temp_secret dp_vmn.temp matches 3161 store result score #foodLevel dp_vmn.temp run data get entity @s foodLevel
execute unless score #temp_secret dp_vmn.temp matches 3161 if score #foodLevel dp_vmn.temp matches ..1 run scoreboard players reset #block_value dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3161 if score #foodLevel dp_vmn.temp matches ..1 run scoreboard players set #temp_secret dp_vmn.temp 3162

execute if score #temp_secret dp_vmn.temp matches 3162 run scoreboard players reset #foodLevel dp_vmn.temp

execute unless score #temp_secret dp_vmn.temp matches 3161..3162 anchored eyes positioned ^ ^ ^ run function vmn:main/vmn/cube_chain
