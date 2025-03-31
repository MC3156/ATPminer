##结束扫描

execute if entity @e[type=minecraft:marker,tag=dp_vmn_SCAN_skip] as @e[type=minecraft:marker,tag=dp_vmn_SCAN_skip] run function vmn:debug/brightness_scan/scan6
tellraw @a ["§a扫描完毕，安置的火把数量：§r",{"score":{"name":"torch_count","objective":"CS"},"color":"gold"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5 1
scoreboard players reset x CS
scoreboard players reset y CS
scoreboard players reset z CS
scoreboard players reset sign2 CS
scoreboard players reset sign3 CS
scoreboard players reset scan_prograss CS
scoreboard players reset area CS
scoreboard players reset torch_count CS
$fill $(boundary_x1) 319 $(boundary_z1) $(boundary_x2) 319 $(boundary_z2) air replace stone
$forceload remove $(boundary_x1) $(boundary_z1) $(boundary_x2) $(boundary_z2)
kill @s
