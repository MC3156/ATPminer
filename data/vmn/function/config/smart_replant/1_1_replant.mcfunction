##1*1自动补种 配置文件
# 参考格式：execute if score #block_value dp_vmn.temp matches <唯一ID值> run setblock ~ ~1 ~ <树苗或种子的命名空间ID> destroy
# 解释：<唯一ID值>是原木方块的对应ID，<树苗或种子的命名空间ID>是树苗英文ID，例如minecraft:oak_sapling是原版橡树树苗
# 注意：前几行代码不需要动

playsound minecraft:block.grass.place block @a ~ ~ ~ 1 1 1
kill @s
function vmn:main/versions/1.17-1.20.6/smart_replant/1_1_replant

execute if score #block_value dp_vmn.temp matches 9 run setblock ~ ~1 ~ minecraft:oak_sapling destroy
execute if score #block_value dp_vmn.temp matches 10 run setblock ~ ~1 ~ minecraft:spruce_sapling destroy
execute if score #block_value dp_vmn.temp matches 11 run setblock ~ ~1 ~ minecraft:birch_sapling destroy
execute if score #block_value dp_vmn.temp matches 12 run setblock ~ ~1 ~ minecraft:jungle_sapling destroy
execute if score #block_value dp_vmn.temp matches 13 run setblock ~ ~1 ~ minecraft:acacia_sapling destroy
