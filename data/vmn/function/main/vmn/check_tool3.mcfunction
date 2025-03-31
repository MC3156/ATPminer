##玩家检查工具耐久 3
# 该物品最大耐久

function vmn:main/versions/1.17-1.20.6/check_tool3
execute if predicate vmn:if_items/tool/wooden_tools run scoreboard players set #dfs_max_damage dp_vmn.temp 59
execute if predicate vmn:if_items/tool/stone_tools run scoreboard players set #dfs_max_damage dp_vmn.temp 131
execute if predicate vmn:if_items/tool/iron_tools run scoreboard players set #dfs_max_damage dp_vmn.temp 250
execute if predicate vmn:if_items/tool/golden_tools run scoreboard players set #dfs_max_damage dp_vmn.temp 32
execute if predicate vmn:if_items/tool/diamond_tools run scoreboard players set #dfs_max_damage dp_vmn.temp 1561
execute if predicate vmn:if_items/tool/netherite_tools run scoreboard players set #dfs_max_damage dp_vmn.temp 2031
execute if predicate vmn:if_items/tool/trident run scoreboard players set #dfs_max_damage dp_vmn.temp 250
execute if predicate vmn:if_items/tool/shears run scoreboard players set #dfs_max_damage dp_vmn.temp 238
