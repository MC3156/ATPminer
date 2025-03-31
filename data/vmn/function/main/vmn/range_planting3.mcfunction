##范围种植 3
# 直线模式

execute as @p[tag=dp_vmn_TEMP] if score @s dp_vmn.rotation0 matches 46..135 if score #temp dp_vmn.temp < #count dp_vmn.temp run function vmn:main/vmn/range_planting3_west
execute as @p[tag=dp_vmn_TEMP] if score @s dp_vmn.rotation0 matches -44..45 if score #temp dp_vmn.temp < #count dp_vmn.temp run function vmn:main/vmn/range_planting3_south
execute as @p[tag=dp_vmn_TEMP] if score @s dp_vmn.rotation0 matches -134..-45 if score #temp dp_vmn.temp < #count dp_vmn.temp run function vmn:main/vmn/range_planting3_east
execute as @p[tag=dp_vmn_TEMP] if score @s dp_vmn.rotation0 matches -180..-135 if score #temp dp_vmn.temp < #count dp_vmn.temp run function vmn:main/vmn/range_planting3_north
execute as @p[tag=dp_vmn_TEMP] if score @s dp_vmn.rotation0 matches 136..180 if score #temp dp_vmn.temp < #count dp_vmn.temp run function vmn:main/vmn/range_planting3_north
