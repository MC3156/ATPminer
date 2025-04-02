##原版方块 方块-ID匹配检测函数
# 其中部分方块被用作配置文件示例从此部分摘除
# 为了优化，现已分包装进不同函数

execute if score #block_value dp_vmn.temp matches 1..625 run function vmn:main/vmn/block_matching/1-625
execute if score #block_value dp_vmn.temp matches 626..1250 run function vmn:main/vmn/block_matching/626-1250

execute if score #temp_execute dp_vmn.temp matches 1 if block ~ ~ ~ #vmn:no_damage run scoreboard players set #no_damage dp_vmn.temp 1
