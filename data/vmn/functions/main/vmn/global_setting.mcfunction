##全局设置

execute if score @s dp_vmn.lang matches 1 run function vmn:main/vmn/lang/zh_cn/global_setting
execute if score @s dp_vmn.lang matches 2 run function vmn:main/vmn/lang/en_us/global_setting
execute unless score @s dp_vmn.lang matches 1..2 run trigger ATPminer
