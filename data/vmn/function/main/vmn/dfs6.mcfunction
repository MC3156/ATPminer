##深度搜索 6
# 检查工具、连锁采集、饥饿处理、工具替换

scoreboard players set #count dp_vmn.temp 0
scoreboard players set #exp_orb_value dp_vmn.temp 0
execute if score #check_leaves dp_vmn.temp matches 1.. if entity @e[type=minecraft:marker,tag=dp_vmn_REPLANT,distance=..32] at @s run function vmn:main/vmn/check_sapling
execute unless score #dfs_damage dp_vmn.temp matches -1 as @e[type=minecraft:marker,tag=dp_vmn_SUB,tag=dp_vmn_NO_TAG] at @s run function vmn:main/vmn/dfs5
execute if score #dfs_damage dp_vmn.temp matches -1 as @e[type=minecraft:marker,tag=dp_vmn_SUB,tag=dp_vmn_NO_TAG] at @s run function vmn:main/vmn/dfs7
execute if score #check_leaves dp_vmn.temp matches 1.. as @e[type=minecraft:marker,tag=dp_vmn_SAPLING,distance=..32] at @s run function vmn:main/vmn/replant_sapling

execute if score #temp_version dp_vmn.temp matches 3819.. run function vmn:main/versions/1.17-1.20.6/all_components/cube_chain2_1.20.5

scoreboard players operation @p[tag=dp_vmn_TEMP] dp_vmn.hunger += #count dp_vmn.temp
execute unless score #dfs_damage dp_vmn.temp matches -1 run function vmn:main/vmn/dfs_update_tool
kill @e[type=minecraft:armor_stand,tag=dp_vmn_TEMP,limit=1,sort=nearest]
kill @e[type=minecraft:marker,tag=dp_vmn_REPLANT]
scoreboard players reset #block_value dp_vmn.temp

#debug:输出连锁数量
execute if score @p[tag=dp_vmn_TEMP] dp_vmn.ATPminer.debug matches 1 run tellraw @p[tag=dp_vmn_TEMP] ["§aDebug >>> §7DFS §e连锁数量：",{"score":{"name":"#count","objective":"dp_vmn.temp"},"color":"gold"}]
