##成熟农作物组 配置文件1 ID:-7 [用于识别连锁成熟农作物(并补种)，共1~4四个配置文件]
# 参考格式：execute if block ~ ~ ~ <农作物命名空间ID>[<农作物方块状态>] run scoreboard players set #temp_execute dp_vmn.temp 1
# 示例：execute if block ~ ~ ~ minecraft:wheat[age=7] run scoreboard players set #temp_execute dp_vmn.temp 1
# 解释：<农作物命名空间ID>即方块命名空间ID，获取方式参考其他配置文件说明，[<农作物方块状态>]是农作物成熟时的方块状态，可以使用F3、模组、Wiki等资料查询

function vmn:main/versions/1.17-1.20.6/mature_crops
execute if block ~ ~ ~ minecraft:wheat[age=7] run scoreboard players set #temp_execute dp_vmn.temp 1
execute if block ~ ~ ~ minecraft:beetroots[age=3] run scoreboard players set #temp_execute dp_vmn.temp 1
execute if block ~ ~ ~ minecraft:carrots[age=7] run scoreboard players set #temp_execute dp_vmn.temp 1
execute if block ~ ~ ~ minecraft:potatoes[age=7] run scoreboard players set #temp_execute dp_vmn.temp 1
