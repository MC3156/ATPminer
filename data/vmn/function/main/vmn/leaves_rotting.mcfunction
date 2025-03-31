##快速树叶腐烂 (LEAF需要延后TICK等待方块状态更新)
# ACTIVE_2

execute unless score #global.fast_rot dp_vmn.global_setting matches 1..2 run kill @s
execute unless entity @e[tag=dp_vmn_LEAF] if block ~ ~ ~ #vmn:check_leaves[distance=7,persistent=false] run function vmn:main/vmn/leaves_rotting2
execute if entity @e[tag=dp_vmn_LEAF] unless score @s dp_vmn.persistance matches 6.. run scoreboard players add @s dp_vmn.persistance 1
execute if entity @e[tag=dp_vmn_LEAF] if score @s dp_vmn.persistance matches 6 if block ~ ~ ~ #vmn:check_leaves[distance=7,persistent=false] run function vmn:main/vmn/leaves_rotting2

execute if entity @e[tag=dp_vmn_LEAF] if score @s dp_vmn.persistance matches 6.. run kill @s
execute unless entity @e[tag=dp_vmn_LEAF] run kill @s
