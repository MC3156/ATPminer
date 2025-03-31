##位置移动:x+1

scoreboard players set sign3 CS 7
$tp @s ~1 $(from_y) ~
scoreboard players add x CS 1
scoreboard players operation y CS = y1 CS
scoreboard players add scan_prograss CS 1
$execute if block ~ 319 ~ air run fill $(boundary_x1) 319 $(boundary_z1) $(boundary_x2) 319 $(boundary_z2) stone replace #air
