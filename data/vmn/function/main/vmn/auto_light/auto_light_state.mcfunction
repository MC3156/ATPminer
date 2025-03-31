##切换自动照明状态

scoreboard players reset #auto_light_temp dp_vmn.temp
execute if score @s dp_vmn.AUTO_light_state matches 1 unless score #auto_light_temp dp_vmn.temp matches 1 run function vmn:main/vmn/auto_light/auto_light_state3
execute unless score @s dp_vmn.AUTO_light_state matches 1 unless score #auto_light_temp dp_vmn.temp matches 1 run function vmn:main/vmn/auto_light/auto_light_state2
scoreboard players reset #auto_light_temp dp_vmn.temp
