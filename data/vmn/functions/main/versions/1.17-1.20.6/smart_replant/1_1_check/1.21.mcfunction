##1*1种植模式检查 1.21

# 樱花树
execute if score #block_value dp_vmn.temp matches 15 store result score #sapling dp_vmn.temp run clear @p[tag=dp_vmn_TEMP] minecraft:cherry_sapling 0
execute if score #block_value dp_vmn.temp matches 15 if score #sapling dp_vmn.temp matches 1.. run clear @p[tag=dp_vmn_TEMP] minecraft:cherry_sapling 1
execute if score #block_value dp_vmn.temp matches 15 if score #sapling dp_vmn.temp matches 1.. run tag @s add dp_vmn_SAPLING
