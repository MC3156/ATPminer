##切换自动照明状态 2

# scoreboard players reset @s AUTO_light
scoreboard players set @s dp_vmn.AUTO_light_state 1
execute if score @s dp_vmn.lang matches 1 run title @s actionbar ["§a⚡ §e已开启自动照明！"]
execute if score @s dp_vmn.lang matches 2 run title @s actionbar ["§a⚡ §eTorch Auto-Placement §aActivated§r"]
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 2
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 2
scoreboard players set #auto_light_temp dp_vmn.temp 1
