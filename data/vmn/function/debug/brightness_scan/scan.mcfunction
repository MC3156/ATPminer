##实体执行扫描任务

execute as @e[type=marker,tag=dp_vmn_SCAN,limit=1,sort=nearest] run scoreboard players add @s CS 1
execute as @e[type=marker,tag=dp_vmn_SCAN,limit=1,sort=nearest] at @s if score @s CS matches 5.. run function vmn:debug/brightness_scan/scan2
