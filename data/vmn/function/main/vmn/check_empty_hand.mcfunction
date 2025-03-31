##检查玩家是否空手

execute unless score @s dp_vmn.check_empty_hand matches 0..2 run scoreboard players set @s dp_vmn.check_empty_hand 0
execute unless data entity @s SelectedItem unless score @s dp_vmn.check_empty_hand matches 1 run scoreboard players set @s dp_vmn.check_empty_hand 0
execute unless data entity @s SelectedItem if score @s dp_vmn.check_empty_hand matches 1 run scoreboard players set @s dp_vmn.check_empty_hand 2
execute if data entity @s SelectedItem run scoreboard players set @s dp_vmn.check_empty_hand 1
