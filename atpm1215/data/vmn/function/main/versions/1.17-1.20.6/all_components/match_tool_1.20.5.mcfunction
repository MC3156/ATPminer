##组件分离 1.20.5

data modify entity @s equipment.mainhand.components."minecraft:damage" set from entity @p[tag=dp_vmn_TEMP] SelectedItem.components."minecraft:damage"
execute unless data entity @p[tag=dp_vmn_TEMP] SelectedItem.components."minecraft:damage" if score @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.exist_damage_nbt matches 1 run data modify entity @s equipment.mainhand.components."minecraft:damage" set value 0
