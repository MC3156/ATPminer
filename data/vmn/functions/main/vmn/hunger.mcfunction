##玩家饥饿

scoreboard players add @s dp_vmn.hunger_timer 1
execute if score @s dp_vmn.hunger_timer matches 1 run function vmn:main/vmn/hunger2
execute if score @s dp_vmn.hunger_timer matches 20.. run scoreboard players reset @s dp_vmn.hunger_timer
