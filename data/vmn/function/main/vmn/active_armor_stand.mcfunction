##活跃盔甲架
# 耐久更新、饥饿增加

scoreboard players operation @p[tag=dp_vmn_TEMP] dp_vmn.hunger += #count dp_vmn.temp
execute unless score @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] dp_vmn.damage matches -1 as @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] run function vmn:main/vmn/random_damage
execute unless score @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] dp_vmn.damage matches -1 if score #temp_version dp_vmn.temp matches 3819.. run function vmn:main/versions/1.17-1.20.6/all_components/active_armor_stand_1.20.5
item replace entity @p[tag=dp_vmn_TEMP,gamemode=!creative] weapon.mainhand from entity @s weapon.mainhand
tag @s[tag=dp_vmn_TEMP] remove dp_vmn_TEMP
