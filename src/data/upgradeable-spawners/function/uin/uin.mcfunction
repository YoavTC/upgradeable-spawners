execute unless score @s upgradeable_spawners.uninstall matches 1 run return run tellraw @s {text:"Use /function upgradeable-spawners:uninstall",color:"red"}

# Stop schedules functions
schedule clear upgradeable-spawners:_tick
schedule clear upgradeable-spawners:uin/uninstall_cancel

# Clean scoreboards
scoreboard objectives remove upgradeable_spawners.spawner_levels.temp_speed
scoreboard objectives remove upgradeable_spawners.spawner_levels.temp_range
scoreboard objectives remove upgradeable_spawners.spawner_levels.temp_activation
scoreboard objectives remove upgradeable_spawners.uninstall

# Reset spawners
execute as @e[type=marker,tag=upgradeable-spawner.spawner] positioned as @s run function upgradeable-spawners:uin/reset

# Kill entities
kill @e[type=marker,tag=upgradeable-spawner.spawner]
kill @e[type=text_display,tag=upgradeable-spawner.text]
kill @e[type=item_display,tag=upgradeable-spawner.display]

tellraw @s {text:"Datapack uninstalled, you can now safely remove the files",color:blue}
tellraw @s [{text:"Check out my other datapacks though (: ",color:"aqua"},{text:"https://yoavtc.work/minecraft",click_event:{action:"open_url",url:"https://yoavtc.work/minecraft"},underlined:true}]