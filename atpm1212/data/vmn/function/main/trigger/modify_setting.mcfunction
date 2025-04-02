##玩家修改设置

execute if score #global.combination dp_vmn.global_setting matches 1 if score @s ATPminer matches 101 run scoreboard players set @s dp_vmn.ATPminer.combination 1
execute if score #global.combination dp_vmn.global_setting matches 1 if score @s ATPminer matches 201 run scoreboard players set @s dp_vmn.ATPminer.combination 0
execute if score #global.smart_replant dp_vmn.global_setting matches 1 if score @s ATPminer matches 102 run scoreboard players set @s dp_vmn.ATPminer.replant 1
execute if score #global.smart_replant dp_vmn.global_setting matches 1 if score @s ATPminer matches 202 run scoreboard players set @s dp_vmn.ATPminer.replant 0
execute if score #global.fast_rot dp_vmn.global_setting matches 1 if score @s ATPminer matches 103 run scoreboard players set @s dp_vmn.ATPminer.fast_rot 1
execute if score #global.fast_rot dp_vmn.global_setting matches 1 if score @s ATPminer matches 203 run scoreboard players set @s dp_vmn.ATPminer.fast_rot 0
execute if score #global.auto_farm dp_vmn.global_setting matches 1 if score @s ATPminer matches 105 run scoreboard players set @s dp_vmn.ATPminer.auto_farm 1
execute if score #global.auto_farm dp_vmn.global_setting matches 1 if score @s ATPminer matches 205 run scoreboard players set @s dp_vmn.ATPminer.auto_farm 0
execute if score #global.cube_chain dp_vmn.global_setting matches 1 if score @s ATPminer matches 106 run scoreboard players set @s dp_vmn.ATPminer.cube_chain 1
execute if score #global.cube_chain dp_vmn.global_setting matches 1 if score @s ATPminer matches 206 run scoreboard players set @s dp_vmn.ATPminer.cube_chain 0
execute unless score #global.atp_miner dp_vmn.global_setting matches 1 if score @s ATPminer matches 208 run scoreboard players set @s dp_vmn.ATPminer.basic 1
execute unless score #global.atp_miner dp_vmn.global_setting matches 1 if score @s ATPminer matches 108 run scoreboard players set @s dp_vmn.ATPminer.basic 0
execute unless score #global.auto_light dp_vmn.global_setting matches 1 if score @s ATPminer matches 401 run function vmn:main/vmn/auto_light/auto_light_state
execute if score @s dp_vmn.ATPminer.auto_farm matches 1 if score @s ATPminer matches 301 run scoreboard players set @s dp_vmn.ATPminer.farming_mode 2
execute if score @s dp_vmn.ATPminer.auto_farm matches 1 if score @s ATPminer matches 302 run scoreboard players set @s dp_vmn.ATPminer.farming_mode 1
execute if score @s dp_vmn.ATPminer.auto_farm matches 1 unless score @s dp_vmn.ATPminer.farming_mode matches 1..2 run scoreboard players set @a dp_vmn.ATPminer.farming_mode 1
execute if score @s ATPminer matches 199 run scoreboard players set @s dp_vmn.ATPminer.sneaking_mode 2
execute if score @s ATPminer matches 104 run scoreboard players set @s dp_vmn.ATPminer.sneaking_mode 1
execute if score @s ATPminer matches 204 run scoreboard players set @s dp_vmn.ATPminer.sneaking_mode 0
execute if score @s ATPminer matches 107 run scoreboard players set @s dp_vmn.ATPminer.debug 1
execute if score @s ATPminer matches 207 run scoreboard players set @s dp_vmn.ATPminer.debug 0

execute if score @s ATPminer matches 101..200 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 2
execute if score @s ATPminer matches 101..200 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 2
execute if score @s ATPminer matches 201..300 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 0.5
execute if score @s ATPminer matches 201..300 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 0.5
execute if score @s ATPminer matches 301..400 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 1
execute if score @s ATPminer matches 301..400 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 2 1
