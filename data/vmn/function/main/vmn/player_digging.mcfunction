##检测玩家挖掘方块计分项+活跃2标记快速落叶+自动照明

execute as @a if score @s dp_vmn.AUTO_light_state matches 1 at @s run function vmn:main/vmn/auto_light/main
execute as @e[type=minecraft:marker,tag=dp_vmn_ACTIVE_2] at @s run function vmn:main/vmn/leaves_rotting
execute as @a run function vmn:main/vmn/check_empty_hand
execute as @a unless score @s dp_vmn.ATPminer.basic matches 1 at @s if score @s dp_vmn.ATPminer.sneaking_mode matches 0 run function vmn:main/vmn/player_digging2
execute as @a unless score @s dp_vmn.ATPminer.basic matches 1 at @s if score @s dp_vmn.ATPminer.sneaking_mode matches 1 if score @s dp_vmn.sneaking_time matches 1.. run function vmn:main/vmn/player_digging2
execute as @a if score @s dp_vmn.ATPminer.cube_chain matches 1 at @s anchored eyes positioned ^ ^ ^ run function vmn:main/vmn/track_depth
execute as @a unless score @s dp_vmn.hunger matches 200.. if score @s dp_vmn.hunger_timer matches 1..19 run scoreboard players add @s dp_vmn.hunger_timer 1
execute as @a unless score @s dp_vmn.hunger matches 200.. if score @s dp_vmn.hunger_timer matches 20.. run scoreboard players reset @s dp_vmn.hunger_timer
execute as @a if score @s dp_vmn.hunger matches 200.. run function vmn:main/vmn/hunger
