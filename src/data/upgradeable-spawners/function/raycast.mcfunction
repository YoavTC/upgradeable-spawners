execute positioned ~ ~ ~ if block ~ ~ ~ spawner run return run function upgradeable-spawners:check_blocks
execute positioned ~.2 ~ ~ if block ~ ~ ~ spawner run return run function upgradeable-spawners:check_blocks
execute positioned ~ ~.2 ~ if block ~ ~ ~ spawner run return run function upgradeable-spawners:check_blocks
execute positioned ~ ~ ~.2 if block ~ ~ ~ spawner run return run function upgradeable-spawners:check_blocks
execute positioned ~-.2 ~ ~ if block ~ ~ ~ spawner run return run function upgradeable-spawners:check_blocks
execute positioned ~ ~-.2 ~ if block ~ ~ ~ spawner run return run function upgradeable-spawners:check_blocks
execute positioned ~ ~ ~-.2 if block ~ ~ ~ spawner run return run function upgradeable-spawners:check_blocks

execute if entity @p[distance=10..] run return fail

execute positioned ^ ^ ^0.1 run function upgradeable-spawners:raycast