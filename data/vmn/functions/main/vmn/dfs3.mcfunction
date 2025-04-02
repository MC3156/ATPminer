##深度搜索 3

execute if score #count dp_vmn.temp > #value_dfs_search dp_vmn.global_setting run scoreboard players set #dfs_state dp_vmn.temp 1
execute unless score #dfs_state dp_vmn.temp matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_SUB","dp_vmn_ACTIVE_1","dp_vmn_NO_TAG"]}
execute unless score #dfs_state dp_vmn.temp matches 1 run scoreboard players add #count dp_vmn.temp 1
execute unless score #dfs_state dp_vmn.temp matches 1 run function vmn:main/vmn/dfs4
