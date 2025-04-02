##切换自动照明状态 3

# scoreboard players reset @s AUTO_light
scoreboard players reset @s dp_vmn.AUTO_light_state
execute if score @s dp_vmn.lang matches 1 run title @s actionbar ["§c⚡ §e已关闭自动照明！"]
execute if score @s dp_vmn.lang matches 2 run title @s actionbar ["§c⚡ §eTorch Auto-Placement §cDeactivated§r"]
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 0.5
scoreboard players set #auto_light_temp dp_vmn.temp 1
