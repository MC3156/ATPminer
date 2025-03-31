##检测玩家挖掘方块计分项 2
# 匹配映射，匹配联合组

execute unless score #block_value dp_vmn.temp matches -2147483648..2147483647 run function vmn:config/mineable_block
execute if score @s dp_vmn.ATPminer.combination matches 1 if score #block_value dp_vmn.temp matches 1..2147483647 run advancement grant @s only vmn:tutorial/combination
execute if score @s dp_vmn.ATPminer.combination matches 1 if score #block_value dp_vmn.temp matches 1..2147483647 unless score #temp_execute dp_vmn.temp matches 1 run function vmn:config/combination/scan_group
execute if score #block_value dp_vmn.temp matches -2147483648..2147483647 unless score @s dp_vmn.ATPminer.cube_chain matches 1 if score @s dp_vmn.ATPminer.replant matches 1 run function vmn:config/smart_replant/farmland/check_crops
execute if score #block_value dp_vmn.temp matches -2147483648..2147483647 unless score @s dp_vmn.ATPminer.cube_chain matches 1 run function vmn:main/vmn/dfs
execute if score #block_value dp_vmn.temp matches -2147483648..2147483647 unless score @s dp_vmn.ATPminer.cube_chain matches 1 if score #dfs_state dp_vmn.temp matches 1 run function vmn:main/vmn/mark_event
execute if score #block_value dp_vmn.temp matches -2147483648..2147483647 if score @s dp_vmn.ATPminer.cube_chain matches 1 run function vmn:main/vmn/cube_chain_check
scoreboard players reset #dfs_state dp_vmn.temp
