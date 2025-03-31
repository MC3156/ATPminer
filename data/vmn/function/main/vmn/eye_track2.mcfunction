##递归视追锁定方块 2
# 检查再检查 (#twice_check分数为1再循环，分数为2出循环)

execute unless score #twice_check dp_vmn.temp matches 1..2 run scoreboard players add #eye_track_times dp_vmn.temp 1
scoreboard players add #twice_check dp_vmn.temp 1

execute positioned ~-1 ~-1 ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~-1 ~-1 ~ run function vmn:main/vmn/eye_track3
execute positioned ~-1 ~-1 ~1 run function vmn:main/vmn/eye_track3
execute positioned ~ ~-1 ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~ ~-1 ~ run function vmn:main/vmn/eye_track3
execute positioned ~ ~-1 ~1 run function vmn:main/vmn/eye_track3
execute positioned ~1 ~-1 ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~1 ~-1 ~ run function vmn:main/vmn/eye_track3
execute positioned ~1 ~-1 ~1 run function vmn:main/vmn/eye_track3
execute positioned ~-1 ~ ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~-1 ~ ~ run function vmn:main/vmn/eye_track3
execute positioned ~-1 ~ ~1 run function vmn:main/vmn/eye_track3
execute positioned ~ ~ ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~ ~ ~ run function vmn:main/vmn/eye_track3
execute positioned ~ ~ ~1 run function vmn:main/vmn/eye_track3
execute positioned ~1 ~ ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~1 ~ ~ run function vmn:main/vmn/eye_track3
execute positioned ~1 ~ ~1 run function vmn:main/vmn/eye_track3
execute positioned ~-1 ~1 ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~-1 ~1 ~ run function vmn:main/vmn/eye_track3
execute positioned ~-1 ~1 ~1 run function vmn:main/vmn/eye_track3
execute positioned ~ ~1 ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~ ~1 ~ run function vmn:main/vmn/eye_track3
execute positioned ~ ~1 ~1 run function vmn:main/vmn/eye_track3
execute positioned ~1 ~1 ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~1 ~1 ~ run function vmn:main/vmn/eye_track3
execute positioned ~1 ~1 ~1 run function vmn:main/vmn/eye_track3
execute positioned ~-1 ~2 ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~-1 ~2 ~ run function vmn:main/vmn/eye_track3
execute positioned ~-1 ~2 ~1 run function vmn:main/vmn/eye_track3
execute positioned ~ ~2 ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~ ~2 ~ run function vmn:main/vmn/eye_track3
execute positioned ~ ~2 ~1 run function vmn:main/vmn/eye_track3
execute positioned ~1 ~2 ~-1 run function vmn:main/vmn/eye_track3
execute positioned ~1 ~2 ~ run function vmn:main/vmn/eye_track3
execute positioned ~1 ~2 ~1 run function vmn:main/vmn/eye_track3

execute if score #twice_check dp_vmn.temp matches 2 run scoreboard players reset #twice_check dp_vmn.temp
