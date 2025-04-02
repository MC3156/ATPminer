##匹配玩家手持工具及其耐久

execute if score #temp_version dp_vmn.temp matches 3819.. run function vmn:main/versions/1.17-1.20.6/all_components/match_tool_1.20.5

execute store success score #match_tool dp_vmn.temp run data modify entity @s equipment.mainhand set from entity @p[tag=dp_vmn_TEMP] SelectedItem
execute if score #match_tool dp_vmn.temp matches 1 run function vmn:main/vmn/disable_entity
scoreboard players reset #match_tool dp_vmn.temp

function vmn:main/vmn/check_tool
