##修改参数

execute if score @s ATPminer_config matches 101 run scoreboard players set @s dp_vmn.ATPminer_config.width 1
execute if score @s ATPminer_config matches 102 run scoreboard players set @s dp_vmn.ATPminer_config.width 2
execute if score @s ATPminer_config matches 103 run scoreboard players set @s dp_vmn.ATPminer_config.width 3
execute if score @s ATPminer_config matches 104 run scoreboard players set @s dp_vmn.ATPminer_config.width 4
execute if score @s ATPminer_config matches 105 run scoreboard players set @s dp_vmn.ATPminer_config.width 5
execute if score @s ATPminer_config matches 111 run scoreboard players set @s dp_vmn.ATPminer_config.height 1
execute if score @s ATPminer_config matches 112 run scoreboard players set @s dp_vmn.ATPminer_config.height 2
execute if score @s ATPminer_config matches 113 run scoreboard players set @s dp_vmn.ATPminer_config.height 3
execute if score @s ATPminer_config matches 114 run scoreboard players set @s dp_vmn.ATPminer_config.height 4
execute if score @s ATPminer_config matches 115 run scoreboard players set @s dp_vmn.ATPminer_config.height 5
execute if score @s ATPminer_config matches 121 run scoreboard players set @s dp_vmn.ATPminer_config.depth 1
execute if score @s ATPminer_config matches 122 run scoreboard players set @s dp_vmn.ATPminer_config.depth 2
execute if score @s ATPminer_config matches 123 run scoreboard players set @s dp_vmn.ATPminer_config.depth 3
execute if score @s ATPminer_config matches 124 run scoreboard players set @s dp_vmn.ATPminer_config.depth 4
execute if score @s ATPminer_config matches 125 run scoreboard players set @s dp_vmn.ATPminer_config.depth 5
execute if score @s ATPminer_config matches 126 run scoreboard players set @s dp_vmn.ATPminer_config.depth 6
execute if score @s ATPminer_config matches 127 run scoreboard players set @s dp_vmn.ATPminer_config.depth 7
execute if score @s ATPminer_config matches 128 run scoreboard players set @s dp_vmn.ATPminer_config.depth 8
execute if score @s ATPminer_config matches 129 run scoreboard players set @s dp_vmn.ATPminer_config.depth 9


execute if score @s ATPminer_config matches 101..105 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 1
execute if score @s ATPminer_config matches 111..115 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 1
execute if score @s ATPminer_config matches 121..129 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 1
