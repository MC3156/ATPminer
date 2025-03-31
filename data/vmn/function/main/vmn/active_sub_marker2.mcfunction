##活跃子标记 2
# 方块挖掘

execute if score #block_value dp_vmn.temp matches -10000..-2 run function vmn:config/combination/match_group
execute if score #block_value dp_vmn.temp matches 1.. run function vmn:config/block_matching
execute if score #temp_execute dp_vmn.temp matches 1 run function vmn:main/vmn/active_sub_marker3
