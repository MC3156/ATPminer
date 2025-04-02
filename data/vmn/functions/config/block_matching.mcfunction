##⭐配置文件-3⭐ 方块-ID匹配检测函数 [根据配置文件1和2决定]
# 参考格式：execute if score #block_value dp_vmn.temp matches <唯一的ID> if block ~ ~ ~ <模组的命名空间>:<方块ID> run scoreboard players set #temp_execute dp_vmn.temp 1
# 示例：execute if score #block_value dp_vmn.temp matches 10001 if block ~ ~ ~ tconstruct:cobalt_ore run scoreboard players set #temp_execute dp_vmn.temp 1
# 解释：当唯一的整数ID和方块名匹配时，调用该函数的进程将通过 (注意此处的 <模组的命名空间>:<方块ID> 中间是冒号连接，而配置文件1中是小数点连接，复制粘贴后记得修改)
# 注意：前几行和最后一行代码请勿删除或调换顺序，请在最后一行代码之前添加内容

scoreboard players reset #temp_execute dp_vmn.temp
# 原版方块
function vmn:config/vanilla/block_matching

function vmn:main/versions/1.17-1.20.6/block_matching
function vmn:main/versions/change/block_matching

execute if score #block_value dp_vmn.temp matches 1 if block ~ ~ ~ minecraft:diamond_ore run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches 2 if block ~ ~ ~ minecraft:iron_ore run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches 3 if block ~ ~ ~ minecraft:gold_ore run scoreboard players set #temp_execute dp_vmn.temp 1


execute if score #temp_execute dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:no_damage run scoreboard players set #no_damage dp_vmn.temp 1
