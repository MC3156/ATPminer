##LOAD

scoreboard objectives add ATPminer_config trigger ["§6⚡§7ATPM参数配置§6⚡§r"]
execute unless score #uninstall ATPminer_config matches 3156513 run tellraw @a ["§d🔥§6 ATP-高能连锁 §d🔥§7 已加载！(设置：/trigger ATPminer)§r"]
execute if score #uninstall ATPminer_config matches 3156513 run tellraw @a ["§d🔥§6 ATP-高能连锁 §d🔥§b 正在被卸载(QAQ我会努力做得更好的)§r"]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1 1
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1 1
execute unless score #uninstall ATPminer_config matches 3156513 run function #vmn:load
