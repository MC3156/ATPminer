##递归视追锁定方块 5
# 检测+执行 ->6

execute if score #block_value dp_vmn.temp matches -100..-2 run function vmn:config/combination/match_group
execute if score #block_value dp_vmn.temp matches 1.. run function vmn:config/block_matching
execute if score #temp_execute dp_vmn.temp matches 1 run function vmn:config/smart_replant/check_log
execute if score #temp_execute dp_vmn.temp matches 1 run function vmn:main/vmn/eye_track6
