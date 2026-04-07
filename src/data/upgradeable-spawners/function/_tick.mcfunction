execute as @e[type=marker,tag=upgradeable-spawner] positioned as @s unless block ~ ~ ~ spawner run function upgradeable-spawners:destroy

schedule function upgradeable-spawners:_tick 5s