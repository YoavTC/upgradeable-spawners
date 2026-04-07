# Check for broken spawners
execute as @e[type=marker,tag=upgradeable-spawner] positioned as @s unless block ~ ~ ~ spawner run function upgradeable-spawners:destroy

# Tick interval. Lower value = updates faster but worse performance
schedule function upgradeable-spawners:_tick 5s