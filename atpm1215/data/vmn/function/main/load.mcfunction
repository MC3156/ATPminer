##LOAD

scoreboard objectives add ATPminer_config trigger ["§6⚡§7ATPM config§6⚡§r"]
execute unless score #uninstall ATPminer_config matches 3156513 run tellraw @a ["§d🔥§6 ATPminer-高能连锁 §d🔥§7 Loaded！(→ ",{"text": "/trigger ATPminer", "color": "yellow", "hover_event": {"action": "show_text", "value": "§6设置(Setting)§7/trigger ATPminer§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer"}},"§7)§r"]
execute if score #uninstall ATPminer_config matches 3156513 run tellraw @a ["§d🔥§6 ATPminer-高能连锁 §d🔥§b Uninstalling(QAQ)§r"]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1 1
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1 1
execute unless score #uninstall ATPminer_config matches 3156513 run function #vmn:load
