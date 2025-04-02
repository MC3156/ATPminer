##版本兼容 1.20.5-

execute if data entity @s HandItems[0].tag{Unbreakable:1b} run scoreboard players set #temp_secret dp_vmn.temp 3158
execute if predicate vmn:if_items/whitelist_tool run scoreboard players set #temp_secret dp_vmn.temp 3158
execute unless predicate vmn:if_items/damage_tool run scoreboard players set #temp_secret dp_vmn.temp 3158
execute if score @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.no_damage matches 1 unless predicate vmn:if_items/tool/shears run scoreboard players set #temp_secret dp_vmn.temp 3158

execute if score #temp_secret dp_vmn.temp matches 3158 run scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001] dp_vmn.damage -1

execute unless score #temp_secret dp_vmn.temp matches 3158 run scoreboard players set #damage_per_block dp_vmn.temp 1
execute unless score #temp_secret dp_vmn.temp matches 3158 if score @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage matches 1.. run scoreboard players operation @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage += #damage_per_block dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3158 if score @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage matches 1.. run scoreboard players operation @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage += #damage_per_block dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3158 if score @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage matches 1.. run scoreboard players operation @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage += #damage_per_block dp_vmn.temp

execute unless score #temp_secret dp_vmn.temp matches 3158 if predicate vmn:if_items/damage_tool unless score @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage matches 1.. run function vmn:main/vmn/check_tool2
execute unless score #temp_secret dp_vmn.temp matches 3158 run scoreboard players operation @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage -= #damage_per_block dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3158 run scoreboard players operation @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage -= #damage_per_block dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3158 run scoreboard players operation @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage -= #damage_per_block dp_vmn.temp

execute unless score #temp_secret dp_vmn.temp matches 3158 store result score @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001] dp_vmn.unbreaking run data get entity @s HandItems[0].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl 1
execute unless score #temp_secret dp_vmn.temp matches 3158 run scoreboard players add @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001] dp_vmn.unbreaking 1
execute unless score #temp_secret dp_vmn.temp matches 3158 store result score @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001] dp_vmn.damage run data get entity @s HandItems[0].tag.Damage 1
execute unless score #temp_secret dp_vmn.temp matches 3158 run scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001] dp_vmn.exist_damage_nbt 1
execute unless score #temp_secret dp_vmn.temp matches 3158 as @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001] run function vmn:main/vmn/expected_count

#debug:#工具属性情况
#tellraw @a ["BFS tool C>> damage:",{"score":{"name":"@e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001]","objective":"dp_vmn.damage"}}," max_damage:",{"score":{"name":"@e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001]","objective":"dp_vmn.max_damage"}}," unbreaking:",{"score":{"name":"@e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001]","objective":"dp_vmn.unbreaking"}}]

scoreboard players reset #temp_secret dp_vmn.temp
