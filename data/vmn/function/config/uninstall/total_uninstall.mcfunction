##清理本数据包的注册数据，然后使用/datapack disable <数据包名称>或删除文件并/reload来卸载
# ⚠️慎用！这是主卸载程序入口！(我希望你不会用到QAQ，事实上，关闭数据包不卸载，对游戏运行基本无影响)
# 请将 #uninstall 在计分板 ATPminer_config 的分数设置为3156513，否则卸载不通过(你可以在下方修改密码，将3156513全部替换成其他数字(范围:-2147483648~2147483647))
# 注意，要修改密码，你需要去data/vmn/function文件夹的load.mcfunction和tick.mcfunction文件同时将密码修改！
# 最后一步可以将ATPminer_config手动清理(必须在数据包完全禁用/卸载之后运行)：scoreboard objectives remove ATPminer_config
# 若要重新启用数据包，手动清理ATPminer_config计分板后安装数据包并启用即可

# 一键复制卸载函数指令：/function vmn:config/uninstall/total_uninstall

execute unless score #uninstall ATPminer_config matches 3156513 if score @s dp_vmn.lang matches 2 run function vmn:main/vmn/lang/en_us/total_uninstall
execute unless score #uninstall ATPminer_config matches 3156513 if score @s dp_vmn.lang matches 1 run function vmn:main/vmn/lang/zh_cn/total_uninstall
execute if score #uninstall ATPminer_config matches 3156513 run function vmn:config/uninstall/scoreboard_uis
execute if score #uninstall ATPminer_config matches 3156513 run data remove storage dp_vmn:1 TEMP

execute if score #uninstall ATPminer_config matches 3156513 run gamerule maxCommandChainLength 65536
execute if score #uninstall ATPminer_config matches 3156513 run gamerule commandModificationBlockLimit 65536

execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.temp
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.damage
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.max_damage
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.depth
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.block_count
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.hunger
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.hunger_timer
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.random
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.check_empty_hand
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.unbreaking
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.expected_count
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.exist_damage_nbt
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.persistance
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.global_setting
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.no_damage
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.sneaking_time
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.input_ctrl
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.AUTO_light_state
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.AUTO_light_timer
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.track_depth
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.rotation0
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.rotation1
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove ATPminer
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer.basic
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer.combination
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer.replant
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer.fast_rot
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer.sneaking_mode
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer.auto_farm
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer.cube_chain
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer_config.width
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer_config.height
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer_config.depth
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer.farming_mode
execute if score #uninstall ATPminer_config matches 3156513 run scoreboard objectives remove dp_vmn.ATPminer.debug
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_CONST]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_ACTIVE_0]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_ACTIVE_1]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_ACTIVE_2]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_FARM]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_GIANT]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_LEAF]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_MAIN]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_NO_TAG]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_RANDOM]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_REPLANT]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_SAPLING]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_SCAN]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_SCAN_skip]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_SUB]
execute if score #uninstall ATPminer_config matches 3156513 run kill @e[tag=dp_vmn_TEMP]

execute if score #uninstall ATPminer_config matches 3156513 if score @s dp_vmn.lang matches 1 run function vmn:main/vmn/lang/zh_cn/uni_suc
execute if score #uninstall ATPminer_config matches 3156513 if score @s dp_vmn.lang matches 2 run function vmn:main/vmn/lang/en_us/uni_suc
