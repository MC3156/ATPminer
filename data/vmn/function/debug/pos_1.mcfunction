##获取位置1

execute store result score x1 CS run data get entity @s Pos[0]
execute store result score y1 CS run data get entity @s Pos[1]
execute store result score z1 CS run data get entity @s Pos[2]
tellraw @s ["§d角点 1 选取为：",{"score":{"name":"x1","objective":"CS"},"color":"light_purple"}," ",{"score":{"name":"y1","objective":"CS"},"color":"light_purple"}," ",{"score":{"name":"z1","objective":"CS"},"color":"light_purple"}]
