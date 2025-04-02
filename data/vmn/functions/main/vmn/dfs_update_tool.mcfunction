##深度搜索
# 手持物品耐久更新

function vmn:main/vmn/dfs_random_damage
execute if score #temp_version dp_vmn.temp matches ..3818 run function vmn:main/versions/1.17-1.20.6/all_components/dfs_update_tool_1.20.4
#execute if score #temp_version dp_vmn.temp matches 3819.. run function vmn:main/versions/1.17-1.20.6/all_components/dfs_update_tool_1.20.5
item replace entity @p[tag=dp_vmn_TEMP,gamemode=!creative] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=dp_vmn_TEMP,limit=1,sort=nearest] weapon.mainhand
