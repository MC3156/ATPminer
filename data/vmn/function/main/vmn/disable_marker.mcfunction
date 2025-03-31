##本次连锁事件结束
# 主标记(执行者)和附属实体休眠、取消所有绑定
# 玩家饥饿检查

#debug:输出连锁数量
execute if score @p[tag=dp_vmn_TEMP] dp_vmn.ATPminer.debug matches 1 run tellraw @p[tag=dp_vmn_TEMP] ["§aDebug >>>"," §eID：",{"entity":"@s","nbt":"data.random","color":"gray"},"\n§e本次连锁数量：",{"score":{"name":"@s","objective":"dp_vmn.block_count"},"color":"gold"}," §e搜索深度：",{"score":{"name":"@s","objective":"dp_vmn.depth"},"color":"light_purple"}]

execute as @e[type=minecraft:snowball,tag=dp_vmn_ACTIVE_1] if score @s dp_vmn.random = @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_TEMP,limit=1,sort=nearest] dp_vmn.random run kill @s
tag @p[tag=dp_vmn_TEMP] remove dp_vmn_TEMP
kill @e[tag=dp_vmn_TEMP]
scoreboard players reset #count dp_vmn.temp
scoreboard players reset #damage_per_block dp_vmn.temp
