##预期最大数量
# 公式：( max_damage - damage ) * unbreaking / damage_per_block

scoreboard players operation @s dp_vmn.expected_count = @s dp_vmn.max_damage
scoreboard players operation @s dp_vmn.expected_count -= @s dp_vmn.damage
scoreboard players operation @s dp_vmn.expected_count *= @s dp_vmn.unbreaking
scoreboard players operation @s dp_vmn.expected_count /= #damage_per_block dp_vmn.temp

#debug:#输出预期值
#tellraw @a [">>预期:",{"score":{"name":"@s","objective":"dp_vmn.expected_count"}}," max_damage:",{"score":{"name":"@s","objective":"dp_vmn.max_damage"}}," damage:",{"score":{"name":"@s","objective":"dp_vmn.damage"}}]
