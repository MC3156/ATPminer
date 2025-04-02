##深度搜索 耐久处理
# 均值

scoreboard players operation #dfs_temp dp_vmn.temp = #count dp_vmn.temp
scoreboard players operation #dfs_temp dp_vmn.temp *= #damage_per_block dp_vmn.temp
scoreboard players operation #dfs_temp2 dp_vmn.temp = #dfs_temp dp_vmn.temp
scoreboard players operation #dfs_temp dp_vmn.temp /= #dfs_unbreaking dp_vmn.temp
scoreboard players operation #dfs_temp2 dp_vmn.temp %= #dfs_unbreaking dp_vmn.temp
scoreboard players operation #dfs_damage dp_vmn.temp += #dfs_temp dp_vmn.temp
item modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dp_vmn_CONST] weapon.mainhand vmn:dfs_random_chance
execute if score #temp_version dp_vmn.temp matches 3819.. run function vmn:main/versions/1.17-1.20.6/all_components/dfs_random_damage_1.20.5
execute if score #dfs_temp3 dp_vmn.temp <= #dfs_temp2 dp_vmn.temp run scoreboard players add #dfs_damage dp_vmn.temp 1
