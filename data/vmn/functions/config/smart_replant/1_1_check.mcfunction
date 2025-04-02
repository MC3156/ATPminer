##1*1种植模式检查 配置文件
# 参考格式：
# execute if score #block_value dp_vmn.temp matches <唯一ID值> store result score #sapling dp_vmn.temp run clear @p[tag=dp_vmn_TEMP] <树苗或种子的命名空间ID> 0
# execute if score #block_value dp_vmn.temp matches <唯一ID值> if score #sapling dp_vmn.temp matches 1.. run clear @p[tag=dp_vmn_TEMP] <树苗或种子的命名空间ID> 1
# execute if score #block_value dp_vmn.temp matches <唯一ID值> if score #sapling dp_vmn.temp matches 1.. run tag @s add dp_vmn_SAPLING
# 解释：<唯一ID值>是原木的ID，<树苗或种子的命名空间ID>是该树木的树苗的英文ID，例如minecraft:oak_sapling是原版橡树树苗

# 版本兼容(勿动)
function vmn:main/versions/1.17-1.20.6/smart_replant/1_1_check

# 橡树
execute if score #block_value dp_vmn.temp matches 9 store result score #sapling dp_vmn.temp run clear @p[tag=dp_vmn_TEMP] minecraft:oak_sapling 0
execute if score #block_value dp_vmn.temp matches 9 if score #sapling dp_vmn.temp matches 1.. run clear @p[tag=dp_vmn_TEMP] minecraft:oak_sapling 1
execute if score #block_value dp_vmn.temp matches 9 if score #sapling dp_vmn.temp matches 1.. run tag @s add dp_vmn_SAPLING
# 云杉树
execute if score #block_value dp_vmn.temp matches 10 store result score #sapling dp_vmn.temp run clear @p[tag=dp_vmn_TEMP] minecraft:spruce_sapling 0
execute if score #block_value dp_vmn.temp matches 10 if score #sapling dp_vmn.temp matches 1.. run clear @p[tag=dp_vmn_TEMP] minecraft:spruce_sapling 1
execute if score #block_value dp_vmn.temp matches 10 if score #sapling dp_vmn.temp matches 1.. run tag @s add dp_vmn_SAPLING
# 白桦树
execute if score #block_value dp_vmn.temp matches 11 store result score #sapling dp_vmn.temp run clear @p[tag=dp_vmn_TEMP] minecraft:birch_sapling 0
execute if score #block_value dp_vmn.temp matches 11 if score #sapling dp_vmn.temp matches 1.. run clear @p[tag=dp_vmn_TEMP] minecraft:birch_sapling 1
execute if score #block_value dp_vmn.temp matches 11 if score #sapling dp_vmn.temp matches 1.. run tag @s add dp_vmn_SAPLING
# 丛林树
execute if score #block_value dp_vmn.temp matches 12 store result score #sapling dp_vmn.temp run clear @p[tag=dp_vmn_TEMP] minecraft:jungle_sapling 0
execute if score #block_value dp_vmn.temp matches 12 if score #sapling dp_vmn.temp matches 1.. run clear @p[tag=dp_vmn_TEMP] minecraft:jungle_sapling 1
execute if score #block_value dp_vmn.temp matches 12 if score #sapling dp_vmn.temp matches 1.. run tag @s add dp_vmn_SAPLING
# 金合欢树
execute if score #block_value dp_vmn.temp matches 13 store result score #sapling dp_vmn.temp run clear @p[tag=dp_vmn_TEMP] minecraft:acacia_sapling 0
execute if score #block_value dp_vmn.temp matches 13 if score #sapling dp_vmn.temp matches 1.. run clear @p[tag=dp_vmn_TEMP] minecraft:acacia_sapling 1
execute if score #block_value dp_vmn.temp matches 13 if score #sapling dp_vmn.temp matches 1.. run tag @s add dp_vmn_SAPLING
