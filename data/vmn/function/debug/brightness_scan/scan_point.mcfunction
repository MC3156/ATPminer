##生成扫描点

$summon minecraft:marker $(from_x) $(from_y) $(from_z) {Tags:["dp_vmn_SCAN"]}
scoreboard players reset sign1 CS
scoreboard players reset sign2 CS
scoreboard players reset sign3 CS
$forceload add $(boundary_x1) $(boundary_z1) $(boundary_x2) $(boundary_z2)
$fill $(boundary_x1) 319 $(boundary_z1) $(boundary_x2) 319 $(boundary_z2) stone replace #air
#execute as @e[type=minecraft:marker,tag=dp_vmn_SCAN,limit=1,sort=nearest] at @s run function vmn:debug/brightness_scan/3
