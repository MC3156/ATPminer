##联合采集 配置文件 分类
# 铁砧组 ID: -28
# 如何在组中添加新方块? 请参阅 README.TXT 的配置文件部分

execute if score @s dp_vmn.anvil matches 1.. run scoreboard players set #block_value dp_vmn.temp -28
execute if score @s dp_vmn.chipped_anvil matches 1.. run scoreboard players set #block_value dp_vmn.temp -28
execute if score @s dp_vmn.damaged_anvil matches 1.. run scoreboard players set #block_value dp_vmn.temp -28
