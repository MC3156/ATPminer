##绑定玩家 1.19.3
# (无雪球UUID转发器)

execute unless entity @a[tag=dp_vmn_TEMP] unless score #temp_match_UUID dp_vmn.temp matches 0 run data modify storage dp_vmn:1 TEMP.match_UUID set from entity @e[type=minecraft:marker,limit=1,sort=nearest,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP] data.UUID
execute unless entity @a[tag=dp_vmn_TEMP] unless score #temp_match_UUID dp_vmn.temp matches 0 store success score #temp_match_UUID dp_vmn.temp run data modify storage dp_vmn:1 TEMP.match_UUID set from entity @s UUID
execute unless entity @a[tag=dp_vmn_TEMP] if score #temp_match_UUID dp_vmn.temp matches 0 run tag @s add dp_vmn_TEMP
