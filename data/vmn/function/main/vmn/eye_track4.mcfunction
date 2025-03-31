##递归视追锁定方块 4
# 方块周边再检测 ->2

execute if score #block_value dp_vmn.temp matches -10000..-2 run function vmn:config/combination/match_group
execute if score #block_value dp_vmn.temp matches 1.. run function vmn:config/block_matching
execute if score #temp_execute dp_vmn.temp matches 1 run function vmn:main/vmn/eye_track2

execute unless score #twice_check dp_vmn.temp matches 2 run scoreboard players set #twice_check dp_vmn.temp 2
