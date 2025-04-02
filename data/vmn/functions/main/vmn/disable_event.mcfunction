##休眠实体：自杀

execute if entity @s[type=minecraft:marker,tag=dp_vmn_MAIN] positioned ~ ~10000 ~ as @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_0,limit=1,sort=nearest,distance=..0.001] run kill @s
execute if entity @s[type=minecraft:marker,tag=dp_vmn_MAIN] run kill @s
execute if entity @s[type=minecraft:marker,tag=dp_vmn_SUB] run kill @s
execute if entity @s[type=minecraft:armor_stand] run kill @s
tag @s remove dp_vmn_ACTIVE_0
