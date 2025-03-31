##标记连锁事件 2
# 激活主标记、盔甲架 (使用随机UUID获取唯一绑定ID)

execute unless entity @a[distance=..1] run scoreboard players set #temp_secret dp_vmn.temp 3164
execute if score #temp_secret dp_vmn.temp matches 3164 run kill @s

execute unless score #temp_secret dp_vmn.temp matches 3164 run data modify entity @s data.UUID set from entity @p[distance=..1] UUID
execute unless score #temp_secret dp_vmn.temp matches 3164 run summon minecraft:armor_stand ~ ~10000 ~ {Tags:["dp_vmn_ACTIVE_0"],Marker:1b,Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute unless score #temp_secret dp_vmn.temp matches 3164 run summon minecraft:snowball ~ ~10000 ~ {Tags:["dp_vmn_ACTIVE_0"],Silent:1b,Invulnerable:1b,NoGravity:1b}
execute unless score #temp_secret dp_vmn.temp matches 3164 positioned ~ ~10000 ~ as @e[type=minecraft:armor_stand,tag=dp_vmn_ACTIVE_0,sort=nearest,limit=1,distance=..0.001] positioned ~ ~-10000 ~ run function vmn:main/vmn/mark_event4
execute unless score #temp_secret dp_vmn.temp matches 3164 run summon minecraft:marker ~ ~9999 ~ {Tags:["dp_vmn_RANDOM"]}
execute unless score #temp_secret dp_vmn.temp matches 3164 store result entity @s data.random int 1 run data get entity @e[type=minecraft:marker,tag=dp_vmn_RANDOM,limit=1,sort=nearest] UUID[0]
execute unless score #temp_secret dp_vmn.temp matches 3164 run kill @e[type=minecraft:marker,tag=dp_vmn_RANDOM,limit=1,sort=nearest]
execute unless score #temp_secret dp_vmn.temp matches 3164 positioned ~ ~10000 ~ run function vmn:main/vmn/mark_event3
execute unless score #temp_secret dp_vmn.temp matches 3164 run data remove storage dp_vmn:1 TEMP.random

scoreboard players reset #temp_secret dp_vmn.temp
