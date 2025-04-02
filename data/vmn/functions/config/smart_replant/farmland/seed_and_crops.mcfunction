##成熟农作物 智能补种 配置文件3
# 参考格式：execute if data entity @s Item{id:"<物品命名空间ID>"} run function vmn:main/vmn/seed_count
# 解释：<物品命名空间ID>是种子物品的命名空间ID，例如minecraft:wheat_seeds是原版的小麦种子
# 补充：火把花不会掉落种子，因此torchflower_seeds被注释掉了

execute if data entity @s Item{id:"minecraft:wheat_seeds"} run function vmn:main/vmn/seed_count
execute if data entity @s Item{id:"minecraft:carrot"} run function vmn:main/vmn/seed_count
execute if data entity @s Item{id:"minecraft:potato"} run function vmn:main/vmn/seed_count
#execute if data entity @s Item{id:"minecraft:pitcher_pod"} run function vmn:main/vmn/seed_count
#execute if data entity @s Item{id:"minecraft:torchflower_seeds"} run function vmn:main/vmn/seed_count
execute if data entity @s Item{id:"minecraft:beetroot_seeds"} run function vmn:main/vmn/seed_count
