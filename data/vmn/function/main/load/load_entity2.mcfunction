##常加载实体 2
# 雪球：实体转发器(modify)  盔甲架：随机值发生

execute if score #temp_secret dp_vmn.temp matches 3156 run kill @e[tag=dp_vmn_CONST]
execute if score #temp_secret dp_vmn.temp matches 3156 run summon minecraft:armor_stand ~ ~10001 ~ {Tags:["dp_vmn_CONST"],Silent:1b,Invulnerable:1b,NoGravity:1b,Small:1b,ShowArms:1b,Invisible:1b,Marker:1b,CustomName:'{"text":"概率模拟(盔甲架)","color":"gold"}'}
