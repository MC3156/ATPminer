##位置移动:换行(from_x from_y z+1)

scoreboard players set sign3 CS 7
$tp @s $(from_x) $(from_y) ~1
scoreboard players add z CS 1
scoreboard players operation y CS = y1 CS
scoreboard players operation x CS = x1 CS
scoreboard players add scan_prograss CS 1
