##深度搜索 预期最大数量
# 公式：( max_damage - damage ) * unbreaking / damage_per_block

scoreboard players operation #dfs_expected_count dp_vmn.temp = #dfs_max_damage dp_vmn.temp
scoreboard players operation #dfs_expected_count dp_vmn.temp -= #dfs_damage dp_vmn.temp
scoreboard players operation #dfs_expected_count dp_vmn.temp *= #dfs_unbreaking dp_vmn.temp
scoreboard players operation #dfs_expected_count dp_vmn.temp /= #damage_per_block dp_vmn.temp
