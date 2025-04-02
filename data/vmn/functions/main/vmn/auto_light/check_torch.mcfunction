##照明物品检测
# 背包存在火把时，进入位置检测

execute store result score #torch_count dp_vmn.temp run clear @s minecraft:torch 0
execute if score #torch_count dp_vmn.temp matches 1.. unless entity @s[gamemode=adventure] if predicate vmn:location/light_0_6 run function vmn:main/vmn/auto_light/check_pos
scoreboard players reset #torch_count dp_vmn.temp
