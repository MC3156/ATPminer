##经验计算 (#mapping)
# 仅限挖掉有经验球生成的方块

function vmn:config/exp_orb
scoreboard players operation #exp_orb_count dp_vmn.temp = #count dp_vmn.temp
scoreboard players operation #exp_orb_value dp_vmn.temp *= #exp_orb_count dp_vmn.temp
function vmn:main/vmn/exp_orb2
scoreboard players reset #exp_orb_value dp_vmn.temp
scoreboard players reset #exp_orb_count dp_vmn.temp
