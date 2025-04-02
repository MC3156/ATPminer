##2*2种植模式检查 配置文件2 [2*2有两种检测方式]
# 参考格式：
# execute if score #block_value dp_vmn.temp matches <唯一ID值> if block ~1 ~1 ~ <方块命名空间ID> if block ~ ~1 ~1 <方块命名空间ID> store result score #sapling dp_vmn.temp run clear @p[tag=dp_vmn_TEMP] <树苗或种子的命名空间ID> 0
# execute if score #block_value dp_vmn.temp matches <唯一ID值> if block ~1 ~1 ~ <方块命名空间ID> if block ~ ~1 ~1 <方块命名空间ID> if score #sapling dp_vmn.temp matches 4.. run clear @p[tag=dp_vmn_TEMP] <树苗或种子的命名空间ID> 4
# execute if score #block_value dp_vmn.temp matches <唯一ID值> if block ~1 ~1 ~ <方块命名空间ID> if block ~ ~1 ~1 <方块命名空间ID> if score #sapling dp_vmn.temp matches 4.. run tag @s add dp_vmn_GIANT
# execute if score #block_value dp_vmn.temp matches <唯一ID值> if block ~1 ~1 ~ <方块命名空间ID> if block ~ ~1 ~1 <方块命名空间ID> if score #sapling dp_vmn.temp matches 4.. run tag @s add dp_vmn_SAPLING
# 解释：<唯一ID值>是原木的ID，<方块命名空间ID>即原木的ID，例如minecraft:spruce_log是云杉原木，<树苗或种子的命名空间ID>是该树木的树苗的英文ID，例如minecraft:spruce_sapling是原版云杉树苗
# 注意：2*2检查的优先级高于1*1检查，因此不支持2*2联排种植的树苗不要加入该配置文件

# 云杉树
execute if score #block_value dp_vmn.temp matches 10 if block ~1 ~1 ~ minecraft:spruce_log if block ~ ~1 ~1 minecraft:spruce_log store result score #sapling dp_vmn.temp run clear @p[tag=dp_vmn_TEMP] minecraft:spruce_sapling 0
execute if score #block_value dp_vmn.temp matches 10 if block ~1 ~1 ~ minecraft:spruce_log if block ~ ~1 ~1 minecraft:spruce_log if score #sapling dp_vmn.temp matches 4.. run clear @p[tag=dp_vmn_TEMP] minecraft:spruce_sapling 4
execute if score #block_value dp_vmn.temp matches 10 if block ~1 ~1 ~ minecraft:spruce_log if block ~ ~1 ~1 minecraft:spruce_log if score #sapling dp_vmn.temp matches 4.. run tag @s add dp_vmn_GIANT
execute if score #block_value dp_vmn.temp matches 10 if block ~1 ~1 ~ minecraft:spruce_log if block ~ ~1 ~1 minecraft:spruce_log if score #sapling dp_vmn.temp matches 4.. run tag @s add dp_vmn_SAPLING
# 丛林树
execute if score #block_value dp_vmn.temp matches 12 if block ~1 ~1 ~ minecraft:jungle_log if block ~ ~1 ~1 minecraft:jungle_log store result score #sapling dp_vmn.temp run clear @p[tag=dp_vmn_TEMP] minecraft:jungle_sapling 0
execute if score #block_value dp_vmn.temp matches 12 if block ~1 ~1 ~ minecraft:jungle_log if block ~ ~1 ~1 minecraft:jungle_log if score #sapling dp_vmn.temp matches 4.. run clear @p[tag=dp_vmn_TEMP] minecraft:jungle_sapling 4
execute if score #block_value dp_vmn.temp matches 12 if block ~1 ~1 ~ minecraft:jungle_log if block ~ ~1 ~1 minecraft:jungle_log if score #sapling dp_vmn.temp matches 4.. run tag @s add dp_vmn_GIANT
execute if score #block_value dp_vmn.temp matches 12 if block ~1 ~1 ~ minecraft:jungle_log if block ~ ~1 ~1 minecraft:jungle_log if score #sapling dp_vmn.temp matches 4.. run tag @s add dp_vmn_SAPLING
# 深色橡树
execute if score #block_value dp_vmn.temp matches 14 if block ~1 ~1 ~ minecraft:dark_oak_log if block ~ ~1 ~1 minecraft:dark_oak_log store result score #sapling dp_vmn.temp run clear @p[tag=dp_vmn_TEMP] minecraft:dark_oak_sapling 0
execute if score #block_value dp_vmn.temp matches 14 if block ~1 ~1 ~ minecraft:dark_oak_log if block ~ ~1 ~1 minecraft:dark_oak_log if score #sapling dp_vmn.temp matches 4.. run clear @p[tag=dp_vmn_TEMP] minecraft:dark_oak_sapling 4
execute if score #block_value dp_vmn.temp matches 14 if block ~1 ~1 ~ minecraft:dark_oak_log if block ~ ~1 ~1 minecraft:dark_oak_log if score #sapling dp_vmn.temp matches 4.. run tag @s add dp_vmn_GIANT
execute if score #block_value dp_vmn.temp matches 14 if block ~1 ~1 ~ minecraft:dark_oak_log if block ~ ~1 ~1 minecraft:dark_oak_log if score #sapling dp_vmn.temp matches 4.. run tag @s add dp_vmn_SAPLING
