##⭐配置文件-4⭐ 分数重置 [根据配置文件1的计分板名称决定]
# 如果你认为需要计分板卸载程序(适用于完全清除数据(不清除对游戏运行也基本无影响))，请移步config/uninstall/scoreboard_uis配置文件
# 参考格式：scoreboard players reset @a <计分板名称>
# 示例：scoreboard players reset @a TC.cobalt_ore
# 解释：清空分数用于连锁采集的再次检测，按照格式仿写即可
# 注意：其他格式的代码请勿删除或调换顺序

# 原版方块
function vmn:config/vanilla/reset_score

scoreboard players reset @a dp_vmn.diamond_ore
scoreboard players reset @a dp_vmn.iron_ore
scoreboard players reset @a dp_vmn.gold_ore
scoreboard players reset @a dp_vmn.coal_ore
