##自动连锁耕地 4
# 水桶模式 中心水

execute unless block ~ ~-1 ~ #minecraft:air run loot spawn ~ ~ ~ mine ~ ~ ~
execute unless block ~ ~-1 ~ #minecraft:air align xyz as @e[type=minecraft:item,dx=0,dy=0,dz=0] at @s run data merge entity @s {PickupDelay:0,Motion:[0d,0d,0d]}
execute unless block ~ ~-1 ~ #minecraft:air align xyz as @e[type=minecraft:item,dx=0,dy=0,dz=0] at @p[tag=dp_vmn_TEMP,limit=1,sort=nearest] positioned ~ ~.25 ~ run tp @s ~ ~ ~
execute if block ~ ~-1 ~ #minecraft:air run setblock ~ ~-1 ~ minecraft:dirt replace
setblock ~ ~ ~ minecraft:water replace
item replace entity @s[gamemode=!creative] weapon.offhand with minecraft:bucket 1

playsound minecraft:item.bucket.empty block @a ~ ~ ~ 1 1 1
