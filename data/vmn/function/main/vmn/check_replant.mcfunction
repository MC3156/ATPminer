##检查是否需要补种
# check_leaves:检查树叶(最多检查32处)  replant:标记泥土(最多32个)

execute unless score #check_leaves dp_vmn.temp matches 32.. run function vmn:main/vmn/check_replant2
execute if score @p[tag=dp_vmn_TEMP] dp_vmn.ATPminer.replant matches 1 unless score #replant dp_vmn.temp matches 0.. run scoreboard players set #replant dp_vmn.temp 0
execute if score @p[tag=dp_vmn_TEMP] dp_vmn.ATPminer.replant matches 1 if score #replant dp_vmn.temp matches 0..31 positioned ~ ~-1 ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #vmn:check_dirts unless entity @e[type=minecraft:marker,tag=dp_vmn_REPLANT,distance=..0.1] run function vmn:main/vmn/check_dirts
execute if score @p[tag=dp_vmn_TEMP] dp_vmn.ATPminer.replant matches 1 if score #replant dp_vmn.temp matches 0..31 positioned ~ ~-2 ~ align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #vmn:check_dirts if block ~ ~1 ~ #minecraft:air unless entity @e[type=minecraft:marker,tag=dp_vmn_REPLANT,distance=..0.1] run function vmn:main/vmn/check_dirts
