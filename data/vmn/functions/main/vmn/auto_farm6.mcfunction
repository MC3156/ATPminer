##自动连锁耕地 6
# 直线模式 (方向性)

execute if score @p[tag=dp_vmn_TEMP] dp_vmn.rotation0 matches 46..135 if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp run function vmn:main/vmn/auto_farm6_west
execute if score @p[tag=dp_vmn_TEMP] dp_vmn.rotation0 matches -44..45 if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp run function vmn:main/vmn/auto_farm6_south
execute if score @p[tag=dp_vmn_TEMP] dp_vmn.rotation0 matches -134..-45 if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp run function vmn:main/vmn/auto_farm6_east
execute if score @p[tag=dp_vmn_TEMP] dp_vmn.rotation0 matches -180..-135 if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp run function vmn:main/vmn/auto_farm6_north
execute if score @p[tag=dp_vmn_TEMP] dp_vmn.rotation0 matches 136..180 if score #count dp_vmn.temp < #dfs_expected_count dp_vmn.temp run function vmn:main/vmn/auto_farm6_north

function vmn:main/vmn/dfs_update_tool
