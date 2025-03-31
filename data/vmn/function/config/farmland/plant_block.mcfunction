##种子-作物方块 对应 配置文件4
# 参考格式：execute if score @s <计分板名称> matches 1.. run setblock ~ ~1 ~ <作物方块的命名空间ID> replace
# 解释：<计分板名称>是valid_seeds文件中定义的计分板，<作物方块的命名空间ID>可以通过F3查看准星对准的农作物方块ID，或使用模组或Wiki查询

function vmn:main/versions/1.17-1.20.6/plant_block
execute if score @s dp_vmn.used.beetroot_seeds matches 1.. run setblock ~ ~1 ~ minecraft:beetroots replace
execute if score @s dp_vmn.used.carrot matches 1.. run setblock ~ ~1 ~ minecraft:carrots replace
execute if score @s dp_vmn.used.melon_seeds matches 1.. run setblock ~ ~1 ~ minecraft:melon_stem replace
execute if score @s dp_vmn.used.potato matches 1.. run setblock ~ ~1 ~ minecraft:potatoes replace
execute if score @s dp_vmn.used.pumpkin_seeds matches 1.. run setblock ~ ~1 ~ minecraft:pumpkin_stem replace
execute if score @s dp_vmn.used.wheat_seeds matches 1.. run setblock ~ ~1 ~ minecraft:wheat replace
