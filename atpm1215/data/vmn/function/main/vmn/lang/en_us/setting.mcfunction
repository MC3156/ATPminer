##en_us

execute if score @s ATPminer matches 101..500 run function vmn:main/trigger/modify_setting
execute unless score @s ATPminer matches 101..500 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1 1
advancement grant @s only vmn:tutorial/root

tellraw @s ["§d🔥 ",{"text": "ATPminer", "color": "gold", "hover_event": {"action": "show_text", "value": "§6⚡§eATPminer§6⚡ §7View Github\nNew version of block-chaining mining! Supports multiple extended features (§d⚡§eCombined Mining, §d⚡§eAuto-Lighting, §d⚡§eSmart Replanting, §d⚡§eArea Farming, §d⚡§eFast Leaf Decay, §d⚡§eRectangle Mining§7, etc.). The datapack uses various optimization methods for better performance and highly supports customizable configurations.§r"}, "click_event": {"action": "open_url", "url": "https://github.com/MC3156/ATPminer"}},"§3(Datapack)§r ",{"text": "Per-Setting", "color": "yellow", "hover_event": {"action": "show_text", "value": "§ePersonal Setting\n§7Click on the following items to enable or disable§r"}}," ",{"text": "[>>Global]", "color": "red", "hover_event": {"action": "show_text", "value": "§6Modify global settings (requires function permission)\n§7/function vmn:main/vmn/global_setting§r"}, "click_event": {"action": "run_command", "command": "/function vmn:main/vmn/global_setting"}}," ",{"text": "[Lang]", "color": "light_purple", "hover_event": {"action": "show_text", "value": "§6Change your language§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 404"}}]
# execute unless score #global.atp_miner dp_vmn.global_setting matches 1 run data modify storage dp_vmn:1 TEMP.setting.basic set value "§a启用§r"
# execute if score #global.atp_miner dp_vmn.global_setting matches 1 run data modify storage dp_vmn:1 TEMP.setting.basic set value "§7禁用§r"
# execute unless score #global.auto_light dp_vmn.global_setting matches 1 run data modify storage dp_vmn:1 TEMP.setting.auto_light set value "§a启用§r"
# execute if score #global.auto_light dp_vmn.global_setting matches 1 run data modify storage dp_vmn:1 TEMP.setting.auto_light set value "§7禁用§r"
# execute unless score #global.config dp_vmn.global_setting matches 1 run data modify storage dp_vmn:1 TEMP.setting.config set value "§fParameter Config：§a🔓 §r"
# execute if score #global.config dp_vmn.global_setting matches 1 run data modify storage dp_vmn:1 TEMP.setting.config set value "§fParameter Config：§c🔒 §r"
# tellraw @s ["§d🔥 §r",{"text":"Basic Function：","color":"white","hoverEvent":{"action":"show_text","contents":"§eBasic Function §7全局\n§7"Allows players to harvest resources or mine blocks in clusters\n(Serves as the prerequisite for all chaining-related extended features)\nDoes not affect \"§6Auto-Lighting§r\"""}},{"storage":"dp_vmn:1","nbt":"TEMP.setting.basic"},"§f; ",{"text":"自动照明：","color":"white","hoverEvent":{"action":"show_text","contents":"§eAuto Light §7全局\n§7Players can auto place torches when they are in the dark or at night (which will consume)\n使用§6/trigger AUTO_light§7控制开关\n点击将指令复制到聊天栏"},"click_event":{"action":"suggest_command","value":"/trigger AUTO_light"}},{"storage":"dp_vmn:1","nbt":"TEMP.setting.auto_light"}]
# tellraw @s ["§d🔥 §r",{"storage":"dp_vmn:1","nbt":"TEMP.setting.config","hoverEvent":{"action":"show_text","contents":"§eParameter Config\n§7根据设定的宽半径、高半径、纵深度决定部分功能的操作规模\n若未全局锁定§a🔓§7，可使用§6/trigger ATPminer_config§7个性化\n修改连锁宽度、高度、深度\n点击将指令复制到聊天栏"},"click_event":{"action":"suggest_command","value":"/trigger ATPminer_config"}},{"score":{"name":"@s","objective":"dp_vmn.ATPminer_config.width"},"color":"light_purple","hoverEvent":{"action":"show_text","contents":["§ewidth-radius(",{"score":{"name":"@s","objective":"dp_vmn.ATPminer_config.width"},"color":"light_purple"},"§e)"]}}," ",{"score":{"name":"@s","objective":"dp_vmn.ATPminer_config.height"},"color":"light_purple","hoverEvent":{"action":"show_text","contents":["§eheight-radius(",{"score":{"name":"@s","objective":"dp_vmn.ATPminer_config.height"},"color":"light_purple"},"§e)"]}}," ",{"score":{"name":"@s","objective":"dp_vmn.ATPminer_config.depth"},"color":"light_purple","hoverEvent":{"action":"show_text","contents":["§edepth(",{"score":{"name":"@s","objective":"dp_vmn.ATPminer_config.depth"},"color":"light_purple"},"§e)"]}}]

execute unless score #global.atp_miner dp_vmn.global_setting matches 1 unless score @s dp_vmn.ATPminer.basic matches 1 run tellraw @s ["§6🔥 §r",{"text":"Basic Function","color":"green","click_event":{"action":"run_command","command":"/trigger ATPminer set 208"},"hover_event":{"action":"show_text","value":"§eBasic Function §7Click to disable\n§7Allows players to harvest resources or mine blocks in clusters\n(Serves as the prerequisite for all chaining-related extended features)\nDoes not affect \"§6Auto-Lighting§r\""}}]
execute unless score #global.atp_miner dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.basic matches 1 run tellraw @s ["§6🔥 §r",{"text": "Basic Function", "color": "gray", "hover_event": {"action": "show_text", "value": "§eBasic Function §7Click to enable\n§7Allows players to harvest resources or mine blocks in clusters\n(Serves as the prerequisite for all chaining-related extended features)\nDoes not affect \"§6Auto-Lighting§r\""}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 108"}}]
execute if score #global.atp_miner dp_vmn.global_setting matches 1 run tellraw @s ["§6🔥 §r",{"text": "Basic Function", "color": "gray", "hover_event": {"action": "show_text", "value": "§eBasic Function §7Lock disabled\n§7Allows players to harvest resources or mine blocks in clusters\n(Serves as the prerequisite for all chaining-related extended features)\nDoes not affect \"§6Auto-Lighting§r\""}}," §c🔒§r"]

execute unless score #global.config dp_vmn.global_setting matches 1 run tellraw @s ["§6🔥 §r",{"text": "Parameter Config", "color": "green", "hover_event": {"action": "show_text", "value": "§eParameter Config §aModifiable\n§7Determines operation scale for certain features based on configured:\n- Width Radius\n- Height Radius\n- Forward Depth\n\nWhen unlocked §a🔓§7, customize via:\n§6/trigger ATPminer_config§7\nto modify chain width/height/depth\n§fClick to modify§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config"}}," ",{"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.width"}, "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§ewidth-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.width"}, "color": "light_purple"}, "§e)"]}}," ",{"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.height"}, "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§eheight-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.height"}, "color": "light_purple"}, "§e)"]}}," ",{"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§edepth(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple"}, "§e)"]}}]
execute if score #global.config dp_vmn.global_setting matches 1 run tellraw @s ["§6🔥 §r",{"text": "Parameter Config", "color": "gray", "hover_event": {"action": "show_text", "value": "§eParameter Config §cLocked\n§7Determines operation scale for certain features based on configured:\n- Width Radius\n- Height Radius\n- Forward Depth\n\nWhen unlocked §a🔓§7, customize via:\n§6/trigger ATPminer_config§7\nto modify chain width/height/depth§r"}}," ",{"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.width"}, "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§ewidth-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.width"}, "color": "light_purple"}, "§e)"]}}," ",{"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.height"}, "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§eheight-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.height"}, "color": "light_purple"}, "§e)"]}}," ",{"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§edepth(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple"}, "§e)"]}}]

execute unless score #global.auto_light dp_vmn.global_setting matches 1 unless score @s dp_vmn.AUTO_light_state matches 1 run tellraw @s ["§6🔥 §r",{"text": "Auto Light", "color": "gray", "hover_event": {"action": "show_text", "value": "§eAuto Light §7Click to enable\n§7Players can auto place torches when they are in the dark or at night (which will consume)"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 401"}},{"text": " →[TIP]", "color": "gold", "hover_event": {"action": "show_text", "value": "§6⚡§eATP Auto-Lighting§6⚡§r\n§fAutomatically consumes torches from inventory in Survival mode to light up dark areas/nights\n§7Activates hotbar warning when torch count < 10\n§7In Creative mode: Places torches without consumption\n§7When holding light blocks in Spectator mode: Large-scale lighting\n§7Adds player tag §eATP_DARK§7 for bulk light removal\n§8(Does not auto-light Deep Dark biomes)"}}]
execute unless score #global.auto_light dp_vmn.global_setting matches 1 if score @s dp_vmn.AUTO_light_state matches 1 run tellraw @s ["§6🔥 §r",{"text": "Auto Light", "color": "green", "hover_event": {"action": "show_text", "value": "§eAuto Light §7Click to disable\n§7Players can auto place torches when they are in the dark or at night (which will consume)"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 401"}},{"text": " →[TIP]", "color": "gold", "hover_event": {"action": "show_text", "value": "§6⚡§eATP Auto-Lighting§6⚡§r\n§fAutomatically consumes torches from inventory in Survival mode to light up dark areas/nights\n§7Activates hotbar warning when torch count < 10\n§7In Creative mode: Places torches without consumption\n§7When holding light blocks in Spectator mode: Large-scale lighting\n§7Adds player tag §eATP_DARK§7 for bulk light removal\n§8(Does not auto-light Deep Dark biomes)"}}]
execute if score #global.auto_light dp_vmn.global_setting matches 1 run tellraw @s ["§6🔥 §r",{"text": "Auto Light", "color": "gray", "hover_event": {"action": "show_text", "value": "§eAuto Light §7Lock disabled\n§7Players can auto place torches when they are in the dark or at night (which will consume)"}}," §c🔒§r"]

execute if score #global.combination dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.combination matches 0 run tellraw @s ["§6🔥 §r",{"text": "Unified Harvesting", "color": "gray", "hover_event": {"action": "show_text", "value": "§eUnified Harvesting §7Click to enable\nPlayers can harvest connected same-type blocks simultaneously\n(Supports ores, logs, crops, corals, dyed materials, etc. - see file_description file for details)"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 101"}}]
execute if score #global.combination dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.combination matches 1 run tellraw @s ["§6🔥 §r",{"text": "Unified Harvesting", "color": "green", "hover_event": {"action": "show_text", "value": "§eUnified Harvesting §7Click to disable\nPlayers can harvest connected same-type blocks simultaneously\n(Supports ores, logs, crops, corals, dyed materials, etc. - see file_description file for details)"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 201"}}]
execute unless score #global.combination dp_vmn.global_setting matches 1..2 run tellraw @s ["§6🔥 §r",{"text": "Unified Harvesting", "color": "gray", "hover_event": {"action": "show_text", "value": "§eUnified Harvesting §7Lock disabled\nPlayers can harvest connected same-type blocks simultaneously\n(Supports ores, logs, crops, corals, dyed materials, etc. - see file_description file for details)"}}," §c🔒§r"]
execute if score #global.combination dp_vmn.global_setting matches 2 run tellraw @s ["§6🔥 §r",{"text": "Unified Harvesting", "color": "green", "hover_event": {"action": "show_text", "value": "§eUnified Harvesting §7Lock enabled\nPlayers can harvest connected same-type blocks simultaneously\n(Supports ores, logs, crops, corals, dyed materials, etc. - see file_description file for details)"}}," §a🔒§r"]

execute if score #global.auto_farm dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.auto_farm matches 0 run tellraw @s ["§6🔥 §r",{"text": "Area Farming", "color": "gray", "hover_event": {"action": "show_text", "value": "§eArea Farming §7Click to enable\n§7Players can perform area farming and crop planting. In §6Flat Mode§7:\n- Automatically places water at center if holding water bucket in offhand\n- Farming range depends on:\n  §bWidth Radius§7 (§6Flat§7) or §bForward Depth§7 (§6Line§7)"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 105"}}]
execute if score #global.auto_farm dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.auto_farm matches 1 if score @s dp_vmn.ATPminer.farming_mode matches 1 run tellraw @s ["§6🔥 §r",{"text": "Area Farming", "color": "green", "hover_event": {"action": "show_text", "value": "§eArea Farming §7Click to disable\n§7Players can perform area farming and crop planting. In §6Flat Mode§7:\n- Automatically places water at center if holding water bucket in offhand\n- Farming range depends on:\n  §bWidth Radius§7 (§6Flat§7) or §bForward Depth§7 (§6Line§7)"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 205"}}," ",{"text": "Flat", "color": "aqua", "hover_event": {"action": "show_text", "value": "§eFlat §7Click to toggle\nFarms/plants in square patterns based on Width Radius parameter"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 301"}}]
execute if score #global.auto_farm dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.auto_farm matches 1 if score @s dp_vmn.ATPminer.farming_mode matches 2 run tellraw @s ["§6🔥 §r",{"text": "Area Farming", "color": "green", "hover_event": {"action": "show_text", "value": "§eArea Farming §7Click to disable\n§7Players can perform area farming and crop planting. In §6Flat Mode§7:\n- Automatically places water at center if holding water bucket in offhand\n- Farming range depends on:\n  §bWidth Radius§7 (§6Flat§7) or §bForward Depth§7 (§6Line§7)"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 205"}}," ",{"text": "Line", "color": "aqua", "hover_event": {"action": "show_text", "value": "§eLine §7Click to toggle\nFarms/plants forward in lines based on Forward Depth parameter"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 302"}}]
execute unless score #global.auto_farm dp_vmn.global_setting matches 1..2 run tellraw @s ["§6🔥 §r",{"text": "Area Farming", "color": "gray", "hover_event": {"action": "show_text", "value": "§eArea Farming §7Lock disabled\n§7Players can perform area farming and crop planting. In §6Flat Mode§7:\n- Automatically places water at center if holding water bucket in offhand\n- Farming range depends on:\n  §bWidth Radius§7 (§6Flat§7) or §bForward Depth§7 (§6Line§7)"}}," §c🔒§r"]
execute if score #global.auto_farm dp_vmn.global_setting matches 2 if score @s dp_vmn.ATPminer.farming_mode matches 1 run tellraw @s ["§6🔥 §r",{"text": "Area Farming", "color": "green", "hover_event": {"action": "show_text", "value": "§eArea Farming §7Lock enabled\n§7Players can perform area farming and crop planting. In §6Flat Mode§7:\n- Automatically places water at center if holding water bucket in offhand\n- Farming range depends on:\n  §bWidth Radius§7 (§6Flat§7) or §bForward Depth§7 (§6Line§7)"}}," §a🔒§r"," ",{"text": "Flat", "color": "aqua", "hover_event": {"action": "show_text", "value": "§eFlat §7Click to toggle\nFarms/plants in square patterns based on Width Radius parameter"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 301"}}]
execute if score #global.auto_farm dp_vmn.global_setting matches 2 if score @s dp_vmn.ATPminer.farming_mode matches 2 run tellraw @s ["§6🔥 §r",{"text": "Area Farming", "color": "green", "hover_event": {"action": "show_text", "value": "§eArea Farming §7Lock enabled\n§7Players can perform area farming and crop planting. In §6Flat Mode§7:\n- Automatically places water at center if holding water bucket in offhand\n- Farming range depends on:\n  §bWidth Radius§7 (§6Flat§7) or §bForward Depth§7 (§6Line§7)"}}," §a🔒§r"," ",{"text": "Line", "color": "aqua", "hover_event": {"action": "show_text", "value": "§eLine §7Click to toggle\nFarms/plants forward in lines based on Forward Depth parameter"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 302"}}]

execute if score #global.smart_replant dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.replant matches 0 run tellraw @s ["§6🔥 §r",{"text": "Smart Replanting", "color": "gray", "hover_event": {"action": "show_text", "value": "§eSmart Replanting §7Click to enable\nAutomatically replants saplings/seeds when chain-harvesting trees or crops:\n- For crops: Consumes 1 seed from drops to replant\n- For trees: Requires saplings in inventory\n§8Incompatible with \"§6Unified Harvesting§8\" during tree felling"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 102"}}]
execute if score #global.smart_replant dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.replant matches 1 run tellraw @s ["§6🔥 §r",{"text": "Smart Replanting", "color": "green", "hover_event": {"action": "show_text", "value": "§eSmart Replanting §7Click to disable\nAutomatically replants saplings/seeds when chain-harvesting trees or crops:\n- For crops: Consumes 1 seed from drops to replant\n- For trees: Requires saplings in inventory\n§8Incompatible with \"§6Unified Harvesting§8\" during tree felling"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 202"}}]
execute unless score #global.smart_replant dp_vmn.global_setting matches 1..2 run tellraw @s ["§6🔥 §r",{"text": "Smart Replanting", "color": "gray", "hover_event": {"action": "show_text", "value": "§eSmart Replanting §7Lock disabled\nAutomatically replants saplings/seeds when chain-harvesting trees or crops:\n- For crops: Consumes 1 seed from drops to replant\n- For trees: Requires saplings in inventory\n§8Incompatible with \"§6Unified Harvesting§8\" during tree felling"}}," §c🔒§r"]
execute if score #global.smart_replant dp_vmn.global_setting matches 2 run tellraw @s ["§6🔥 §r",{"text": "Smart Replanting", "color": "green", "hover_event": {"action": "show_text", "value": "§eSmart Replanting §7Lock enabled\nAutomatically replants saplings/seeds when chain-harvesting trees or crops:\n- For crops: Consumes 1 seed from drops to replant\n- For trees: Requires saplings in inventory\n§8Incompatible with \"§6Unified Harvesting§8\" during tree felling"}}," §a🔒§r"]

execute if score #global.fast_rot dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.fast_rot matches 0 run tellraw @s ["§6🔥 §r",{"text": "Fast Leaf Decay", "color": "gray", "hover_event": {"action": "show_text", "value": "§eFast Leaf Decay §7Click to enable\nLeaves left after chain-harvesting will decay rapidly"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 103"}}]
execute if score #global.fast_rot dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.fast_rot matches 1 run tellraw @s ["§6🔥 §r",{"text": "Fast Leaf Decay", "color": "green", "hover_event": {"action": "show_text", "value": "§eFast Leaf Decay §7Click to disable\nLeaves left after chain-harvesting will decay rapidly"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 203"}}]
execute unless score #global.fast_rot dp_vmn.global_setting matches 1..2 run tellraw @s ["§6🔥 §r",{"text": "Fast Leaf Decay", "color": "gray", "hover_event": {"action": "show_text", "value": "§eFast Leaf Decay §7Lock disabled\nLeaves left after chain-harvesting will decay rapidly"}}," §c🔒§r"]
execute if score #global.fast_rot dp_vmn.global_setting matches 2 run tellraw @s ["§6🔥 §r",{"text": "Fast Leaf Decay", "color": "green", "hover_event": {"action": "show_text", "value": "§eFast Leaf Decay §7Lock enabled\nLeaves left after chain-harvesting will decay rapidly"}}," §a🔒§r"]

execute if score #global.cube_chain dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.cube_chain matches 0 run tellraw @s ["§6🔥 §r",{"text": "Shape Mining", "color": "gray", "hover_event": {"action": "show_text", "value": "§eShape Mining §7Click to enable\nMines blocks in cuboid shapes (configurable width/height/depth)\n§8Incompatible with \"§6Smart Replanting§8\" and \"§6Fast Leaf Decay§8\"\nFrom player perspective:\n- §bWidth§7: Left/right extension\n- §bHeight§7: Up/down extension\n- §bDepth§7: Forward view extension"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 106"}}]
execute if score #global.cube_chain dp_vmn.global_setting matches 1 if score @s dp_vmn.ATPminer.cube_chain matches 1 run tellraw @s ["§6🔥 §r",{"text": "Shape Mining", "color": "green", "hover_event": {"action": "show_text", "value": "§eShape Mining §7Click to disable\nMines blocks in cuboid shapes (configurable width/height/depth)\n§8Incompatible with \"§6Smart Replanting§8\" and \"§6Fast Leaf Decay§8\"\nFrom player perspective:\n- §bWidth§7: Left/right extension\n- §bHeight§7: Up/down extension\n- §bDepth§7: Forward view extension"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 206"}}]
execute unless score #global.cube_chain dp_vmn.global_setting matches 1..2 run tellraw @s ["§6🔥 §r",{"text": "Shape Mining", "color": "gray", "hover_event": {"action": "show_text", "value": "§eShape Mining §7Lock disabled\nMines blocks in cuboid shapes (configurable width/height/depth)\n§8Incompatible with \"§6Smart Replanting§8\" and \"§6Fast Leaf Decay§8\"\nFrom player perspective:\n- §bWidth§7: Left/right extension\n- §bHeight§7: Up/down extension\n- §bDepth§7: Forward view extension"}}," §c🔒§r"]
execute if score #global.cube_chain dp_vmn.global_setting matches 2 run tellraw @s ["§6🔥 §r",{"text": "Shape Mining", "color": "green", "hover_event": {"action": "show_text", "value": "§eShape Mining §7Lock enabled\nMines blocks in cuboid shapes (configurable width/height/depth)\n§8Incompatible with \"§6Smart Replanting§8\" and \"§6Fast Leaf Decay§8\"\nFrom player perspective:\n- §bWidth§7: Left/right extension\n- §bHeight§7: Up/down extension\n- §bDepth§7: Forward view extension"}}," §a🔒§r"]

execute if score @s dp_vmn.ATPminer.sneaking_mode matches 0 run tellraw @s ["§6🔥 §r",{"text":"Hotkey Chaining","color":"gray","click_event":{"action":"run_command","command":"/trigger ATPminer set 104"},"hover_event":{"action":"show_text","value":["§eHotkey Chaining §7Click to enable\nChain reactions only trigger when holding hotkey\n(Includes right-click range operations)"]}}]
execute if score @s dp_vmn.ATPminer.sneaking_mode matches 1 run tellraw @s ["§6🔥 §r",{"text":"Hotkey Chaining","color":"aqua","click_event":{"action":"run_command","command":"/trigger ATPminer set 204"},"hover_event":{"action":"show_text","value":["§eHotkey Chaining §7Click to disable\nChain reactions only trigger when holding hotkey\n(Includes right-click range operations)"]}}," ",{"keybind":"key.sprint","color":"gold","click_event":{"action":"run_command","command":"/trigger ATPminer set 199"},"hover_event":{"action":"show_text","value":"§6Click to toggle hotkey§r"}}]
execute if score @s dp_vmn.ATPminer.sneaking_mode matches 2 run tellraw @s ["§6🔥 §r",{"text":"Hotkey Chaining","color":"aqua","click_event":{"action":"run_command","command":"/trigger ATPminer set 204"},"hover_event":{"action":"show_text","value":["§eHotkey Chaining §7Click to disable\nChain reactions only trigger when holding hotkey\n(Includes right-click range operations)"]}}," ",{"keybind":"key.sneak","color":"gold","click_event":{"action":"run_command","command":"/trigger ATPminer set 104"},"hover_event":{"action":"show_text","value":"§6Click to toggle hotkey§r"}}]

execute if score @s dp_vmn.ATPminer.debug matches 0 run tellraw @s ["§6🔥 §r",{"text": "Chain information", "color": "gray", "hover_event": {"action": "show_text", "value": "§eChain information §7Click to enable\nDisplays chain statistics: quantity/depth/etc."}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 107"}}]
execute if score @s dp_vmn.ATPminer.debug matches 1 run tellraw @s ["§6🔥 §r",{"text": "Chain information", "color": "aqua", "hover_event": {"action": "show_text", "value": "§eChain information §7Click to disable\nDisplays chain statistics: quantity/depth/etc."}, "click_event": {"action": "run_command", "command": "/trigger ATPminer set 207"}}]

# data remove storage dp_vmn:1 TEMP.setting
