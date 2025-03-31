##随机扣除耐久

scoreboard players operation #temp dp_vmn.temp = #count dp_vmn.temp
scoreboard players operation #temp dp_vmn.temp *= #damage_per_block dp_vmn.temp
scoreboard players operation #temp2 dp_vmn.temp = #temp dp_vmn.temp
scoreboard players operation #temp dp_vmn.temp /= @s dp_vmn.unbreaking
scoreboard players operation #temp2 dp_vmn.temp %= @s dp_vmn.unbreaking
scoreboard players operation @s dp_vmn.damage += #temp dp_vmn.temp
item modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=dp_vmn_CONST] weapon.mainhand vmn:bfs_random_chance
execute if score #temp_version dp_vmn.temp matches 3819.. run function vmn:main/versions/1.17-1.20.6/all_components/random_damage_1.20.5
execute if score #temp3 dp_vmn.temp <= #temp2 dp_vmn.temp run scoreboard players add @s dp_vmn.damage 1

#debug:#耐久计算参数
#tellraw @a [">>本轮 temp减掉耐久:",{"score":{"name":"#temp","objective":"dp_vmn.temp"}}," temp2余数:",{"score":{"name":"#temp2","objective":"dp_vmn.temp"}}," temp3随机值:",{"score":{"name":"#temp3","objective":"dp_vmn.temp"}}," damage_per_block:",{"score":{"name":"#damage_per_block","objective":"dp_vmn.temp"}}," count挖掘数:",{"score":{"name":"#count","objective":"dp_vmn.temp"}}," unbreaking:",{"score":{"name":"@s","objective":"dp_vmn.unbreaking"}}," damage损坏值:",{"score":{"name":"@s","objective":"dp_vmn.damage"}}]
#tellraw @a ["§d>> 当前深度:§r",{"score":{"name":"@e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest]","objective":"dp_vmn.depth"}}]
