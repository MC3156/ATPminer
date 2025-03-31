##标记执行事件

execute as @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_ACTIVE_1] at @s run function vmn:main/vmn/main_marker
execute as @e[tag=dp_vmn_ACTIVE_0] at @s run function vmn:main/vmn/disable_event
execute as @e[tag=dp_vmn_ACTIVE_1] at @s run function vmn:main/vmn/check_active_entity
