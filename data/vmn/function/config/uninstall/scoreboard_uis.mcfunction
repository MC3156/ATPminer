##卸载计分板 配置文件 (，我希望你不会用到QAQ，事实上，关闭数据包不卸载，对游戏运行基本无影响)
# 请调用卸载入口函数，否则无效
# 参考格式：scoreboard objectives remove <计分板名称>

# 原版方块
function vmn:config/vanilla/scoreboard_uis

scoreboard objectives remove dp_vmn.diamond_ore
scoreboard objectives remove dp_vmn.iron_ore
scoreboard objectives remove dp_vmn.gold_ore
scoreboard objectives remove dp_vmn.coal_ore
