##深度搜索 7
# 挖掘事件

function vmn:config/exp_orb
execute as @e[type=minecraft:armor_stand,tag=dp_vmn_TEMP,limit=1,sort=nearest] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air

execute if score #temp_reap dp_vmn.temp matches 1 align xyz as @e[type=minecraft:item,dx=0,dy=0,dz=0] at @s run function vmn:config/smart_replant/farmland/seed_and_crops
execute unless score #global.drop dp_vmn.global_setting matches 1 align xyz as @e[type=minecraft:item,dx=0,dy=0,dz=0] run data merge entity @s {PickupDelay:0,Motion:[0d,0d,0d]}
execute unless score #global.drop dp_vmn.global_setting matches 1 align xyz as @e[type=minecraft:item,dx=0,dy=0,dz=0] at @p[tag=dp_vmn_TEMP] positioned ~ ~.25 ~ run tp @s ~ ~ ~

scoreboard players add #count dp_vmn.temp 1
kill @s
