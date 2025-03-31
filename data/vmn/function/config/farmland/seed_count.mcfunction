##种子检测 配置文件3
# 参考格式：execute if score @s <计分板名称> matches 1.. store result score #count dp_vmn.temp run clear @s <种子的命名空间ID> 0
# 解释：<计分板名称>是valid_seeds文件中定义的计分板，<种子的命名空间ID>里的种子是可以被种植在耕地上的种子

function vmn:main/versions/1.17-1.20.6/seed_count
execute if score @s dp_vmn.used.beetroot_seeds matches 1.. store result score #count dp_vmn.temp run clear @s minecraft:beetroot_seeds 0
execute if score @s dp_vmn.used.carrot matches 1.. store result score #count dp_vmn.temp run clear @s minecraft:carrot 0
execute if score @s dp_vmn.used.melon_seeds matches 1.. store result score #count dp_vmn.temp run clear @s minecraft:melon_seeds 0
execute if score @s dp_vmn.used.potato matches 1.. store result score #count dp_vmn.temp run clear @s minecraft:potato 0
execute if score @s dp_vmn.used.pumpkin_seeds matches 1.. store result score #count dp_vmn.temp run clear @s minecraft:pumpkin_seeds 0
execute if score @s dp_vmn.used.wheat_seeds matches 1.. store result score #count dp_vmn.temp run clear @s minecraft:wheat_seeds 0
