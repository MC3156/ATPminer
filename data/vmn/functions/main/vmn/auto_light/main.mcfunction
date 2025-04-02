##自动照明 主函数

scoreboard players add @s dp_vmn.AUTO_light_timer 1
execute if score @s[gamemode=!spectator,tag=!ATP_DARK] dp_vmn.AUTO_light_timer matches 1 run function vmn:main/vmn/auto_light/check_torch
execute if entity @s[gamemode=spectator,tag=!ATP_DARK] if data entity @s SelectedItem{id:"minecraft:light"} run function vmn:main/vmn/auto_light/place_light
execute if entity @s[tag=ATP_DARK] run function vmn:main/vmn/auto_light/remove_light
execute if score @s dp_vmn.AUTO_light_timer matches 5.. run scoreboard players reset @s dp_vmn.AUTO_light_timer
