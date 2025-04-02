##标记连锁事件 4
# 盔甲架适配工具

scoreboard players set @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001] dp_vmn.damage 0
item replace entity @s weapon.mainhand from entity @p[distance=..1] weapon.mainhand
