##⭐配置文件-5⭐ 经验价值 [每个方块掉落的经验平均值(正整数)]
# 参考格式：execute if block ~ ~ ~ <模组命名空间>:<方块ID> run scoreboard players add #exp_orb_value dp_vmn.temp <平均值>
# 解释：部分方块在非精准采集的情况下，连锁时掉落的经验值，经验值可查询相关方块的资料自行修改价值(例如钻石矿石每个经验价值是3~7，故平均值5最为合适)
# 注意：前几行其他格式的代码请勿修改或调换位置

function vmn:main/versions/1.17-1.20.6/exp_orb/1.19

execute if block ~ ~ ~ minecraft:diamond_ore run scoreboard players add #exp_orb_value dp_vmn.temp 5
execute if block ~ ~ ~ minecraft:deepslate_diamond_ore run scoreboard players add #exp_orb_value dp_vmn.temp 5
execute if block ~ ~ ~ minecraft:coal_ore run scoreboard players add #exp_orb_value dp_vmn.temp 1
execute if block ~ ~ ~ minecraft:deepslate_coal_ore run scoreboard players add #exp_orb_value dp_vmn.temp 1
execute if block ~ ~ ~ minecraft:redstone_ore run scoreboard players add #exp_orb_value dp_vmn.temp 3
execute if block ~ ~ ~ minecraft:deepslate_redstone_ore run scoreboard players add #exp_orb_value dp_vmn.temp 3
execute if block ~ ~ ~ minecraft:lapis_ore run scoreboard players add #exp_orb_value dp_vmn.temp 4
execute if block ~ ~ ~ minecraft:deepslate_lapis_ore run scoreboard players add #exp_orb_value dp_vmn.temp 4
execute if block ~ ~ ~ minecraft:emerald_ore run scoreboard players add #exp_orb_value dp_vmn.temp 5
execute if block ~ ~ ~ minecraft:deepslate_emerald_ore run scoreboard players add #exp_orb_value dp_vmn.temp 5
execute if block ~ ~ ~ minecraft:nether_gold_ore run scoreboard players add #exp_orb_value dp_vmn.temp 1
execute if block ~ ~ ~ minecraft:nether_quartz_ore run scoreboard players add #exp_orb_value dp_vmn.temp 4
