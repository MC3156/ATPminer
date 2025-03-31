##活跃实体：检查

execute if entity @s[type=minecraft:marker,tag=dp_vmn_SUB] run function vmn:main/vmn/active_add_score
execute if entity @s[type=minecraft:armor_stand] positioned ~ ~-10000 ~ unless entity @e[type=minecraft:marker,tag=dp_vmn_MAIN,distance=..0.001] run kill @s
