##全局设置

tellraw @s ["§d🔥 ",{"text":"ATP-高能连锁","color":"gold","hoverEvent":{"action":"show_text","contents":"§6⚡§eATPminer§6⚡ §7点击在MCMOD打开\n新版本的连锁方块采集挖掘！支持较多拓展功能(§d⚡§e联合采集、§d⚡§e自动照明、§d⚡§e智能收种、§d⚡§e范围耕种、§d⚡§e快速落叶、§d⚡§e矩形开采§7等等)，数据包采用多种方式优化性能，高度支持个性化配置§r"},"clickEvent":{"action":"open_url","value":"https://center.mcmod.cn/347992/"}},{"text":"(数据包)","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":"§3数据包 §7点击在中文Wiki打开\n数据包(Datapack)为玩家自定义Minecraft的游戏内容提供了除制作mod之外的一个新选择"},"clickEvent":{"action":"open_url","value":"https://zh.minecraft.wiki/w/%E6%95%B0%E6%8D%AE%E5%8C%85"}}," ",{"text":"全局设置","color":"red","hoverEvent":{"action":"show_text","contents":"§e全局设置\n§7点击下列项目启用或禁用\n将对所有玩家生效\n注意，修改是实时的§r"}}]

execute unless score #global.atp_miner dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"基础功能","color":"green","hoverEvent":{"action":"show_text","contents":"§e基础功能 §a全局启用\n§7玩家可成片采集资源或挖掘方块\n是所有与连锁有关拓展功能的前置"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/basic_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/basic_0"}}]
execute if score #global.atp_miner dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"基础功能","color":"red","hoverEvent":{"action":"show_text","contents":"§e基础功能 §c全局禁用\n§7玩家可成片采集资源或挖掘方块\n是所有与连锁有关拓展功能的前置"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/basic_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/basic_0"}}]

execute unless score #global.auto_light dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"自动照明","color":"green","hoverEvent":{"action":"show_text","contents":"§e自动照明 §a全局启用\n§7玩家位于暗处或黑夜可自动插火把(消耗)\n使用§6/trigger AUTO_light§7控制开关"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_light_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d允许玩家§a启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_light_0"}}]
execute if score #global.auto_light dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"自动照明","color":"red","hoverEvent":{"action":"show_text","contents":"§e自动照明 §c全局禁用\n§7玩家位于暗处或黑夜可自动插火把(消耗)\n使用§6/trigger AUTO_light§7控制开关"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_light_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d允许玩家§a启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_light_0"}}]

execute unless score #global.config dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"参数配置","color":"green","hoverEvent":{"action":"show_text","contents":"§e参数配置 §a全局启用\n§7是否允许玩家通过§6/trigger ATPminer_config§7个性化修改连锁宽度、高度、深度"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c玩家将使用全局默认参数§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/config_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d允许玩家§a配置自己的操作参数§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/config_0"}}," ",{"text":"宽","color":"yellow","underlined":true,"hoverEvent":{"action":"show_text","contents":["§e全局宽半径(",{"score":{"name":"#global.config.width","objective":"dp_vmn.global_setting"},"color":"light_purple"},"§e) §b范围1~5 §7点击修改\n超出范围的值将初始化"]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #global.config.depth dp_vmn.global_setting 2"}}," ",{"text":"高","color":"yellow","underlined":true,"hoverEvent":{"action":"show_text","contents":["§e全局高半径(",{"score":{"name":"#global.config.height","objective":"dp_vmn.global_setting"},"color":"light_purple"},"§e) §b范围1~5 §7点击修改\n超出范围的值将初始化"]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #global.config.height dp_vmn.global_setting 2"}}," ",{"text":"深","color":"yellow","underlined":true,"hoverEvent":{"action":"show_text","contents":["§e全局纵深度(",{"score":{"name":"#global.config.depth","objective":"dp_vmn.global_setting"},"color":"light_purple"},"§e) §b范围1~9 §7点击修改\n超出范围的值将初始化"]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #global.config.depth dp_vmn.global_setting 1"}}]
execute if score #global.config dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"参数配置","color":"red","hoverEvent":{"action":"show_text","contents":"§e参数配置 §c使用全局值\n§7是否允许玩家通过§6/trigger ATPminer_config§7个性化修改连锁宽度、高度、深度"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c玩家将使用全局默认参数§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/config_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d允许玩家§a配置自己的操作参数§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/config_0"}}," ",{"text":"宽","color":"yellow","underlined":true,"hoverEvent":{"action":"show_text","contents":["§e全局宽半径(",{"score":{"name":"#global.config.width","objective":"dp_vmn.global_setting"},"color":"light_purple"},"§e) §b范围1~5 §7点击修改\n超出范围的值将初始化"]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #global.config.depth dp_vmn.global_setting 2"}}," ",{"text":"高","color":"yellow","underlined":true,"hoverEvent":{"action":"show_text","contents":["§e全局高半径(",{"score":{"name":"#global.config.height","objective":"dp_vmn.global_setting"},"color":"light_purple"},"§e) §b范围1~5 §7点击修改\n超出范围的值将初始化"]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #global.config.height dp_vmn.global_setting 2"}}," ",{"text":"深","color":"yellow","underlined":true,"hoverEvent":{"action":"show_text","contents":["§e全局纵深度(",{"score":{"name":"#global.config.depth","objective":"dp_vmn.global_setting"},"color":"light_purple"},"§e) §b范围1~9 §7点击修改\n超出范围的值将初始化"]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #global.config.depth dp_vmn.global_setting 1"}}]

execute unless score #global.drop dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"物品掉落","color":"green","hoverEvent":{"action":"show_text","contents":"§e物品掉落 §a玩家位置\n§7掉落物应该在哪里生成"}},"  ",{"text":"方块","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c在方块原位置生成，对性能影响较大§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/drop_1"}}," ",{"text":"玩家","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a在玩家位置生成，可以被瞬间捡起\n减少掉落物带来的性能消耗§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/drop_0"}}]
execute if score #global.drop dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"物品掉落","color":"red","hoverEvent":{"action":"show_text","contents":"§e物品掉落 §c方块位置\n§7掉落物应该在哪里生成"}},"  ",{"text":"方块","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c在方块原位置生成，对性能影响较大§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/drop_1"}}," ",{"text":"玩家","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a在玩家位置生成，可以被瞬间捡起\n减少掉落物带来的性能消耗§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/drop_0"}}]

execute unless score #global.combination dp_vmn.global_setting matches 1..2 run tellraw @s ["§b🔥 §r",{"text":"联合采集","color":"red","hoverEvent":{"action":"show_text","contents":"§e联合采集 §c全局禁用\n§7玩家采集同类方块时，可以将其一起搜索采掘\n(支持矿石、原木、农作物、珊瑚、染色材料等(详见配置文件))"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/combination_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/combination_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/combination_2"}}]
execute if score #global.combination dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"联合采集","color":"light_purple","hoverEvent":{"action":"show_text","contents":"§e联合采集 §d由玩家决定\n§7玩家采集同类方块时，可以将其一起搜索采掘\n(支持矿石、原木、农作物、珊瑚、染色材料等(详见配置文件))"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/combination_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/combination_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/combination_2"}}]
execute if score #global.combination dp_vmn.global_setting matches 2 run tellraw @s ["§b🔥 §r",{"text":"联合采集","color":"green","hoverEvent":{"action":"show_text","contents":"§e联合采集 §a全局启用\n§7玩家采集同类方块时，可以将其一起搜索采掘\n(支持矿石、原木、农作物、珊瑚、染色材料等(详见配置文件))"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/combination_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/combination_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/combination_2"}}]

execute unless score #global.auto_farm dp_vmn.global_setting matches 1..2 run tellraw @s ["§b🔥 §r",{"text":"范围耕作","color":"red","hoverEvent":{"action":"show_text","contents":"§e范围耕作 §c全局禁用\n§7玩家可以范围耕作和种植农作物，在§6平面§7模式下\n若耕地时副手持水桶，将自动在中心位置蓄水\n连锁范围取决于宽半径(§6平面§7)或纵深度(§6直线§7)"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_farm_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_farm_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_farm_2"}}]
execute if score #global.auto_farm dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"范围耕作","color":"light_purple","hoverEvent":{"action":"show_text","contents":"§e范围耕作 §d由玩家决定\n§7玩家可以范围耕作和种植农作物，在§6平面§7模式下\n若耕地时副手持水桶，将自动在中心位置蓄水\n连锁范围取决于宽半径(§6平面§7)或纵深度(§6直线§7)"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_farm_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_farm_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_farm_2"}}]
execute if score #global.auto_farm dp_vmn.global_setting matches 2 run tellraw @s ["§b🔥 §r",{"text":"范围耕作","color":"green","hoverEvent":{"action":"show_text","contents":"§e范围耕作 §a全局启用\n§7玩家可以范围耕作和种植农作物，在§6平面§7模式下\n若耕地时副手持水桶，将自动在中心位置蓄水\n连锁范围取决于宽半径(§6平面§7)或纵深度(§6直线§7)"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_farm_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_farm_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/auto_farm_2"}}]

execute unless score #global.smart_replant dp_vmn.global_setting matches 1..2 run tellraw @s ["§b🔥 §r",{"text":"智能补种","color":"red","hoverEvent":{"action":"show_text","contents":"§e智能补种 §c全局禁用\n§7连锁伐木后自动将背包里的树苗补种在近处\n§c该功能不兼容“§6联合采集§7”"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/smart_replant_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/smart_replant_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/smart_replant_2"}}]
execute if score #global.smart_replant dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"智能补种","color":"light_purple","hoverEvent":{"action":"show_text","contents":"§e智能补种 §d由玩家决定\n§7连锁伐木或采集农作物时将自动补种树苗或种子\n采集农作物时自动消耗掉落物的1个种子种植在原处\n伐木时检测背包树苗，伐木时不兼容“§6联合采集§7”"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/smart_replant_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/smart_replant_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/smart_replant_2"}}]
execute if score #global.smart_replant dp_vmn.global_setting matches 2 run tellraw @s ["§b🔥 §r",{"text":"智能补种","color":"green","hoverEvent":{"action":"show_text","contents":"§e智能补种 §a全局启用\n§7连锁伐木或采集农作物时将自动补种树苗或种子\n采集农作物时自动消耗掉落物的1个种子种植在原处\n伐木时检测背包树苗，伐木时不兼容“§6联合采集§7”"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/smart_replant_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/smart_replant_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/smart_replant_2"}}]

execute unless score #global.fast_rot dp_vmn.global_setting matches 1..2 run tellraw @s ["§b🔥 §r",{"text":"快速落叶","color":"red","hoverEvent":{"action":"show_text","contents":"§e快速落叶 §c全局禁用\n§7通过连锁采集留下的树叶将快速枯萎"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/fast_rot_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/fast_rot_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/fast_rot_2"}}]
execute if score #global.fast_rot dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"快速落叶","color":"light_purple","hoverEvent":{"action":"show_text","contents":"§e快速落叶 §d由玩家决定\n§7通过连锁采集留下的树叶将快速枯萎"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/fast_rot_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/fast_rot_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/fast_rot_2"}}]
execute if score #global.fast_rot dp_vmn.global_setting matches 2 run tellraw @s ["§b🔥 §r",{"text":"快速落叶","color":"green","hoverEvent":{"action":"show_text","contents":"§e快速落叶 §a全局启用\n§7通过连锁采集留下的树叶将快速枯萎"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/fast_rot_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/fast_rot_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/fast_rot_2"}}]

execute unless score #global.cube_chain dp_vmn.global_setting matches 1..2 run tellraw @s ["§b🔥 §r",{"text":"矩形挖掘","color":"red","hoverEvent":{"action":"show_text","contents":"§e矩形挖掘 §c全局禁用\n§7以立方体的形状挖掘方块(可配置宽高深)\n该功能与“§6智能补种§7”和“§6快速落叶§7”不兼容\n在玩家视角，宽度向左右延伸，高度向上\n下延伸，深度向视野前方延伸"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/cube_chain_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/cube_chain_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/cube_chain_2"}}]
execute if score #global.cube_chain dp_vmn.global_setting matches 1 run tellraw @s ["§b🔥 §r",{"text":"矩形挖掘","color":"light_purple","hoverEvent":{"action":"show_text","contents":"§e矩形挖掘 §d由玩家决定\n§7以立方体的形状挖掘方块(可配置宽高深)\n该功能与“§6智能补种§7”和“§6快速落叶§7”不兼容\n在玩家视角，宽度向左右延伸，高度向上\n下延伸，深度向视野前方延伸"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/cube_chain_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/cube_chain_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/cube_chain_2"}}]
execute if score #global.cube_chain dp_vmn.global_setting matches 2 run tellraw @s ["§b🔥 §r",{"text":"矩形挖掘","color":"green","hoverEvent":{"action":"show_text","contents":"§e矩形挖掘 §a全局启用\n§7以立方体的形状挖掘方块(可配置宽高深)\n该功能与“§6智能补种§7”和“§6快速落叶§7”不兼容\n在玩家视角，宽度向左右延伸，高度向上\n下延伸，深度向视野前方延伸"}},"  ",{"text":"禁用","color":"red","underlined":true,"hoverEvent":{"action":"show_text","contents":"§c全局禁用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/cube_chain_0"}}," ",{"text":"自定","color":"light_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":"§d玩家自行决定是否开启§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/cube_chain_1"}}," ",{"text":"启用","color":"green","underlined":true,"hoverEvent":{"action":"show_text","contents":"§a全局启用该功能§r"},"clickEvent":{"action":"run_command","value":"/function vmn:main/vmn/global_setting/cube_chain_2"}}]

tellraw @s ["§b🔥 §r",{"text":"性能参数","color":"aqua","hoverEvent":{"action":"show_text","contents":"§e性能参数\n§7根据服务器实际情况调整的参数值§r"}},"  ",{"text":"子线程","color":"blue","underlined": true,"hoverEvent":{"action":"show_text","contents":["§e子线程 §7当前值(",{"score":{"name":"#value_tick_thread","objective":"dp_vmn.global_setting"},"color":"light_purple"},") §7默认(§b64§7) 点击修改\n单次连锁事件的每TICK最大执行方块数量\n影响服务器性能和异步连锁效率\n详细内容请参阅README文档"]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #value_tick_thread dp_vmn.global_setting 64"}}," ",{"text":"搜索量","color":"blue","underlined": true,"hoverEvent":{"action":"show_text","contents":["§e搜索量 §7当前值(",{"score":{"name":"#value_max_bfs","objective":"dp_vmn.global_setting"},"color":"light_purple"},") §7默认(§b1048576§7) 点击修改\n单次连锁事件搜索的最大方块限制\n详细内容请参阅README文档"]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #value_max_bfs dp_vmn.global_setting 1048576"}}," ",{"text":"DFS尝试","color":"blue","underlined": true,"hoverEvent":{"action":"show_text","contents":["§eDFS尝试 §7当前值(",{"score":{"name":"#value_dfs_search","objective":"dp_vmn.global_setting"},"color":"light_purple"},") §7默认(§b640§7) 点击修改\n在转用异步连锁前允许使用DFS搜索的最大数量\n会影响服务器性能\n详细内容请参阅README文档"]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #value_dfs_search dp_vmn.global_setting 640"}}," ",{"text":"搜索次数","color":"blue","underlined": true,"hoverEvent":{"action":"show_text","contents":["§e搜索次数 §7当前值(",{"score":{"name":"#value_max_depth","objective":"dp_vmn.global_setting"},"color":"light_purple"},") §7默认(§b32768§7) 点击修改\n单次异步连锁的最大搜索次数限制\n影响连锁处理的最长时间\n详细内容请参阅README文档"]},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set #value_max_depth dp_vmn.global_setting 32768"}}]
