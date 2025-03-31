##盔甲架检查工具耐久 2
# 该物品最大耐久度 max_damage

function vmn:main/versions/1.17-1.20.6/check_tool2
execute if predicate vmn:if_items/tool/wooden_tools run scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage 59
execute if predicate vmn:if_items/tool/stone_tools run scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage 131
execute if predicate vmn:if_items/tool/iron_tools run scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage 250
execute if predicate vmn:if_items/tool/golden_tools run scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage 32
execute if predicate vmn:if_items/tool/diamond_tools run scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage 1561
execute if predicate vmn:if_items/tool/netherite_tools run scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage 2031
execute if predicate vmn:if_items/tool/trident run scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage 250
execute if predicate vmn:if_items/tool/shears run scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.max_damage 238
