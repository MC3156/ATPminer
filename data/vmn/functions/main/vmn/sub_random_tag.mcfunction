##子标记绑定主标记

scoreboard players operation @s[tag=dp_vmn_NO_TAG] dp_vmn.random = @e[type=minecraft:marker,tag=dp_vmn_MAIN,tag=dp_vmn_ACTIVE_0,limit=1,sort=nearest] dp_vmn.random
tag @s[tag=dp_vmn_NO_TAG] remove dp_vmn_NO_TAG
