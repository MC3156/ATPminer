##矩形挖掘 3
# 根据视角状态进入不同的判断程序

execute if score @s dp_vmn.rotation1 matches 45..90 run function vmn:main/vmn/cube_chain3_down
execute if score @s dp_vmn.rotation1 matches -90..-45 run function vmn:main/vmn/cube_chain3_up
execute if score @s dp_vmn.rotation1 matches -44..44 run function vmn:main/vmn/cube_chain3_middle
execute if score @s dp_vmn.rotation0 matches 46..135 run function vmn:main/vmn/cube_chain3_west
execute if score @s dp_vmn.rotation0 matches -44..45 run function vmn:main/vmn/cube_chain3_south
execute if score @s dp_vmn.rotation0 matches -134..-45 run function vmn:main/vmn/cube_chain3_east
execute if score @s dp_vmn.rotation0 matches -180..-135 run function vmn:main/vmn/cube_chain3_north
execute if score @s dp_vmn.rotation0 matches 136..180 run function vmn:main/vmn/cube_chain3_north

execute align xyz as @e[type=minecraft:item,dx=0,dy=0,dz=0] run data merge entity @s {PickupDelay:0,Motion:[0d,0d,0d]}
execute align xyz as @e[type=minecraft:item,dx=0,dy=0,dz=0] at @p[tag=dp_vmn_TEMP] positioned ~ ~.25 ~ run tp @s ~ ~ ~
advancement grant @s only vmn:tutorial/cube_chain

execute if score #temp_rotation1 dp_vmn.temp matches 2 if score #temp_rotation0 dp_vmn.temp matches 1 run function vmn:main/vmn/cube_chain4_middle_east
execute if score #temp_rotation1 dp_vmn.temp matches 2 if score #temp_rotation0 dp_vmn.temp matches 2 run function vmn:main/vmn/cube_chain4_middle_west
execute if score #temp_rotation1 dp_vmn.temp matches 2 if score #temp_rotation0 dp_vmn.temp matches 3 run function vmn:main/vmn/cube_chain4_middle_south
execute if score #temp_rotation1 dp_vmn.temp matches 2 if score #temp_rotation0 dp_vmn.temp matches 4 run function vmn:main/vmn/cube_chain4_middle_north
execute if score #temp_rotation1 dp_vmn.temp matches 1 if score #temp_rotation0 dp_vmn.temp matches 1..2 run function vmn:main/vmn/cube_chain4_down_we
execute if score #temp_rotation1 dp_vmn.temp matches 1 if score #temp_rotation0 dp_vmn.temp matches 3..4 run function vmn:main/vmn/cube_chain4_down_ns
execute if score #temp_rotation1 dp_vmn.temp matches 3 if score #temp_rotation0 dp_vmn.temp matches 1..2 run function vmn:main/vmn/cube_chain4_up_we
execute if score #temp_rotation1 dp_vmn.temp matches 3 if score #temp_rotation0 dp_vmn.temp matches 3..4 run function vmn:main/vmn/cube_chain4_up_ns
