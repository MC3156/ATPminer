##检查相关配置

execute if entity @e[type=minecraft:marker,tag=dp_vmn_MAIN] run function #vmn:load
function vmn:main/vmn/global_setting/check_setting
execute as @a run function vmn:main/load/check_score

execute as @a if score @s ATPminer matches -2147483648..2147483647 unless score @s ATPminer matches 0 run function vmn:main/trigger/setting
execute as @a if score @s AUTO_light matches -2147483648..2147483647 unless score @s AUTO_light matches 0 run function vmn:main/vmn/auto_light/auto_light_state
execute as @a if score @s ATPminer_config matches -2147483648..2147483647 unless score @s ATPminer_config matches 0 run function vmn:main/trigger/parameter
function vmn:main/trigger/reset_trigger
