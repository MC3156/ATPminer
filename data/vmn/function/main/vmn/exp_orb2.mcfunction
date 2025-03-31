##经验球 2
# 递归生成

execute if score #exp_orb_value dp_vmn.temp matches 32767.. run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:32767}
execute if score #exp_orb_value dp_vmn.temp matches 32767.. run scoreboard players remove #exp_orb_value dp_vmn.temp 32767
execute if score #exp_orb_value dp_vmn.temp matches 2477..32766 run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:2477}
execute if score #exp_orb_value dp_vmn.temp matches 2477..32766 run scoreboard players remove #exp_orb_value dp_vmn.temp 2477
execute if score #exp_orb_value dp_vmn.temp matches 1237..2476 run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:1237}
execute if score #exp_orb_value dp_vmn.temp matches 1237..2476 run scoreboard players remove #exp_orb_value dp_vmn.temp 1237
execute if score #exp_orb_value dp_vmn.temp matches 617..1236 run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:617}
execute if score #exp_orb_value dp_vmn.temp matches 617..1236 run scoreboard players remove #exp_orb_value dp_vmn.temp 617
execute if score #exp_orb_value dp_vmn.temp matches 307..616 run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:307}
execute if score #exp_orb_value dp_vmn.temp matches 307..616 run scoreboard players remove #exp_orb_value dp_vmn.temp 307
execute if score #exp_orb_value dp_vmn.temp matches 149..306 run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:149}
execute if score #exp_orb_value dp_vmn.temp matches 149..306 run scoreboard players remove #exp_orb_value dp_vmn.temp 149
execute if score #exp_orb_value dp_vmn.temp matches 73..148 run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:73}
execute if score #exp_orb_value dp_vmn.temp matches 73..148 run scoreboard players remove #exp_orb_value dp_vmn.temp 73
execute if score #exp_orb_value dp_vmn.temp matches 37..72 run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:37}
execute if score #exp_orb_value dp_vmn.temp matches 37..72 run scoreboard players remove #exp_orb_value dp_vmn.temp 37
execute if score #exp_orb_value dp_vmn.temp matches 17..36 run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:17}
execute if score #exp_orb_value dp_vmn.temp matches 17..36 run scoreboard players remove #exp_orb_value dp_vmn.temp 17
execute if score #exp_orb_value dp_vmn.temp matches 7..16 run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:7}
execute if score #exp_orb_value dp_vmn.temp matches 7..16 run scoreboard players remove #exp_orb_value dp_vmn.temp 7
execute if score #exp_orb_value dp_vmn.temp matches 3..6 run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:3}
execute if score #exp_orb_value dp_vmn.temp matches 3..6 run scoreboard players remove #exp_orb_value dp_vmn.temp 3
execute if score #exp_orb_value dp_vmn.temp matches 1..2 run summon minecraft:experience_orb ~ ~ ~ {Count:1,Value:1}
execute if score #exp_orb_value dp_vmn.temp matches 1..2 run scoreboard players remove #exp_orb_value dp_vmn.temp 1
execute if score #exp_orb_value dp_vmn.temp matches 1.. run function vmn:main/vmn/exp_orb2
