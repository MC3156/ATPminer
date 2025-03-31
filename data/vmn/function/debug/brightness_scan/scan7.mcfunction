##执行放置

scoreboard players set #100 dp_vmn.temp 100
scoreboard players add torch_count CS 1
setblock ~ ~ ~ minecraft:torch destroy
scoreboard players operation scan_prograss_temp CS = scan_prograss CS
scoreboard players operation scan_prograss_temp CS *= #100 dp_vmn.temp
scoreboard players operation scan_prograss_temp CS /= area CS
title @a actionbar ["§e扫描中！已安置火把：§r",{"score":{"name":"torch_count","objective":"CS"},"color":"green"}," §e( ",{"score":{"name":"scan_prograss_temp","objective":"CS"},"color":"aqua"},"§e %)§r"]
execute as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1 1
scoreboard players reset sign2 CS
scoreboard players reset sign3 CS
scoreboard players reset @s CS
scoreboard players reset #100 dp_vmn.temp
scoreboard players reset scan_prograss_temp CS
