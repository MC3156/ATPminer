##主标记执行 ★
# 检查LOAD，匹配玩家、盔甲架、活跃子标记；活跃盔甲架匹配玩家手持以及耐久
# 匹配通过后，活跃子标记和盔甲架开始执行

#debug:#匹配1-存在MAIN实体
#tellraw @a ["§eID：",{"score":{"name": "@s","objective":"dp_vmn.random"},"color":"gray"}," >> 1"]

tag @s add dp_vmn_TEMP
execute unless entity @a[distance=..128] run scoreboard players set #temp_secret dp_vmn.temp 3162
execute unless score #temp_secret dp_vmn.temp matches 3162 unless score @s dp_vmn.random matches 0..2147483647 store result score @s dp_vmn.random run data get entity @s data.random 1
#temppp execute unless score #temp_secret dp_vmn.temp matches 3162 as @e[tag=dp_vmn_ACTIVE_1,type=minecraft:snowball] if score @s dp_vmn.random = @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.random on origin run tag @s add dp_vmn_TEMP
execute unless score #temp_secret dp_vmn.temp matches 3162 as @a[distance=..128] run function vmn:main/versions/1.17-1.20.6/execute_on_origon/1.19.3
execute unless score #temp_secret dp_vmn.temp matches 3162 unless entity @a[tag=dp_vmn_TEMP,distance=..128] run scoreboard players set #temp_secret dp_vmn.temp 3162
execute unless score #temp_secret dp_vmn.temp matches 3162 store result score #temp_version dp_vmn.temp run data get entity @p[tag=dp_vmn_TEMP] DataVersion 1

#debug:#匹配2-玩家检查通过
#execute unless score #temp_secret dp_vmn.temp matches 3162 run tellraw @a ["§eID：",{"score":{"name": "@s","objective":"dp_vmn.random"},"color":"gray"}," >> 2"]

execute unless score #temp_secret dp_vmn.temp matches 3162 if score @p[tag=dp_vmn_TEMP] dp_vmn.check_empty_hand matches 2 run scoreboard players set #temp_secret dp_vmn.temp 3162
execute unless score #temp_secret dp_vmn.temp matches 3162 run function vmn:main/vmn/bind_entity

#debug:#匹配3-玩家绑定检测通过、玩家手持检测通过
#execute unless score #temp_secret dp_vmn.temp matches 3162 run tellraw @a ["§eID：",{"score":{"name": "@s","objective":"dp_vmn.random"},"color":"gray"}," >> 3"]

execute unless score #temp_secret dp_vmn.temp matches 3162 positioned ~ ~10000 ~ unless entity @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_1,tag=dp_vmn_TEMP,distance=..0.001] run scoreboard players set #temp_secret dp_vmn.temp 3162

#debug:#匹配4-盔甲架绑定通过
#execute unless score #temp_secret dp_vmn.temp matches 3162 run tellraw @a ["§eID：",{"score":{"name": "@s","objective":"dp_vmn.random"},"color":"gray"}," >> 4"]

execute unless score #temp_secret dp_vmn.temp matches 3162 unless entity @e[type=minecraft:marker,tag=dp_vmn_SUB,tag=dp_vmn_TEMP] run scoreboard players set #temp_secret dp_vmn.temp 3162
execute unless score #temp_secret dp_vmn.temp matches 3162 run data modify entity @s data.Tags set from entity @e[type=minecraft:marker,tag=dp_vmn_SUB,tag=dp_vmn_TEMP,limit=1,sort=random] Tags
execute unless score #temp_secret dp_vmn.temp matches 3162 as @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_1,tag=dp_vmn_TEMP,limit=1,sort=nearest] run function vmn:main/vmn/match_tool
#execute unless score #temp_secret dp_vmn.temp matches 3162 if score @s dp_vmn.damage matches -1 run scoreboard players set #temp_secret dp_vmn.temp 3162

#debug:#匹配5-子标记存在
#execute unless score #temp_secret dp_vmn.temp matches 3162 run tellraw @a ["§eID：",{"score":{"name": "@s","objective":"dp_vmn.random"},"color":"gray"}," >> 5"]
#execute unless score #temp_secret dp_vmn.temp matches 3162 as @e[type=minecraft:marker,tag=dp_vmn_SUB] run #tellraw @a [">> ",{"selector":"@s"}," ",{"entity":"@s","nbt":"Pos"}]

execute unless score #temp_secret dp_vmn.temp matches 3162 if entity @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_1,tag=dp_vmn_TEMP,tag=dp_vmn_ACTIVE_0] run scoreboard players set #temp_secret dp_vmn.temp 3162

#debug:#匹配6-盔甲架匹配工具通过
#execute unless score #temp_secret dp_vmn.temp matches 3162 run tellraw @a ["§eID：",{"score":{"name": "@s","objective":"dp_vmn.random"},"color":"gray"}," >> 6"]

execute unless score #temp_secret dp_vmn.temp matches 3162 if score @s dp_vmn.max_damage matches 1.. if score @s dp_vmn.damage >= @s dp_vmn.max_damage run scoreboard players set #temp_secret dp_vmn.temp 3162
execute unless score #temp_secret dp_vmn.temp matches 3162 run scoreboard players set #count dp_vmn.temp 0
execute unless score #temp_secret dp_vmn.temp matches 3162 run scoreboard players set #exp_orb_value dp_vmn.temp 0
execute unless score #temp_secret dp_vmn.temp matches 3162 unless score @s dp_vmn.depth matches 0.. run scoreboard players set @s dp_vmn.depth 0

execute unless score #temp_secret dp_vmn.temp matches 3162 store result score #block_value dp_vmn.temp run data get entity @s data.value 1
execute unless score #temp_secret dp_vmn.temp matches 3162 run scoreboard players set #temp_tick_thread dp_vmn.temp 0
execute unless score #temp_secret dp_vmn.temp matches 3162 if score @p[tag=dp_vmn_TEMP] dp_vmn.ATPminer.replant matches 1 run function vmn:config/smart_replant/farmland/check_crops
execute unless score #temp_secret dp_vmn.temp matches 3162 if entity @e[type=minecraft:marker,tag=dp_vmn_SUB,tag=dp_vmn_TEMP] run scoreboard players add @s dp_vmn.depth 1
execute unless score #temp_secret dp_vmn.temp matches 3162 as @e[type=minecraft:marker,tag=dp_vmn_SUB,tag=dp_vmn_TEMP] at @s run function vmn:main/vmn/active_sub_marker
execute unless score #temp_secret dp_vmn.temp matches 3162 as @e[type=minecraft:marker,tag=dp_vmn_NO_TAG,sort=nearest] run function vmn:main/vmn/next_sub_marker
execute unless score #temp_secret dp_vmn.temp matches 3162 as @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_1,tag=dp_vmn_TEMP] at @s run function vmn:main/vmn/active_armor_stand
execute unless score #temp_secret dp_vmn.temp matches 3162 if score #temp_version dp_vmn.temp matches ..3818 run function vmn:main/versions/1.17-1.20.6/all_components/main_marker_exp_orb2_1.20.4
#execute unless score #temp_secret dp_vmn.temp matches 3162 if score #temp_version dp_vmn.temp matches 3819.. run function vmn:main/versions/1.17-1.20.6/all_components/main_marker_exp_orb2_1.20.5
execute unless score #temp_secret dp_vmn.temp matches 3162 run kill @e[type=minecraft:marker,tag=dp_vmn_NO_TAG]
execute unless score #temp_secret dp_vmn.temp matches 3162 run tag @e[tag=dp_vmn_TEMP] remove dp_vmn_TEMP

execute if score #temp_secret dp_vmn.temp matches 3162 run function vmn:main/vmn/disable_marker
function vmn:main/vmn/dfs_reset
