##联合采集 配置文件 分类
# 成熟农作物组 ID: -7 (该组支持智能补种检测)
# 如何在组中添加新方块? 请参阅 README.TXT 的配置文件部分 
# 注意：本组比较特殊，使用smart_replant/farmland/mature_crops(.mcfunction)文件替代了tags文件夹中的json文件

execute if score @s dp_vmn.pitcher_crop matches 1.. run scoreboard players set #block_value dp_vmn.temp -7
execute if score @s dp_vmn.wheat matches 1.. run scoreboard players set #block_value dp_vmn.temp -7
execute if score @s dp_vmn.torchflower matches 1.. run scoreboard players set #block_value dp_vmn.temp -7
execute if score @s dp_vmn.beetroots matches 1.. run scoreboard players set #block_value dp_vmn.temp -7
execute if score @s dp_vmn.carrots matches 1.. run scoreboard players set #block_value dp_vmn.temp -7
execute if score @s dp_vmn.potatoes matches 1.. run scoreboard players set #block_value dp_vmn.temp -7
