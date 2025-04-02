##版本兼容
# 快速树叶腐烂 2

execute store result score #temp_version dp_vmn.temp run data get entity @p DataVersion 1
execute if score #temp_version dp_vmn.temp matches 0 run scoreboard players reset #temp_version dp_vmn.temp
execute if score #temp_version dp_vmn.temp matches ..3081 run function vmn:main/versions/1.17-1.20.6/leaves_rotting2/22w11a
execute if score #temp_version dp_vmn.temp matches 3082.. run function vmn:main/versions/1.17-1.20.6/leaves_rotting2/22w12a
scoreboard players reset #temp_version dp_vmn.temp
