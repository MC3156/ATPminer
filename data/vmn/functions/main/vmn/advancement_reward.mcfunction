##进度提示音

playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
execute if score @s dp_vmn.lang matches 1 run title @s actionbar ["§6ATP高能连锁 §f新进度达成！§r"]
execute if score @s dp_vmn.lang matches 2 run title @s actionbar ["§6ATPminer §fNew advancement reached!！§r"]
