##联合采集 配置文件 分类
# 末地城组 ID: -16
# 如何在组中添加新方块? 请参阅 README.TXT 的配置文件部分

execute if score @s dp_vmn.purpur_block matches 1.. run scoreboard players set #block_value dp_vmn.temp -16
execute if score @s dp_vmn.end_stone_bricks matches 1.. run scoreboard players set #block_value dp_vmn.temp -16
execute if score @s dp_vmn.purpur_pillar matches 1.. run scoreboard players set #block_value dp_vmn.temp -16
execute if score @s dp_vmn.purpur_slab matches 1.. run scoreboard players set #block_value dp_vmn.temp -16
execute if score @s dp_vmn.purpur_stairs matches 1.. run scoreboard players set #block_value dp_vmn.temp -16
