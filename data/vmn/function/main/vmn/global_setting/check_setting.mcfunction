##检查全局设置 控制 参数

execute unless score #global.combination dp_vmn.global_setting matches 0..2 run scoreboard players set #global.combination dp_vmn.global_setting 1
execute unless score #global.smart_replant dp_vmn.global_setting matches 0..2 run scoreboard players set #global.smart_replant dp_vmn.global_setting 1
execute unless score #global.fast_rot dp_vmn.global_setting matches 0..2 run scoreboard players set #global.fast_rot dp_vmn.global_setting 1
execute unless score #global.auto_farm dp_vmn.global_setting matches 0..2 run scoreboard players set #global.auto_farm dp_vmn.global_setting 1
execute unless score #global.cube_chain dp_vmn.global_setting matches 0..2 run scoreboard players set #global.cube_chain dp_vmn.global_setting 1

execute unless score #global.config.width dp_vmn.global_setting matches 1..5 run scoreboard players set #global.config.width dp_vmn.global_setting 2
execute unless score #global.config.height dp_vmn.global_setting matches 1..5 run scoreboard players set #global.config.height dp_vmn.global_setting 2
execute unless score #global.config.depth dp_vmn.global_setting matches 1..9 run scoreboard players set #global.config.depth dp_vmn.global_setting 1
execute if score #global.config dp_vmn.global_setting matches 1 run scoreboard players operation @a dp_vmn.ATPminer_config.width = #global.config.width dp_vmn.global_setting
execute if score #global.config dp_vmn.global_setting matches 1 run scoreboard players operation @a dp_vmn.ATPminer_config.height = #global.config.height dp_vmn.global_setting
execute if score #global.config dp_vmn.global_setting matches 1 run scoreboard players operation @a dp_vmn.ATPminer_config.depth = #global.config.depth dp_vmn.global_setting

execute unless score #global.combination dp_vmn.global_setting matches 1..2 run scoreboard players set @a dp_vmn.ATPminer.combination 0
execute if score #global.combination dp_vmn.global_setting matches 2 run scoreboard players set @a dp_vmn.ATPminer.combination 1
execute unless score #global.smart_replant dp_vmn.global_setting matches 1..2 run scoreboard players set @a dp_vmn.ATPminer.replant 0
execute if score #global.smart_replant dp_vmn.global_setting matches 2 run scoreboard players set @a dp_vmn.ATPminer.replant 1
execute unless score #global.fast_rot dp_vmn.global_setting matches 1..2 run scoreboard players set @a dp_vmn.ATPminer.fast_rot 0
execute if score #global.fast_rot dp_vmn.global_setting matches 2 run scoreboard players set @a dp_vmn.ATPminer.fast_rot 1
execute unless score #global.auto_farm dp_vmn.global_setting matches 1..2 run scoreboard players set @a dp_vmn.ATPminer.auto_farm 0
execute if score #global.auto_farm dp_vmn.global_setting matches 2 run scoreboard players set @a dp_vmn.ATPminer.auto_farm 1
execute unless score #global.cube_chain dp_vmn.global_setting matches 1..2 run scoreboard players set @a dp_vmn.ATPminer.cube_chain 0
execute if score #global.cube_chain dp_vmn.global_setting matches 2 run scoreboard players set @a dp_vmn.ATPminer.cube_chain 1
execute unless score #global.atp_miner dp_vmn.global_setting matches 1 run scoreboard players set #global.atp_miner dp_vmn.global_setting 0
execute if score #global.atp_miner dp_vmn.global_setting matches 1 run scoreboard players set @a dp_vmn.ATPminer.basic 1
execute unless score #global.auto_light dp_vmn.global_setting matches 1 run scoreboard players set #global.auto_light dp_vmn.global_setting 0
execute if score #global.auto_light dp_vmn.global_setting matches 1 run scoreboard players reset @a dp_vmn.AUTO_light_state
execute unless score #global.drop dp_vmn.global_setting matches 1 run scoreboard players set #global.drop dp_vmn.global_setting 0

# execute unless score #global.auto_farm dp_vmn.global_setting matches 1..2 run scoreboard players reset @a dp_vmn.ATPminer.auto_farm
