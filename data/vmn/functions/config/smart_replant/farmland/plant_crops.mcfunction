##成熟农作物 智能补种 配置文件4
# 参考格式：execute if data entity @s Item{id:"<物品命名空间ID>"} run setblock ~ ~ ~ <农作物命名空间ID> replace
# 解释：<物品命名空间ID>是种子物品的命名空间ID，<农作物命名空间ID>即方块命名空间ID，获取方式参考其他配置文件说明
# 补充：火把花和瓶子草不会掉落种子，因此torchflower_seeds被注释掉了

execute if data entity @s Item{id:"minecraft:wheat_seeds"} run setblock ~ ~ ~ minecraft:wheat replace
execute if data entity @s Item{id:"minecraft:carrot"} run setblock ~ ~ ~ minecraft:carrots replace
execute if data entity @s Item{id:"minecraft:potato"} run setblock ~ ~ ~ minecraft:potatoes replace
#execute if data entity @s Item{id:"minecraft:pitcher_pod"} run setblock ~ ~ ~ minecraft:pitcher_crop replace
#execute if data entity @s Item{id:"minecraft:torchflower_seeds"} run setblock ~ ~ ~ minecraft:torchflower_crop
execute if data entity @s Item{id:"minecraft:beetroot_seeds"} run setblock ~ ~ ~ minecraft:beetroots replace
