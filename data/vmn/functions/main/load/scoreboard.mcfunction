##scoreboard

# 规则修改(必须)
gamerule maxCommandChainLength 16777216
gamerule commandModificationBlockLimit 16777216

# 方块挖掘计分板 种子使用计分板 定义文件 以及黑名单
function vmn:config/scoreboard
function vmn:main/versions/1.17-1.20.6/scoreboard
function vmn:main/versions/change/scoreboard
function vmn:config/farmland/valid_seeds
function vmn:config/uninstall/black_list

# 事件控制计分板
# ->主标记
#   damage:损坏值  max_damage:最大耐久  depth:搜索深度  block_count:连锁总数  random:映射值  unbreaking:耐久魔咒等级  expected_count:预期挖掘数
#   exist_damage_nbt:damage标签存在性(经验修补bug)  no_damage:是否不消耗工具耐久(除剪刀)
# ->玩家
#   hunger:饥饿计数器  hunger_timer:饥饿计时器  check_empty_hand:空手检查器  sneaking_time:潜行检测  track_depth:视追深度  rotation(0-1):视角记录
#   #BS(x1~z2):角点存储
# ->虚拟实体  temp:临时变量  global_setting:全局功能管理+亮度扫描
# ->子标记/盔甲架  random:映射值
# ->活跃2标记  persistance:标记寿命
scoreboard objectives add dp_vmn.temp dummy
scoreboard objectives add dp_vmn.damage dummy
scoreboard objectives add dp_vmn.max_damage dummy
scoreboard objectives add dp_vmn.depth dummy
scoreboard objectives add dp_vmn.block_count dummy
scoreboard objectives add dp_vmn.hunger dummy
scoreboard objectives add dp_vmn.hunger_timer dummy
scoreboard objectives add dp_vmn.random dummy
scoreboard objectives add dp_vmn.check_empty_hand dummy
scoreboard objectives add dp_vmn.unbreaking dummy
scoreboard objectives add dp_vmn.expected_count dummy
scoreboard objectives add dp_vmn.exist_damage_nbt dummy
scoreboard objectives add dp_vmn.persistance dummy
scoreboard objectives add dp_vmn.global_setting dummy
scoreboard objectives add dp_vmn.no_damage dummy
scoreboard objectives add dp_vmn.sneaking_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add dp_vmn.AUTO_light_state dummy
scoreboard objectives add dp_vmn.AUTO_light_timer dummy
scoreboard objectives add dp_vmn.track_depth dummy
scoreboard objectives add dp_vmn.rotation0 dummy
scoreboard objectives add dp_vmn.rotation1 dummy
#scoreboard objectives add dp_vmn.BS.x1 dummy
#scoreboard objectives add dp_vmn.BS.y1 dummy
#scoreboard objectives add dp_vmn.BS.z1 dummy
#scoreboard objectives add dp_vmn.BS.x2 dummy
#scoreboard objectives add dp_vmn.BS.y2 dummy
#scoreboard objectives add dp_vmn.BS.z2 dummy

# 模式触发计分板 (前缀：dp_vmn.ATPminer)
# combination:联合模式(开/关)
scoreboard objectives add ATPminer trigger ["§6⚡§eATPminer§6⚡§r"]
# scoreboard objectives add AUTO_light trigger ["§6🔥§r"]
scoreboard objectives add ATPminer_config trigger ["§6⚡§7ATPM config§6⚡§r"]
scoreboard objectives add dp_vmn.lang dummy
scoreboard objectives add dp_vmn.ATPminer.combination dummy
scoreboard objectives add dp_vmn.ATPminer.replant dummy
scoreboard objectives add dp_vmn.ATPminer.fast_rot dummy
scoreboard objectives add dp_vmn.ATPminer.sneaking_mode dummy
scoreboard objectives add dp_vmn.ATPminer.auto_farm dummy
scoreboard objectives add dp_vmn.ATPminer.cube_chain dummy
scoreboard objectives add dp_vmn.ATPminer_config.width dummy
scoreboard objectives add dp_vmn.ATPminer_config.height dummy
scoreboard objectives add dp_vmn.ATPminer_config.depth dummy
scoreboard objectives add dp_vmn.ATPminer.farming_mode dummy
scoreboard objectives add dp_vmn.ATPminer.debug dummy
scoreboard objectives add dp_vmn.ATPminer.basic dummy

# 处理
scoreboard players reset * dp_vmn.temp

# 常量
# ->temp_secret:执行部分命令需要的秘钥(请勿更改)
# 注意：此处4个value不需更改，仅仅作为初始化用途，需要配置请参阅配置文件说明
# ->value_tick_thread:异步连锁最大线程数(每个连锁事件中在每tick最多处理的方块数量，默认64)
# ->value_max_bfs:异步连锁最大搜索的方块数量(每个连锁事件最多可以有效挖掘多少方块(由于工具耐久等等，实际情况基本上会远低于该限制值)，默认1048576)
# ->value_dfs_search:深度搜索最大尝试(当一瞬间搜索到多少方块时，自动转异步连锁，以节约性能，默认640)
# ->value_max_depth:异步连锁最大深度(每个连锁事件最多搜索多少次，即多少tick，默认32768)
scoreboard players set #temp_secret dp_vmn.temp 3156
execute unless score #value_tick_thread dp_vmn.global_setting matches 4..2147483647 run scoreboard players set #value_tick_thread dp_vmn.global_setting 64
execute unless score #value_max_bfs dp_vmn.global_setting matches 4..2147483647 run scoreboard players set #value_max_bfs dp_vmn.global_setting 1048576
execute unless score #value_dfs_search dp_vmn.global_setting matches 4..2147483647 run scoreboard players set #value_dfs_search dp_vmn.global_setting 640
execute unless score #value_max_depth dp_vmn.global_setting matches 4..2147483647 run scoreboard players set #value_max_depth dp_vmn.global_setting 32768
execute if score #value_max_bfs dp_vmn.global_setting < #value_dfs_search dp_vmn.global_setting run scoreboard players operation #value_max_bfs dp_vmn.global_setting = #value_dfs_search dp_vmn.global_setting
