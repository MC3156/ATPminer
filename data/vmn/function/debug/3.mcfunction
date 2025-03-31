
scoreboard players operation #temp3 dp_vmn.temp = TRA CS.a
scoreboard players operation #temp3 dp_vmn.temp -= #temp2 dp_vmn.temp
execute if score #temp3 dp_vmn.temp matches 4.. run scoreboard players operation #temp4 dp_vmn.temp = #temp3 dp_vmn.temp
scoreboard players operation #temp2 dp_vmn.temp = TRA CS.a
scoreboard players reset #temp dp_vmn.temp
scoreboard players reset #temp3 dp_vmn.temp

