##⭐配置文件-2⭐ 支持连锁的方块-ID映射表 [定义唯一对应ID值，需要先在配置文件1定义计分板]
# 参考格式：execute if score @s <计分板名称> matches 1.. run scoreboard players set #block_value dp_vmn.temp <唯一的ID>
# 示例：execute if score @s TC.cobalt_ore matches 1.. run scoreboard players set #block_value dp_vmn.temp 10001
# 解释：<计分板名称>是在 配置文件-1 中你定义的名称，<唯一的ID>在后续识别时使用(不要重复，必须是正整数(允许的范围:1~2147483647))，这两个参数要在每个配置文件中对应好
# 为确保连锁的安全性，部分常见方块被设定为必须潜行才可以连锁(例如泥土)，若添加的新方块也需要该保护，请紧接在execute后面添加潜行条件：if score @s dp_vmn.sneaking_time matches 1
# 示例：execute if score @s dp_vmn.sneaking_time matches 1 if score @s dp_vmn.dirt matches 1.. run scoreboard players set #block_value dp_vmn.temp 68
# 注意：其他格式的代码不要删除或调换顺序，例如第一行的function

# 原版方块
function vmn:config/vanilla/mineable_block

execute if score @s dp_vmn.diamond_ore matches 1.. run scoreboard players set #block_value dp_vmn.temp 1
execute if score @s dp_vmn.sneaking_time matches 1 if score @s dp_vmn.oak_leaves matches 1.. run scoreboard players set #block_value dp_vmn.temp 48
