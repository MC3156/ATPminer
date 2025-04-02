##版本兼容 1.20.5-

summon minecraft:armor_stand ~ ~10000 ~ {Tags:["dp_vmn_TEMP","dp_vmn_ACTIVE_0"],Marker:1b,Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b}
execute if data entity @s SelectedItem run item replace entity @e[type=minecraft:armor_stand,tag=dp_vmn_TEMP,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand

execute if data entity @s SelectedItem.tag{Unbreakable:1b} run scoreboard players set #temp_secret dp_vmn.temp 3159
execute if predicate vmn:if_items/whitelist_tool run scoreboard players set #temp_secret dp_vmn.temp 3159
execute unless predicate vmn:if_items/damage_tool run scoreboard players set #temp_secret dp_vmn.temp 3159
execute if score #no_damage dp_vmn.temp matches 1 unless predicate vmn:if_items/tool/shears run scoreboard players set #temp_secret dp_vmn.temp 3159

execute if score #temp_secret dp_vmn.temp matches 3159 run scoreboard players set #dfs_damage dp_vmn.temp -1

execute unless score #temp_secret dp_vmn.temp matches 3159 run scoreboard players set #damage_per_block dp_vmn.temp 1
#execute unless score #temp_secret dp_vmn.temp matches 3159 if data entity @s SelectedItem.components."minecraft:tool".damage_per_block store result score #damage_per_block dp_vmn.temp run data get entity @s SelectedItem.components."minecraft:tool".damage_per_block 1
execute unless score #temp_secret dp_vmn.temp matches 3159 if predicate vmn:if_items/damage_tool unless score #dfs_max_damage dp_vmn.temp matches 1.. run function vmn:main/vmn/check_tool3
#execute unless score #dfs_max_damage dp_vmn.temp matches -2147483648..2147483647 run scoreboard players set #temp_secret dp_vmn.temp -1

execute unless score #temp_secret dp_vmn.temp matches 3159 run scoreboard players operation #dfs_max_damage dp_vmn.temp -= #damage_per_block dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3159 run scoreboard players operation #dfs_max_damage dp_vmn.temp -= #damage_per_block dp_vmn.temp
execute unless score #temp_secret dp_vmn.temp matches 3159 run scoreboard players operation #dfs_max_damage dp_vmn.temp -= #damage_per_block dp_vmn.temp

execute unless score #temp_secret dp_vmn.temp matches 3159 store result score #dfs_unbreaking dp_vmn.temp run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl 1
execute unless score #temp_secret dp_vmn.temp matches 3159 run scoreboard players add #dfs_unbreaking dp_vmn.temp 1
execute unless score #temp_secret dp_vmn.temp matches 3159 store result score #dfs_damage dp_vmn.temp run data get entity @s SelectedItem.tag.Damage 1
execute unless score #temp_secret dp_vmn.temp matches 3159 run function vmn:main/vmn/dfs_expected_count
execute unless score #temp_secret dp_vmn.temp matches 3159 if score #dfs_damage dp_vmn.temp >= #dfs_max_damage dp_vmn.temp run scoreboard players set #dfs_expected_count dp_vmn.temp 0
execute unless score #temp_secret dp_vmn.temp matches 3159 if score #dfs_damage dp_vmn.temp >= #dfs_max_damage dp_vmn.temp run scoreboard players set #dfs_damage dp_vmn.temp -1

execute if score #dfs_damage dp_vmn.temp matches -1 if score #temp_pass_hand dp_vmn.temp matches 1 run scoreboard players set #dfs_expected_count dp_vmn.temp 2147483647

#debug:#工具属性情况
#tellraw @a ["DFS tool C>> dfs_damage:",{"score":{"name":"#dfs_damage","objective":"dp_vmn.temp"}}," dfs_max_damage:",{"score":{"name":"#dfs_max_damage","objective":"dp_vmn.temp"}}," dfs_unbreaking:",{"score":{"name":"#dfs_unbreaking","objective":"dp_vmn.temp"}}," dfs_expected_count:",{"score":{"name":"#dfs_expected_count","objective":"dp_vmn.temp"}}]

scoreboard players reset #temp_secret dp_vmn.temp
