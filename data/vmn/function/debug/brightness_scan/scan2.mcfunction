##向上检查:找到第一个合适空间

scoreboard players reset sign3 CS
execute unless score sign3 CS matches 1 unless block ~ ~ ~ #vmn:torch_can_replace run scoreboard players set sign3 CS 1
execute unless score sign3 CS matches 1 if block ~ ~-1 ~ #vmn:torch_not_place_on run scoreboard players set sign3 CS 2
execute unless score sign3 CS matches 1 if block ~ ~-1 ~ #minecraft:slabs[type=bottom] run scoreboard players set sign3 CS 3
execute unless score sign3 CS matches 1 if block ~ ~-1 ~ #minecraft:stairs[half=bottom] run scoreboard players set sign3 CS 4
execute unless score sign3 CS matches 1 unless predicate vmn:location/light_0 run scoreboard players set sign3 CS 5
execute unless score sign3 CS matches 1 if block ~ ~ ~ #vmn:torch_marker run summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_SCAN_skip"]}
execute unless score sign3 CS matches 1 if block ~ ~ ~ #vmn:torch_marker run scoreboard players set sign3 CS 6

execute if block ~ ~ ~ #vmn:torch_can_replace unless block ~ ~-1 ~ #vmn:torch_not_place_on unless block ~ ~-1 ~ #minecraft:slabs[type=bottom] unless block ~ ~-1 ~ #minecraft:stairs[half=bottom] if predicate vmn:location/light_0 unless block ~ ~ ~ #vmn:torch_marker run return run function vmn:debug/brightness_scan/scan7
execute if score y CS >= y2 CS if score x CS >= x2 CS if score z CS >= z2 CS run return run function vmn:debug/brightness_scan/scan5 with storage dp_vmn:1 TEMP.range
execute if score y CS >= y2 CS if score x CS >= x2 CS run function vmn:debug/brightness_scan/scan4 with storage dp_vmn:1 TEMP.range
execute at @s if score y CS >= y2 CS run function vmn:debug/brightness_scan/scan3 with storage dp_vmn:1 TEMP.range

execute if entity @s if score sign3 CS matches 1..6 run tp @s ~ ~1 ~
execute if entity @s if score sign3 CS matches 1..6 run scoreboard players add y CS 1
execute if entity @s if score sign3 CS matches 1..7 at @s run function vmn:debug/brightness_scan/scan2
