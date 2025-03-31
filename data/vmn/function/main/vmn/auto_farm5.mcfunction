##自动连锁耕地 5
# 耕地尝试 (检测砂土+缠根泥土)

scoreboard players add #count dp_vmn.temp 1
execute if block ~ ~ ~ minecraft:coarse_dirt run scoreboard players add #count dp_vmn.temp 1
execute if block ~ ~ ~ minecraft:rooted_dirt run scoreboard players add #count dp_vmn.temp 1
execute if block ~ ~ ~ minecraft:rooted_dirt run loot spawn ~ ~1 ~ loot vmn:auto_farm/rooted_dirt
setblock ~ ~ ~ minecraft:farmland replace
