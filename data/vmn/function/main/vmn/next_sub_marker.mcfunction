##子标记选择 
# 线程限制

execute if score #temp_tick_thread dp_vmn.temp < #value_tick_thread dp_vmn.global_setting run function vmn:main/vmn/next_sub_marker2
