##2*2自动补种 配置文件
# 参考格式：execute if score #block_value dp_vmn.temp matches <唯一ID值> run fill ~ ~1 ~ ~1 ~1 ~1 <树苗或种子的命名空间ID> destroy
# 解释：<唯一ID值>是原木方块的对应ID，<树苗或种子的命名空间ID>是树苗英文ID，例如minecraft:spruce_sapling是原版云杉树苗
# 注意：前两行代码不需要动

playsound minecraft:block.grass.place block @a ~ ~ ~ 1 1 1
kill @s

execute if score #block_value dp_vmn.temp matches 10 run fill ~ ~1 ~ ~1 ~1 ~1 minecraft:spruce_sapling destroy
execute if score #block_value dp_vmn.temp matches 12 run fill ~ ~1 ~ ~1 ~1 ~1 minecraft:jungle_sapling destroy
execute if score #block_value dp_vmn.temp matches 14 run fill ~ ~1 ~ ~1 ~1 ~1 minecraft:dark_oak_sapling destroy
