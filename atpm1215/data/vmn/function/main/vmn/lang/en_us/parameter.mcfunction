##en_us

execute if score @s ATPminer_config matches 101..300 run function vmn:main/trigger/modify_parameter
execute unless score @s ATPminer_config matches 101..105 unless score @s ATPminer_config matches 111..115 unless score @s ATPminer_config matches 121..129 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1 1

tellraw @s ["§d🔥 ",{"text": "ATPminer", "color": "gold", "hover_event": {"action": "show_text", "value": "§6⚡§eATPminer§6⚡ §7Visit Github\nNew version of block-chaining mining! Supports multiple extended features (§d⚡§eCombined Mining, §d⚡§eAuto-Lighting, §d⚡§eSmart Replanting, §d⚡§eArea Farming, §d⚡§eFast Leaf Decay, §d⚡§eRectangle Mining§7, etc.). The datapack uses various optimization methods for better performance and highly supports customizable configurations.§r"}, "click_event": {"action": "open_url", "url": "https://github.com/MC3156/ATPminer"}},"§3(Datapack)§r ",{"text": "Config", "color": "yellow", "hover_event": {"action": "show_text", "value": "§eConfig\n§7You can customize the required parameters for certain features.§r"}}]

execute if score @s dp_vmn.ATPminer_config.width matches 1 run tellraw @s ["§6🔥 §r",{"text": "width-radius ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§ewidth-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.width"}, "color": "light_purple"}, "§e) §bRange 1~5 Global(", {"score": {"name": "#global.config.width", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls horizontal width extension for \"§6Rectangle Mining§7\"\nSets square farmland radius for \"§6Area Farming - Flat Mode§7\""]}}," ",{"text":"1","color":"light_purple","underlined":true}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 102"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 103"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 104"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 105"}}]
execute if score @s dp_vmn.ATPminer_config.width matches 2 run tellraw @s ["§6🔥 §r",{"text": "width-radius ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§ewidth-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.width"}, "color": "light_purple"}, "§e) §bRange 1~5 Global(", {"score": {"name": "#global.config.width", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls horizontal width extension for \"§6Rectangle Mining§7\"\nSets square farmland radius for \"§6Area Farming - Flat Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 101"}}," ",{"text":"2","color":"light_purple","underlined":true}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 103"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 104"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 105"}}]
execute if score @s dp_vmn.ATPminer_config.width matches 3 run tellraw @s ["§6🔥 §r",{"text": "width-radius ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§ewidth-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.width"}, "color": "light_purple"}, "§e) §bRange 1~5 Global(", {"score": {"name": "#global.config.width", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls horizontal width extension for \"§6Rectangle Mining§7\"\nSets square farmland radius for \"§6Area Farming - Flat Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 101"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 102"}}," ",{"text":"3","color":"light_purple","underlined":true}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 104"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 105"}}]
execute if score @s dp_vmn.ATPminer_config.width matches 4 run tellraw @s ["§6🔥 §r",{"text": "width-radius ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§ewidth-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.width"}, "color": "light_purple"}, "§e) §bRange 1~5 Global(", {"score": {"name": "#global.config.width", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls horizontal width extension for \"§6Rectangle Mining§7\"\nSets square farmland radius for \"§6Area Farming - Flat Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 101"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 102"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 103"}}," ",{"text":"4","color":"light_purple","underlined":true}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 105"}}]
execute if score @s dp_vmn.ATPminer_config.width matches 5 run tellraw @s ["§6🔥 §r",{"text": "width-radius ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§ewidth-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.width"}, "color": "light_purple"}, "§e) §bRange 1~5 Global(", {"score": {"name": "#global.config.width", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls horizontal width extension for \"§6Rectangle Mining§7\"\nSets square farmland radius for \"§6Area Farming - Flat Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 101"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 102"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 103"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the width-radius to §d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 104"}}," ",{"text":"5","color":"light_purple","underlined":true}]

execute if score @s dp_vmn.ATPminer_config.height matches 1 run tellraw @s ["§6🔥 §r",{"text": "height-radius ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§eheight-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.height"}, "color": "light_purple"}, "§e) §bRange 1~5 Global(", {"score": {"name": "#global.config.height", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls vertical height extension for \"§6Rectangle Mining§7\""]}}," ",{"text":"1","color":"light_purple","underlined":true}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 112"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 113"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 114"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 115"}}]
execute if score @s dp_vmn.ATPminer_config.height matches 2 run tellraw @s ["§6🔥 §r",{"text": "height-radius ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§eheight-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.height"}, "color": "light_purple"}, "§e) §bRange 1~5 Global(", {"score": {"name": "#global.config.height", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls vertical height extension for \"§6Rectangle Mining§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 111"}}," ",{"text":"2","color":"light_purple","underlined":true}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 113"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 114"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 115"}}]
execute if score @s dp_vmn.ATPminer_config.height matches 3 run tellraw @s ["§6🔥 §r",{"text": "height-radius ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§eheight-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.height"}, "color": "light_purple"}, "§e) §bRange 1~5 Global(", {"score": {"name": "#global.config.height", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls vertical height extension for \"§6Rectangle Mining§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 111"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 112"}}," ",{"text":"3","color":"light_purple","underlined":true}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 114"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 115"}}]
execute if score @s dp_vmn.ATPminer_config.height matches 4 run tellraw @s ["§6🔥 §r",{"text": "height-radius ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§eheight-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.height"}, "color": "light_purple"}, "§e) §bRange 1~5 Global(", {"score": {"name": "#global.config.height", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls vertical height extension for \"§6Rectangle Mining§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 111"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 112"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 113"}}," ",{"text":"4","color":"light_purple","underlined":true}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 115"}}]
execute if score @s dp_vmn.ATPminer_config.height matches 5 run tellraw @s ["§6🔥 §r",{"text": "height-radius ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§eheight-radius(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.height"}, "color": "light_purple"}, "§e) §bRange 1~5 Global(", {"score": {"name": "#global.config.height", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls vertical height extension for \"§6Rectangle Mining§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 111"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 112"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 113"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the height-radius to §d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 114"}}," ",{"text":"5","color":"light_purple","underlined":true}]

execute if score @s dp_vmn.ATPminer_config.depth matches 1 run tellraw @s ["§6🔥 §r",{"text": "depth ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§edepth(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple"}, "§e) §bRange 1~9 Global(", {"score": {"name": "#global.config.depth", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls forward extension depth for \"§6Rectangle Mining§7\" and \"§6Area Farming - Line Mode§7\""]}}," ",{"text":"1","color":"light_purple","underlined":true}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 122"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 123"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 124"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 125"}}," ",{"text": "6", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d6§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 126"}}," ",{"text": "7", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d7§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 127"}}," ",{"text": "8", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d8§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 128"}}," ",{"text": "9", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d9§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 129"}}]
execute if score @s dp_vmn.ATPminer_config.depth matches 2 run tellraw @s ["§6🔥 §r",{"text": "depth ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§edepth(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple"}, "§e) §bRange 1~9 Global(", {"score": {"name": "#global.config.depth", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls forward extension depth for \"§6Rectangle Mining§7\" and \"§6Area Farming - Line Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 121"}}," ",{"text":"2","color":"light_purple","underlined":true}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 123"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 124"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 125"}}," ",{"text": "6", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d6§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 126"}}," ",{"text": "7", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d7§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 127"}}," ",{"text": "8", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d8§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 128"}}," ",{"text": "9", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d9§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 129"}}]
execute if score @s dp_vmn.ATPminer_config.depth matches 3 run tellraw @s ["§6🔥 §r",{"text": "depth ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§edepth(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple"}, "§e) §bRange 1~9 Global(", {"score": {"name": "#global.config.depth", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls forward extension depth for \"§6Rectangle Mining§7\" and \"§6Area Farming - Line Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 121"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 122"}}," ",{"text":"3","color":"light_purple","underlined":true}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 124"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 125"}}," ",{"text": "6", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d6§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 126"}}," ",{"text": "7", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d7§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 127"}}," ",{"text": "8", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d8§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 128"}}," ",{"text": "9", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d9§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 129"}}]
execute if score @s dp_vmn.ATPminer_config.depth matches 4 run tellraw @s ["§6🔥 §r",{"text": "depth ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§edepth(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple"}, "§e) §bRange 1~9 Global(", {"score": {"name": "#global.config.depth", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls forward extension depth for \"§6Rectangle Mining§7\" and \"§6Area Farming - Line Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 121"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 122"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 123"}}," ",{"text":"4","color":"light_purple","underlined":true}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 125"}}," ",{"text": "6", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d6§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 126"}}," ",{"text": "7", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d7§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 127"}}," ",{"text": "8", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d8§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 128"}}," ",{"text": "9", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d9§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 129"}}]
execute if score @s dp_vmn.ATPminer_config.depth matches 5 run tellraw @s ["§6🔥 §r",{"text": "depth ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§edepth(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple"}, "§e) §bRange 1~9 Global(", {"score": {"name": "#global.config.depth", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls forward extension depth for \"§6Rectangle Mining§7\" and \"§6Area Farming - Line Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 121"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 122"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 123"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 124"}}," ",{"text":"5","color":"light_purple","underlined":true}," ",{"text": "6", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d6§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 126"}}," ",{"text": "7", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d7§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 127"}}," ",{"text": "8", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d8§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 128"}}," ",{"text": "9", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d9§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 129"}}]
execute if score @s dp_vmn.ATPminer_config.depth matches 6 run tellraw @s ["§6🔥 §r",{"text": "depth ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§edepth(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple"}, "§e) §bRange 1~9 Global(", {"score": {"name": "#global.config.depth", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls forward extension depth for \"§6Rectangle Mining§7\" and \"§6Area Farming - Line Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 121"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 122"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 123"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 124"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 125"}}," ",{"text":"6","color":"light_purple","underlined":true}," ",{"text": "7", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d7§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 127"}}," ",{"text": "8", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d8§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 128"}}," ",{"text": "9", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d9§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 129"}}]
execute if score @s dp_vmn.ATPminer_config.depth matches 7 run tellraw @s ["§6🔥 §r",{"text": "depth ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§edepth(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple"}, "§e) §bRange 1~9 Global(", {"score": {"name": "#global.config.depth", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls forward extension depth for \"§6Rectangle Mining§7\" and \"§6Area Farming - Line Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 121"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 122"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 123"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 124"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 125"}}," ",{"text": "6", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d6§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 126"}}," ",{"text":"7","color":"light_purple","underlined":true}," ",{"text": "8", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d8§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 128"}}," ",{"text": "9", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d9§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 129"}}]
execute if score @s dp_vmn.ATPminer_config.depth matches 8 run tellraw @s ["§6🔥 §r",{"text": "depth ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§edepth(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple"}, "§e) §bRange 1~9 Global(", {"score": {"name": "#global.config.depth", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls forward extension depth for \"§6Rectangle Mining§7\" and \"§6Area Farming - Line Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 121"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 122"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 123"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 124"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 125"}}," ",{"text": "6", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d6§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 126"}}," ",{"text": "7", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d7§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 127"}}," ",{"text":"8","color":"light_purple","underlined":true}," ",{"text": "9", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d9§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 129"}}]
execute if score @s dp_vmn.ATPminer_config.depth matches 9 run tellraw @s ["§6🔥 §r",{"text": "depth ", "color": "light_purple", "hover_event": {"action": "show_text", "value": ["§edepth(", {"score": {"name": "@s", "objective": "dp_vmn.ATPminer_config.depth"}, "color": "light_purple"}, "§e) §bRange 1~9 Global(", {"score": {"name": "#global.config.depth", "objective": "dp_vmn.global_setting"}, "color": "light_purple"}, "§b)§7\nControls forward extension depth for \"§6Rectangle Mining§7\" and \"§6Area Farming - Line Mode§7\""]}}," ",{"text": "1", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d1§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 121"}}," ",{"text": "2", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d2§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 122"}}," ",{"text": "3", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d3§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 123"}}," ",{"text": "4", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d4§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 124"}}," ",{"text": "5", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d5§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 125"}}," ",{"text": "6", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d6§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 126"}}," ",{"text": "7", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d7§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 127"}}," ",{"text": "8", "color": "dark_purple", "underlined": false, "hover_event": {"action": "show_text", "value": "§eSet the depth to§d8§r"}, "click_event": {"action": "run_command", "command": "/trigger ATPminer_config set 128"}}," ",{"text":"9","color":"light_purple","underlined":true}]
