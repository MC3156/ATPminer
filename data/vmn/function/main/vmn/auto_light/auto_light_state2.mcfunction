##切换自动照明状态 2

scoreboard players reset @s AUTO_light
scoreboard players set @s dp_vmn.AUTO_light_state 1
tellraw @s ["§a⚡ §e已开启自动照明！",{"text":"→[说明]","color":"gold","hoverEvent":{"action":"show_text","contents":"§6⚡§eATP自动照明§6⚡§r\n§f生存模式下自动消耗背包的火把，点亮暗处或黑夜\n当火把数量低于 10 时活动栏会提示\n§7创造模式有火把时可以照明，不会消耗\n手持光源方块切换为旁观模式会大范围使用光源方块照明\n为玩家添加tag标签§eATP_DARK§7，大范围移除光源方块\n(深暗之域不会自动照明)"}}]
execute at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 2 1
scoreboard players set #auto_light_temp dp_vmn.temp 1
