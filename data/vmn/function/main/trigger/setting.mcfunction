##玩家设置项

execute if score @s ATPminer matches 402 run scoreboard players set @s dp_vmn.lang 1
execute if score @s ATPminer matches 403 run scoreboard players set @s dp_vmn.lang 2
execute if score @s ATPminer matches 402..403 at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1
execute if score @s ATPminer matches 404 run scoreboard players reset @s dp_vmn.lang

execute if score @s dp_vmn.lang matches 1 run function vmn:main/vmn/lang/zh_cn/setting
execute if score @s dp_vmn.lang matches 2 run function vmn:main/vmn/lang/en_us/setting
execute unless score @s dp_vmn.lang matches 1..2 run function vmn:main/vmn/lang/lang
