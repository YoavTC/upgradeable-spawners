execute if score @s upgradeable_spawners.uninstall matches 1 run return run function upgradeable-spawners:uin/uin

tellraw @s {text:"Are you sure you want to uninstall? This action can't be undone!",color:yellow}
tellraw @s {text:"Run this command again in the next 10s to uninstall",color:"red"}

scoreboard players set @s upgradeable_spawners.uninstall 1
schedule function upgradeable-spawners:uin/uninstall_cancel 10s