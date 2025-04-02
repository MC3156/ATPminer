##⭐配置文件-1⭐ 支持连锁的方块-计分板定义 [定义计分板，并指定生效的方块准则]
# 参考格式：scoreboard objectives add <计分板名称> minecraft.mined:<模组的命名空间>.<方块ID>
# 示例：scoreboard objectives add TC.cobalt_ore minecraft.mined:tconstruct.cobalt_ore [添加一个名为TC.cobalt_ore，准则是挖掘 匠魂3 mod中"钴矿石"的计分板]
# 解释："TC.cobalt_ore"是计分板名称(可自定义)，请尽量不要太简单以防计分板命名冲突，可以加适当的前缀(例如"TC."、"dp_vmn."等等)；"minecraft.mined"是挖掘的准则(挖掘可触发)；"tconstruct"是 匠魂3 mod的命名空间，"cobalt_ore"是钴矿石的ID，可以在mod官网、mcmod等模组平台查询，也可以游戏内使用 F3+H 组合键打开高级提示框或其他辅助模组查看方块ID；注意准则格式(冒号和小数点不要写混)
# 注意：1.请勿修改默认配置项已经存在的ID对应关系，这可能会使某些功能失效，默认配置请参阅 default.txt；2.不存在的准则(minecraft.mined:<模组的命名空间>.<方块ID>)会导致整个配置文件失效，若不确定，可以在游戏中使用命令建立一个该计分板测试查看能否建立成功；3.其他格式的代码不要删除或调换顺序

# 原版方块
function vmn:config/vanilla/scoreboard

scoreboard objectives add dp_vmn.diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add dp_vmn.iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add dp_vmn.gold_ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add dp_vmn.coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add dp_vmn.redstone_ore minecraft.mined:minecraft.redstone_ore
scoreboard objectives add dp_vmn.lapis_ore minecraft.mined:minecraft.lapis_ore
scoreboard objectives add dp_vmn.emerald_ore minecraft.mined:minecraft.emerald_ore
scoreboard objectives add dp_vmn.copper_ore minecraft.mined:minecraft.copper_ore
