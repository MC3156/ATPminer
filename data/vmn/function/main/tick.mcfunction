##TICK

scoreboard objectives add ATPminer_config trigger ["§6⚡§7ATPM参数配置§6⚡§r"]
execute unless score #uninstall ATPminer_config matches 3156513 run function #vmn:tick
