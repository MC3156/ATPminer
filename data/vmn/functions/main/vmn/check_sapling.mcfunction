##检查树种
# 多个实体时优先使用2*2检测，只有1个REPLANT实体时，使用1*1检测 

execute if score #replant dp_vmn.temp matches 2.. as @e[type=minecraft:marker,tag=dp_vmn_REPLANT] at @s run function vmn:main/vmn/check_sapling2
execute unless entity @e[type=minecraft:marker,tag=dp_vmn_SAPLING,distance=..32] as @e[type=minecraft:marker,tag=dp_vmn_REPLANT,limit=1,sort=nearest] at @s run function vmn:config/smart_replant/1_1_check
