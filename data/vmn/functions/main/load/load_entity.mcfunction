##常加载实体
# 由服务器执行(采用临时秘钥#temp_secret)

scoreboard players reset #const_count dp_vmn.temp
execute if score #temp_secret dp_vmn.temp matches 3156 store result score #const_count dp_vmn.temp if entity @e[tag=dp_vmn_CONST]
execute if score #temp_secret dp_vmn.temp matches 3156 unless score #const_count dp_vmn.temp matches 1 run scoreboard players set #const_count dp_vmn.temp -1
execute if score #temp_secret dp_vmn.temp matches 3156 positioned ~ ~10001 ~ unless entity @e[type=minecraft:armor_stand,tag=dp_vmn_CONST,distance=..0.001] run scoreboard players set #const_count dp_vmn.temp -1
execute if score #temp_secret dp_vmn.temp matches 3156 unless score #const_count dp_vmn.temp matches -1 positioned ~ ~10001 ~ as @e[type=minecraft:armor_stand,tag=dp_vmn_CONST] unless data entity @s HandItems[0].id run item replace entity @s weapon.mainhand with minecraft:stone_button
execute if score #temp_secret dp_vmn.temp matches 3156 if score #const_count dp_vmn.temp matches -1 run function vmn:main/load/reload
scoreboard players reset #temp_secret dp_vmn.temp
scoreboard players reset #const_count dp_vmn.temp
