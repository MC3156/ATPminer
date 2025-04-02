##组件分离 1.20.5

execute store result entity @s HandItems[0].components."minecraft:damage" int 1 run scoreboard players get @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] dp_vmn.damage
