##矩形挖掘 8
# 挖掘

scoreboard players add #count dp_vmn.temp 1
function vmn:config/exp_orb
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute unless score #global.drop dp_vmn.global_setting matches 1 align xyz as @e[type=minecraft:item,dx=0,dy=0,dz=0] run data merge entity @s {PickupDelay:0,Motion:[0d,0d,0d]}
execute unless score #global.drop dp_vmn.global_setting matches 1 align xyz as @e[type=minecraft:item,dx=0,dy=0,dz=0] at @p[tag=dp_vmn_TEMP] positioned ~ ~.25 ~ run tp @s ~ ~ ~
setblock ~ ~ ~ minecraft:air
