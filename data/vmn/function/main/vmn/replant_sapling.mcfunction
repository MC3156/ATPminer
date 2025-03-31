##自动补种

execute if entity @s[tag=!dp_vmn_GIANT] run function vmn:config/smart_replant/1_1_replant
execute if entity @s[tag=dp_vmn_GIANT] run function vmn:config/smart_replant/2_2_replant
advancement grant @p[tag=dp_vmn_TEMP] only vmn:tutorial/smart_sapling
