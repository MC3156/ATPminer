##切换自动照明状态 3

scoreboard players reset @s AUTO_light
scoreboard players reset @s dp_vmn.AUTO_light_state
tellraw @s ["§c⚡ §e已关闭自动照明！"]
execute at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1 1
scoreboard players set #auto_light_temp dp_vmn.temp 1
