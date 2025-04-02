##联合采集 配置文件 分类
# 下界要塞组 ID: -14
# 如何在组中添加新方块? 请参阅 README.TXT 的配置文件部分

execute if score @s dp_vmn.nether_bricks matches 1.. run scoreboard players set #block_value dp_vmn.temp -14
execute if score @s dp_vmn.nether_brick_stairs matches 1.. run scoreboard players set #block_value dp_vmn.temp -14
execute if score @s dp_vmn.nether_brick_slab matches 1.. run scoreboard players set #block_value dp_vmn.temp -14
execute if score @s dp_vmn.nether_brick_fence matches 1.. run scoreboard players set #block_value dp_vmn.temp -14
