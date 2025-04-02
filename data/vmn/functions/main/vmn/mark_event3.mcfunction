##标记连锁事件 3
# 唯一确定的随机数绑定对象，激活主标记和盔甲架

execute store result score @s dp_vmn.random run data get entity @s data.random 1
scoreboard players operation @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_0,sort=nearest,limit=1] dp_vmn.random = @s dp_vmn.random
#``tag @s add dp_vmn_``(random)
#``tag @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_0,sort=nearest,limit=1] add dp_vmn_``(random)
#``scoreboard players set @s dp_vmn.random ``(random)
#``data modify entity @s data.random set value ``(random)

tag @s[tag=dp_vmn_ACTIVE_0] add dp_vmn_ACTIVE_1
tag @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_0,sort=nearest,limit=1,distance=..0.001] add dp_vmn_ACTIVE_1
tag @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_0,sort=nearest,limit=1,distance=..0.001] remove dp_vmn_ACTIVE_0
data modify entity @e[type=minecraft:snowball,tag=dp_vmn_ACTIVE_0,limit=1,sort=nearest,distance=..0.1] Owner set from entity @s data.UUID
scoreboard players operation @e[type=minecraft:snowball,tag=dp_vmn_ACTIVE_0,limit=1,sort=nearest,distance=..0.1] dp_vmn.random = @s dp_vmn.random
tag @e[type=minecraft:snowball,tag=dp_vmn_ACTIVE_0,sort=nearest,limit=1,distance=..0.001] add dp_vmn_ACTIVE_1
tag @e[type=minecraft:snowball,tag=dp_vmn_ACTIVE_0,sort=nearest,limit=1,distance=..0.001] remove dp_vmn_ACTIVE_0
