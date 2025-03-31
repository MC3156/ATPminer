##重置菜单触发器

scoreboard players reset @a ATPminer
scoreboard players enable @a ATPminer
scoreboard players reset @a ATPminer_config
execute unless score #global.config dp_vmn.global_setting matches 1 run scoreboard players enable @a ATPminer_config
scoreboard players reset @a AUTO_light
execute unless score #global.auto_light dp_vmn.global_setting matches 1 run scoreboard players enable @a AUTO_light
