##联合采集 配置文件 分类
# 冰组 ID: -32
# 如何在组中添加新方块? 请参阅 README.TXT 的配置文件部分

execute if score @s dp_vmn.ice matches 1.. run scoreboard players set #block_value dp_vmn.temp -32
execute if score @s dp_vmn.packed_ice matches 1.. run scoreboard players set #block_value dp_vmn.temp -32
execute if score @s dp_vmn.blue_ice matches 1.. run scoreboard players set #block_value dp_vmn.temp -32
execute if score @s dp_vmn.frosted_ice matches 1.. run scoreboard players set #block_value dp_vmn.temp -32
