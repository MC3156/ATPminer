##联合采集 配置文件 分类
# 幽匿组 ID: -31
# 如何在组中添加新方块? 请参阅 README.TXT 的配置文件部分

execute if score @s dp_vmn.sculk_vein matches 1.. run scoreboard players set #block_value dp_vmn.temp -31
execute if score @s dp_vmn.sculk matches 1.. run scoreboard players set #block_value dp_vmn.temp -31
execute if score @s dp_vmn.sculk_shrieker matches 1.. run scoreboard players set #block_value dp_vmn.temp -31
execute if score @s dp_vmn.sculk_catalyst matches 1.. run scoreboard players set #block_value dp_vmn.temp -31
execute if score @s dp_vmn.sculk_sensor matches 1.. run scoreboard players set #block_value dp_vmn.temp -31
