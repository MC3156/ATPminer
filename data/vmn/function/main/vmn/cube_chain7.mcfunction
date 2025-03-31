##矩形挖掘 7
# 匹配方块/组

execute if score #block_value dp_vmn.temp matches -10000..-2 run function vmn:config/combination/match_group
execute if score #block_value dp_vmn.temp matches 1.. run function vmn:config/block_matching
#execute if score #temp_execute dp_vmn.temp matches 1 run function vmn:config/smart_replant/check_log
execute if score #temp_execute dp_vmn.temp matches 1 if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp run function vmn:main/vmn/cube_chain8
