##成熟农作物标记 配置文件2
# 参考格式：execute if score #block_value dp_vmn.temp matches <ID值> run scoreboard players set #temp_reap dp_vmn.temp 1
# 解释：<ID值>是农作物方块对应的ID或农作物组ID(-7)

scoreboard players reset #temp_reap dp_vmn.temp

execute if score #block_value dp_vmn.temp matches -7 run scoreboard players set #temp_reap dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches 58 run scoreboard players set #temp_reap dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches 59 run scoreboard players set #temp_reap dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches 60 run scoreboard players set #temp_reap dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches 61 run scoreboard players set #temp_reap dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches 62 run scoreboard players set #temp_reap dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches 63 run scoreboard players set #temp_reap dp_vmn.temp 1
