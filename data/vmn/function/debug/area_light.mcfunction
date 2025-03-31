##执行区域照亮
# CS计分板：需要参数 西北下-x1y1z1 东南上-x2y2z2 478 63 44 526 75 92
# 单步测试：344 62 50 - 346 71 52

data remove storage dp_vmn:1 TEMP.range

scoreboard players reset #test_count dp_vmn.temp
execute if score x1 CS matches -2147483648..2147483647 run scoreboard players add #test_count dp_vmn.temp 1
execute if score y1 CS matches -2147483648..2147483647 run scoreboard players add #test_count dp_vmn.temp 1
execute if score z1 CS matches -2147483648..2147483647 run scoreboard players add #test_count dp_vmn.temp 1
execute if score x2 CS matches -2147483648..2147483647 run scoreboard players add #test_count dp_vmn.temp 1
execute if score y2 CS matches -2147483648..2147483647 run scoreboard players add #test_count dp_vmn.temp 1
execute if score z2 CS matches -2147483648..2147483647 run scoreboard players add #test_count dp_vmn.temp 1
execute if score #test_count dp_vmn.temp matches ..5 run tellraw @s ["§c参数缺少!§e(需要x1 y1 z1 x2 y2 z2在CS的分数作为两个标记点)§r"]
execute if score #test_count dp_vmn.temp matches ..5 run return run scoreboard players reset #test_count dp_vmn.temp
execute if score x1 CS > x2 CS run scoreboard players operation x1 CS >< x2 CS
execute if score y1 CS > y2 CS run scoreboard players operation y1 CS >< y2 CS
execute if score z1 CS > z2 CS run scoreboard players operation z1 CS >< z2 CS
scoreboard players operation x3 CS = x1 CS
scoreboard players operation z3 CS = z1 CS
scoreboard players operation x4 CS = x2 CS
scoreboard players operation z4 CS = z2 CS
scoreboard players remove x3 CS 15
scoreboard players remove z3 CS 15
scoreboard players add x4 CS 15
scoreboard players add z4 CS 15
execute store result storage dp_vmn:1 TEMP.range.from_x double 1 run scoreboard players get x1 CS
execute store result storage dp_vmn:1 TEMP.range.from_y double 1 run scoreboard players get y1 CS
execute store result storage dp_vmn:1 TEMP.range.from_z double 1 run scoreboard players get z1 CS
execute store result storage dp_vmn:1 TEMP.range.to_x double 1 run scoreboard players get x2 CS
execute store result storage dp_vmn:1 TEMP.range.to_y double 1 run scoreboard players get y2 CS
execute store result storage dp_vmn:1 TEMP.range.to_z double 1 run scoreboard players get z2 CS
execute store result storage dp_vmn:1 TEMP.range.boundary_x1 double 1 run scoreboard players get x3 CS
execute store result storage dp_vmn:1 TEMP.range.boundary_z1 double 1 run scoreboard players get z3 CS
execute store result storage dp_vmn:1 TEMP.range.boundary_x2 double 1 run scoreboard players get x4 CS
execute store result storage dp_vmn:1 TEMP.range.boundary_z2 double 1 run scoreboard players get z4 CS
scoreboard players operation x CS = x1 CS
scoreboard players operation y CS = y1 CS
scoreboard players operation z CS = z1 CS
scoreboard players reset torch_count CS
scoreboard players operation area CS = x2 CS
scoreboard players operation area CS -= x1 CS
scoreboard players operation area2 CS = z2 CS
scoreboard players operation area2 CS -= z1 CS
scoreboard players add area CS 1
scoreboard players add area2 CS 1
scoreboard players operation area CS *= area2 CS
function vmn:debug/brightness_scan/scan_point with storage dp_vmn:1 TEMP.range
#data remove storage dp_vmn:1 TEMP.range
scoreboard players reset area2 CS
scoreboard players reset x3 CS
scoreboard players reset x4 CS
scoreboard players reset z3 CS
scoreboard players reset z4 CS
