##zh_cn

tellraw @s ["§c卸载成功！现在通过/datapack disable或直接删除文件\n并/reload即可抹除本数据包的一切痕迹！(可以不重启服务器或存档)\nATPminer_config计分板可以手动清除§r",{"text": "[点击复制指令]", "color": "gold", "hover_event": {"action": "show_text", "value": "§c删除控制卸载的计分板\n注意，你需要先禁用数据包，否则删除计分板后\n配置项会被TICK函数再注册§6§r"}, "click_event": {"action": "suggest_command", "command": "/scoreboard objectives remove ATPminer_config"}}]
