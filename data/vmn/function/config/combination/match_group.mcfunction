##组匹配 配置文件
# 可用范围：-10000~-2 (不要重复)
# 如何添加新组? 请参阅 README.TXT 的配置文件部分
# 添加新行参考格式：execute if score #block_value dp_vmn.temp matches <组ID> if block ~ ~ ~ #vmn:group/<文件名> run scoreboard players set #temp_execute dp_vmn.temp 1
# 注意：前几行和最后一行代码请勿删除或调换顺序，ID为-7的组较为特殊

scoreboard players reset #temp_execute dp_vmn.temp

execute if score #block_value dp_vmn.temp matches -2 if block ~ ~ ~ #vmn:group/ores run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -3 if block ~ ~ ~ #vmn:group/logs run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -5 if block ~ ~ ~ #vmn:group/leaves run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -7 run function vmn:config/smart_replant/farmland/mature_crops
execute if score #block_value dp_vmn.temp matches -8 if block ~ ~ ~ #vmn:group/flowers run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -9 if block ~ ~ ~ #vmn:group/fungi run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -4 if block ~ ~ ~ #vmn:group/dirts run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -6 if block ~ ~ ~ #vmn:group/corals run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -10 if block ~ ~ ~ #vmn:group/coral_blocks run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -11 if block ~ ~ ~ #vmn:group/stripped_logs run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -12 if block ~ ~ ~ #vmn:group/overworld_stones run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -13 if block ~ ~ ~ #vmn:group/monument run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -14 if block ~ ~ ~ #vmn:group/fortress run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -15 if block ~ ~ ~ #vmn:group/nether_stones run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -16 if block ~ ~ ~ #vmn:group/end_city run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -17 if block ~ ~ ~ #vmn:group/wools run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -18 if block ~ ~ ~ #vmn:group/carpets run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -19 if block ~ ~ ~ #vmn:group/terracotta run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -20 if block ~ ~ ~ #vmn:group/concretes run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -21 if block ~ ~ ~ #vmn:group/concrete_powders run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -22 if block ~ ~ ~ #vmn:group/glazed_terracotta run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -23 if block ~ ~ ~ #vmn:group/stained_glass run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -24 if block ~ ~ ~ #vmn:group/stained_glass_panes run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -25 if block ~ ~ ~ #vmn:group/candles run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -26 if block ~ ~ ~ #vmn:group/banners run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -27 if block ~ ~ ~ #vmn:group/beds run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -28 if block ~ ~ ~ #vmn:group/anvils run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -29 if block ~ ~ ~ #vmn:group/rails run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -30 if block ~ ~ ~ #vmn:group/bastion run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -31 if block ~ ~ ~ #vmn:group/sculks run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -32 if block ~ ~ ~ #vmn:group/ices run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -33 if block ~ ~ ~ #vmn:group/souls run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -34 if block ~ ~ ~ #vmn:group/obsidian run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -35 if block ~ ~ ~ #vmn:group/melons run scoreboard players set #temp_execute dp_vmn.temp 1
execute if score #block_value dp_vmn.temp matches -36 if block ~ ~ ~ #vmn:group/froglights run scoreboard players set #temp_execute dp_vmn.temp 1

execute if score #temp_execute dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:no_damage run scoreboard players set #no_damage dp_vmn.temp 1
