##递归视追锁定方块

function vmn:main/vmn/eye_track2
execute if score #eye_track_times dp_vmn.temp matches 0..2 positioned ^ ^ ^2 run function vmn:main/vmn/eye_track
