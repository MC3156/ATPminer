##联合采集 配置文件 分类
# 铁轨组 ID: -29
# 如何在组中添加新方块? 请参阅 README.TXT 的配置文件部分

execute if score @s dp_vmn.rail matches 1.. run scoreboard players set #block_value dp_vmn.temp -29
execute if score @s dp_vmn.powered_rail matches 1.. run scoreboard players set #block_value dp_vmn.temp -29
execute if score @s dp_vmn.detector_rail matches 1.. run scoreboard players set #block_value dp_vmn.temp -29
execute if score @s dp_vmn.activator_rail matches 1.. run scoreboard players set #block_value dp_vmn.temp -29
