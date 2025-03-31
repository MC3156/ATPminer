##主标记匹配其他实体
# 盔甲架、子标记

#``execute positioned ~ ~10000 ~ as @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_1,tag=dp_vmn_``(random),limit=1,distance=..0.001,sort=nearest] run tag @s add dp_vmn_TEMP
#``execute as @e[type=minecraft:marker,tag=dp_vmn_ACTIVE_1,tag=dp_vmn_SUB,tag=dp_vmn_``(random)] run tag @s add dp_vmn_TEMP
#``kill @e[type=minecraft:marker,tag=dp_vmn_ACTIVE_1,tag=dp_vmn_SUB,tag=dp_vmn_``(random),tag=!dp_vmn_TEMP]

execute positioned ~ ~10000 ~ as @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_1,distance=..0.001,sort=nearest] if score @s dp_vmn.random = @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] dp_vmn.random run tag @s add dp_vmn_TEMP
execute as @e[type=minecraft:marker,tag=dp_vmn_ACTIVE_1,tag=dp_vmn_SUB,distance=..128.001] if score @s dp_vmn.random = @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] dp_vmn.random run tag @s add dp_vmn_TEMP
