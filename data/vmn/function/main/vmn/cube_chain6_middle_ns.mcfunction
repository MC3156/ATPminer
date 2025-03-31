##矩形挖掘 6
# 中 南北 东西宽

execute if score @s dp_vmn.ATPminer_config.width matches 1.. if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp positioned ~ ~ ~ run function vmn:main/vmn/cube_chain7
execute if score @s dp_vmn.ATPminer_config.width matches 2.. if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp positioned ~1 ~ ~ run function vmn:main/vmn/cube_chain7
execute if score @s dp_vmn.ATPminer_config.width matches 2.. if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp positioned ~-1 ~ ~ run function vmn:main/vmn/cube_chain7
execute if score @s dp_vmn.ATPminer_config.width matches 3.. if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp positioned ~2 ~ ~ run function vmn:main/vmn/cube_chain7
execute if score @s dp_vmn.ATPminer_config.width matches 3.. if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp positioned ~-2 ~ ~ run function vmn:main/vmn/cube_chain7
execute if score @s dp_vmn.ATPminer_config.width matches 4.. if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp positioned ~3 ~ ~ run function vmn:main/vmn/cube_chain7
execute if score @s dp_vmn.ATPminer_config.width matches 4.. if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp positioned ~-3 ~ ~ run function vmn:main/vmn/cube_chain7
execute if score @s dp_vmn.ATPminer_config.width matches 5.. if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp positioned ~4 ~ ~ run function vmn:main/vmn/cube_chain7
execute if score @s dp_vmn.ATPminer_config.width matches 5.. if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp positioned ~-4 ~ ~ run function vmn:main/vmn/cube_chain7
