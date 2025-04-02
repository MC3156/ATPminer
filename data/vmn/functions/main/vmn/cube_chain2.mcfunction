##矩形挖掘 2
# 读取配置(宽半径：1~5  高半径：1~5  纵深度：1~9)
# 纵深度

scoreboard players set #temp_pass_hand dp_vmn.temp 1
execute store result score #temp_version dp_vmn.temp run data get entity @s DataVersion
function vmn:main/vmn/dfs_check_tool
scoreboard players set #count dp_vmn.temp 0
scoreboard players reset #temp_rotation0 dp_vmn.temp
scoreboard players reset #temp_rotation1 dp_vmn.temp
tag @s add dp_vmn_TEMP

function vmn:main/vmn/cube_chain3

scoreboard players operation @s dp_vmn.hunger += #count dp_vmn.temp
execute unless score #dfs_damage dp_vmn.temp matches -1 run function vmn:main/vmn/dfs_update_tool
execute if score #temp_version dp_vmn.temp matches 3819.. run function vmn:main/versions/1.17-1.20.6/all_components/cube_chain2_1.20.5
execute positioned ~ ~10000 ~ run kill @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_0,tag=dp_vmn_TEMP,limit=1,sort=nearest,distance=..0.001]
tag @s remove dp_vmn_TEMP
function vmn:main/vmn/dfs_reset
