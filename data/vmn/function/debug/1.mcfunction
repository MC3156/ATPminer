execute as @a at @s anchored eyes positioned ^ ^ ^ run function vmn:debug/2
#function vmn:debug/4
execute as @e[type=minecraft:marker,tag=CSCS] run tellraw @a ["MK: ",{"entity":"@s","nbt":"Pos"}]
execute as @e[type=minecraft:marker,tag=CSCS] run kill @s
