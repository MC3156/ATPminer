##矩形挖掘

scoreboard players remove @s dp_vmn.track_depth 1
execute unless score @s dp_vmn.track_depth matches 0.. align xyz positioned ~.5 ~.5 ~.5 run function vmn:main/vmn/cube_chain2
execute unless score @s dp_vmn.track_depth matches 0.. run scoreboard players reset @s dp_vmn.track_depth
execute if score @s dp_vmn.track_depth matches 0.. positioned ^ ^ ^.05 run function vmn:main/vmn/cube_chain
