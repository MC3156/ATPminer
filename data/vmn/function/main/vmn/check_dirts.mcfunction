##检查标记泥土

scoreboard players add #replant dp_vmn.temp 1
summon minecraft:marker ~ ~ ~ {Tags:["dp_vmn_REPLANT"]}

#debug:#标记泥土的位置
#tellraw @a [">REP ",{"entity":"@e[tag=dp_vmn_REPLANT,limit=1,sort=nearest]","nbt":"Pos"}," replant:",{"score":{"name":"#replant","objective":"dp_vmn.temp"}}]
