# 9

scoreboard players remove TRA CS.a 1
execute unless score TRA CS.a matches 0.. align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:firework_rocket ~ ~ ~ {Tags:["CSS"]}
execute unless score TRA CS.a matches 0.. run scoreboard players reset TRA CS.a
execute if score TRA CS.a matches 0.. positioned ^ ^ ^.05 run function vmn:debug/9
