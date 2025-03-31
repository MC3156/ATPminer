##实体进入休眠

#debug:#进入休眠！
#tellraw @a [{"selector":"@s","color":"yellow"}," §7进入休眠！"]

tag @s[tag=dp_vmn_ACTIVE_1] add dp_vmn_ACTIVE_0
tag @s[tag=dp_vmn_ACTIVE_1] remove dp_vmn_ACTIVE_1
tag @s[tag=dp_vmn_TEMP] remove dp_vmn_TEMP
kill @s
