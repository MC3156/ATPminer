##子标记选择 2

scoreboard players operation @s dp_vmn.random = @e[type=minecraft:marker,limit=1,sort=nearest,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP] dp_vmn.random
data modify entity @s Tags set from entity @e[type=minecraft:marker,limit=1,sort=nearest,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP] data.Tags
scoreboard players add #temp_tick_thread dp_vmn.temp 1
