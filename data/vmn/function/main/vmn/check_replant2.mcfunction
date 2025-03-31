##检查是否需要补种 2
# 检查树叶

scoreboard players reset #temp_leaf dp_vmn.temp

execute positioned ~-1 ~-1 ~-1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~-1 ~-1 ~ unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~-1 ~-1 ~1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~-1 ~ ~-1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~-1 ~ ~ unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~-1 ~ ~1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~-1 ~1 ~-1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~-1 ~1 ~ unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~-1 ~1 ~1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching

execute positioned ~ ~-1 ~-1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~ ~-1 ~ unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~ ~-1 ~1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~ ~ ~-1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~ ~ ~1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~ ~1 ~-1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~ ~1 ~ unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~ ~1 ~1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching

execute positioned ~1 ~-1 ~-1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~1 ~-1 ~ unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~1 ~-1 ~1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~1 ~ ~-1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~1 ~ ~ unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~1 ~ ~1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~1 ~1 ~-1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~1 ~1 ~ unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
execute positioned ~1 ~1 ~1 unless score #temp_leaf dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:check_leaves[persistent=false] run function vmn:config/smart_replant/leaf_matching
