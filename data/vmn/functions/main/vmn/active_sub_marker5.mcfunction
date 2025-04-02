##活跃子标记 5

execute if score #block_value dp_vmn.temp matches -100..-2 run function vmn:config/combination/match_group
execute if score #block_value dp_vmn.temp matches 1.. run function vmn:config/block_matching
execute if score #temp_execute dp_vmn.temp matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_NO_TAG","dp_vmn_SUB"]}

#scoreboard players add #sub_spread_count dp_vmn.temp 1
