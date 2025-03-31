##种子数量处理+种植

execute if score #temp_version dp_vmn.temp matches 3819.. run function vmn:main/versions/1.17-1.20.6/all_components/seed_count_1.20.5
execute if block ~ ~ ~ #minecraft:air if score #temp_scount dp_vmn.temp matches 1 run kill @s
execute if block ~ ~ ~ #minecraft:air if block ~ ~-1 ~ minecraft:farmland run function vmn:config/smart_replant/farmland/plant_crops
advancement grant @p[tag=dp_vmn_TEMP] only vmn:tutorial/smart_replanting
scoreboard players reset #temp_scount dp_vmn.temp
