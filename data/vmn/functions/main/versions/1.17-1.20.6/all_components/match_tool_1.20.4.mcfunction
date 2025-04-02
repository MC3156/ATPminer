##组件分离 1.20.4

data modify entity @s HandItems[0].tag.Damage set from entity @p[tag=dp_vmn_TEMP] SelectedItem.tag.Damage
execute unless data entity @p[tag=dp_vmn_TEMP] SelectedItem.tag.Damage if score @e[type=minecraft:marker,tag=dp_vmn_TEMP,tag=dp_vmn_MAIN,distance=..0.001,limit=1,sort=nearest] dp_vmn.exist_damage_nbt matches 1 run data modify entity @s HandItems[0].tag.Damage set value 0
