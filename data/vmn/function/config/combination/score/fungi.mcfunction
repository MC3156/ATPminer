##联合采集 配置文件 分类
# 真菌组 ID: -9
# 如何在组中添加新方块? 请参阅 README.TXT 的配置文件部分

execute if score @s dp_vmn.mushroom_stem matches 1.. run scoreboard players set #block_value dp_vmn.temp -9
execute if score @s dp_vmn.red_mushroom_block matches 1.. run scoreboard players set #block_value dp_vmn.temp -9
execute if score @s dp_vmn.brown_mushroom_block matches 1.. run scoreboard players set #block_value dp_vmn.temp -9
execute if score @s dp_vmn.nether_wart_block matches 1.. run scoreboard players set #block_value dp_vmn.temp -9
execute if score @s dp_vmn.warped_wart_block matches 1.. run scoreboard players set #block_value dp_vmn.temp -9
execute if score @s dp_vmn.shroomlight matches 1.. run scoreboard players set #block_value dp_vmn.temp -9
