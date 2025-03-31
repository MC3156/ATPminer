
execute unless score #temp4 dp_vmn.temp matches -4.. align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~ ~ ~ {Tags:["CSCS"]}
execute if score #temp4 dp_vmn.temp matches -4.. run scoreboard players remove #temp4 dp_vmn.temp 1
execute if score #temp4 dp_vmn.temp matches -4.. positioned ^ ^ ^-.05 run function vmn:debug/5
