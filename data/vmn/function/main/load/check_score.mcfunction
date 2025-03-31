##检查玩家设置
# 存储玩家视角

execute unless score @s dp_vmn.ATPminer.combination matches 0..1 run scoreboard players set @s dp_vmn.ATPminer.combination 0
execute unless score @s dp_vmn.ATPminer.replant matches 0..1 run scoreboard players set @s dp_vmn.ATPminer.replant 0
execute unless score @s dp_vmn.ATPminer.fast_rot matches 0..1 run scoreboard players set @s dp_vmn.ATPminer.fast_rot 0
execute unless score @s dp_vmn.ATPminer.auto_farm matches 0..1 run scoreboard players set @s dp_vmn.ATPminer.auto_farm 0
execute unless score @s dp_vmn.ATPminer.sneaking_mode matches 0..1 run scoreboard players set @s dp_vmn.ATPminer.sneaking_mode 0
execute unless score @s dp_vmn.ATPminer.debug matches 0..1 run scoreboard players set @s dp_vmn.ATPminer.debug 0
execute if score #global.auto_light dp_vmn.global_setting matches 1 run scoreboard players reset @s dp_vmn.AUTO_light_state

execute unless score @s dp_vmn.ATPminer_config.width matches 1..5 run scoreboard players operation @s dp_vmn.ATPminer_config.width = #global.config.width dp_vmn.global_setting
execute unless score @s dp_vmn.ATPminer_config.height matches 1..5 run scoreboard players operation @s dp_vmn.ATPminer_config.height = #global.config.height dp_vmn.global_setting
execute unless score @s dp_vmn.ATPminer_config.depth matches 1..9 run scoreboard players operation @s dp_vmn.ATPminer_config.depth = #global.config.depth dp_vmn.global_setting
execute unless score @s dp_vmn.ATPminer.auto_farm matches 1 run scoreboard players reset @s dp_vmn.ATPminer.farming_mode
execute if score @s dp_vmn.ATPminer.auto_farm matches 1 unless score @s dp_vmn.ATPminer.farming_mode matches 1..2 run scoreboard players set @a dp_vmn.ATPminer.farming_mode 1
execute store result score @s dp_vmn.rotation0 run data get entity @s Rotation[0]
execute store result score @s dp_vmn.rotation1 run data get entity @s Rotation[1]
