##智能补种+快速落叶 配置文件1 检查
# 检查方块ID (何种方块对应的ID可以用来补种检查，例如橡木9、云杉木10)

execute if score #block_value dp_vmn.temp matches -3 run function vmn:main/vmn/check_replant
execute if score #block_value dp_vmn.temp matches 9 run function vmn:main/vmn/check_replant
execute if score #block_value dp_vmn.temp matches 10 run function vmn:main/vmn/check_replant
execute if score #block_value dp_vmn.temp matches 11 run function vmn:main/vmn/check_replant
execute if score #block_value dp_vmn.temp matches 12 run function vmn:main/vmn/check_replant
execute if score #block_value dp_vmn.temp matches 13 run function vmn:main/vmn/check_replant
execute if score #block_value dp_vmn.temp matches 14 run function vmn:main/vmn/check_replant
execute if score #block_value dp_vmn.temp matches 15 run function vmn:main/vmn/check_replant
execute if score #block_value dp_vmn.temp matches 16 run function vmn:main/vmn/check_replant
execute if score #block_value dp_vmn.temp matches 830 run function vmn:main/vmn/check_replant
