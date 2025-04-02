##请选择你的语言！
# P! L! E! A! S! E! ~ ~ ~

tellraw @s ["§d🔥 ",{"text":"ATPminer >> 请选择语言 Select Language ~","color":"gold"}]
tellraw @s ["§d🔥 ",{"text":"[简体中文]","color":"white","hoverEvent":{"action": "show_text","contents":"§f简体中文§7而不是英语\n你可以随时修改语言！"},"clickEvent":{"action":"run_command","value":"/trigger ATPminer set 402"}}," ",{"text":"[English]","color":"white","hoverEvent":{"action": "show_text","contents":"§fEnglish§7 instead of Chinese\nYou can change the language at any time!"},"clickEvent":{"action":"run_command","value":"/trigger ATPminer set 403"}}]
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 1
execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 1
