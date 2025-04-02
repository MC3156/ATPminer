##组件分离 1.20.5

execute store result entity @e[type=minecraft:armor_stand,tag=dp_vmn_TEMP,limit=1,sort=nearest] equipment.mainhand.components."minecraft:damage" int 1 run scoreboard players get #dfs_damage dp_vmn.temp
