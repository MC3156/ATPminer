##参数查询

execute if score @s dp_vmn.lang matches 1 run function vmn:main/vmn/lang/zh_cn/parameter
execute if score @s dp_vmn.lang matches 2 run function vmn:main/vmn/lang/en_us/parameter
execute unless score @s dp_vmn.lang matches 1..2 run function vmn:main/vmn/lang/lang
