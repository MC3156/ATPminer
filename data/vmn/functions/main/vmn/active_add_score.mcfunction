##活跃子标记加分
# 活跃不可跨度 2Tick

scoreboard players add @s dp_vmn.damage 1
execute if score @s dp_vmn.damage matches 2.. run kill @s
