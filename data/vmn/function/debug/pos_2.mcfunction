##获取位置2

execute store result score x2 CS run data get entity @s Pos[0]
execute store result score y2 CS run data get entity @s Pos[1]
execute store result score z2 CS run data get entity @s Pos[2]
tellraw @s ["§d角点 2 选取为：",{"score":{"name":"x2","objective":"CS"},"color":"light_purple"}," ",{"score":{"name":"y2","objective":"CS"},"color":"light_purple"}," ",{"score":{"name":"z2","objective":"CS"},"color":"light_purple"}]
