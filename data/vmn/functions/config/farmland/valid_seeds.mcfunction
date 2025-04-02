##种子表 配置文件1 [添加一个支持范围种植的种子需要种子ID和农作物方块ID，配置1~5五个配置文件]
# 参考格式：scoreboard objectives add <计分板名称> minecraft.used:<物品命名空间ID>
# 示例：scoreboard objectives add dp_vmn.used.wheat_seeds minecraft.used:minecraft.wheat_seeds [添加一个名为dp_vmn.used.wheat_seeds，准则是使用(种植)原版中"小麦种子"的计分板]

function vmn:main/versions/1.17-1.20.6/valid_seeds
scoreboard objectives add dp_vmn.used.wheat_seeds minecraft.used:minecraft.wheat_seeds
scoreboard objectives add dp_vmn.used.carrot minecraft.used:minecraft.carrot
scoreboard objectives add dp_vmn.used.potato minecraft.used:minecraft.potato
scoreboard objectives add dp_vmn.used.pumpkin_seeds minecraft.used:minecraft.pumpkin_seeds
scoreboard objectives add dp_vmn.used.melon_seeds minecraft.used:minecraft.melon_seeds
scoreboard objectives add dp_vmn.used.beetroot_seeds minecraft.used:minecraft.beetroot_seeds
