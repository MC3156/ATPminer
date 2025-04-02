##清除种子 配置文件5
# 参考格式：execute if score @s <计分板名称> matches 1.. run clear @s <种子的命名空间ID> 1
# 解释：<计分板名称>是valid_seeds文件中定义的计分板，<种子的命名空间ID>里的种子是可以被种植在耕地上的种子

function vmn:main/versions/1.17-1.20.6/clear_seed
execute if score @s[gamemode=!creative] dp_vmn.used.beetroot_seeds matches 1.. run clear @s minecraft:beetroot_seeds 1
execute if score @s[gamemode=!creative] dp_vmn.used.carrot matches 1.. run clear @s minecraft:carrot 1
execute if score @s[gamemode=!creative] dp_vmn.used.melon_seeds matches 1.. run clear @s minecraft:melon_seeds 1
execute if score @s[gamemode=!creative] dp_vmn.used.potato matches 1.. run clear @s minecraft:potato 1
execute if score @s[gamemode=!creative] dp_vmn.used.pumpkin_seeds matches 1.. run clear @s minecraft:pumpkin_seeds 1
execute if score @s[gamemode=!creative] dp_vmn.used.wheat_seeds matches 1.. run clear @s minecraft:wheat_seeds 1
