##照明

advancement grant @s only vmn:tutorial/auto_light
setblock ~ ~ ~ minecraft:torch replace
clear @s[gamemode=survival] minecraft:torch 1
playsound minecraft:block.wood.place block @s ~ ~ ~ 1 1 1
scoreboard players set #placement dp_vmn.temp 1
scoreboard players remove #torch_count dp_vmn.temp 1
execute if entity @s[gamemode=survival] if score @s dp_vmn.lang matches 1 if score #torch_count dp_vmn.temp matches 1..10 run title @s actionbar ["§6光源即将耗尽 (剩余:",{"score":{"name":"#torch_count","objective":"dp_vmn.temp"},"color":"yellow"},"§6)§r"]
execute if entity @s[gamemode=survival] if score @s dp_vmn.lang matches 1 if score #torch_count dp_vmn.temp matches 0 run title @s actionbar ["§6光源已耗尽！§r"]
execute if entity @s[gamemode=survival] if score @s dp_vmn.lang matches 2 if score #torch_count dp_vmn.temp matches 1..10 run title @s actionbar ["§6Light source running low (Remaining: ",{"score":{"name":"#torch_count","objective":"dp_vmn.temp"},"color":"yellow"},"§6)§r"]
execute if entity @s[gamemode=survival] if score @s dp_vmn.lang matches 2 if score #torch_count dp_vmn.temp matches 0 run title @s actionbar ["§6Light source depleted!§r"]
