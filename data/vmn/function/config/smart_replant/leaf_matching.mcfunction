##智能补种+快速落叶 配置文件2 匹配
# 匹配原木ID和对应的树叶方块 (一种原木可以对应多种树叶ID，也可以是组ID对应树叶ID)
# 注意：最后几行代码请勿删除或顺序改动

execute if score #block_value dp_vmn.temp matches -3 if block ~ ~ ~ #vmn:check_leaves run function vmn:main/vmn/mark_leaf
execute if score #block_value dp_vmn.temp matches 9 if block ~ ~ ~ minecraft:oak_leaves run function vmn:main/vmn/mark_leaf
execute if score #block_value dp_vmn.temp matches 9 if block ~ ~ ~ minecraft:azalea_leaves run function vmn:main/vmn/mark_leaf
execute if score #block_value dp_vmn.temp matches 9 if block ~ ~ ~ minecraft:flowering_azalea_leaves run function vmn:main/vmn/mark_leaf
execute if score #block_value dp_vmn.temp matches 10 if block ~ ~ ~ minecraft:spruce_leaves run function vmn:main/vmn/mark_leaf
execute if score #block_value dp_vmn.temp matches 11 if block ~ ~ ~ minecraft:birch_leaves run function vmn:main/vmn/mark_leaf
execute if score #block_value dp_vmn.temp matches 12 if block ~ ~ ~ minecraft:jungle_leaves run function vmn:main/vmn/mark_leaf
execute if score #block_value dp_vmn.temp matches 13 if block ~ ~ ~ minecraft:acacia_leaves run function vmn:main/vmn/mark_leaf
execute if score #block_value dp_vmn.temp matches 14 if block ~ ~ ~ minecraft:dark_oak_leaves run function vmn:main/vmn/mark_leaf

function vmn:main/versions/1.17-1.20.6/leaf_matching
function vmn:main/versions/1.21.4-x/leaf_matching
execute if score #temp_leaf dp_vmn.temp matches 1 align xyz positioned ~.5 ~.5 ~.5 unless entity @e[type=minecraft:marker,tag=dp_vmn_LEAF,distance=..0.001] run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_ACTIVE_2","dp_vmn_LEAF"]}
execute if score #temp_leaf dp_vmn.temp matches 1 run advancement grant @p[tag=dp_vmn_TEMP] only vmn:tutorial/fast_rot
