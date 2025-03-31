##所有未处理的报告

execute if predicate vmn:location/light_0 run tellraw @a ["",{"text":"§e未被处理的可刷怪位置！§7>> §r","hoverEvent":{"action":"show_text","contents":"§6原因\n§e这些位置的方块保存了个性化数据(例如告示牌的内容)，因此可刷怪但未被照明！§r"}},{"entity":"@s","nbt":"Pos[0]","color":"gold"}," ",{"entity":"@s","nbt":"Pos[1]","color":"gold"}," ",{"entity":"@s","nbt":"Pos[2]","color":"gold"}]
kill @s
