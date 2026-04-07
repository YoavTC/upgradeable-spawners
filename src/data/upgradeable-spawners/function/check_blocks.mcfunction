execute unless block ~ ~ ~ spawner run return fail

execute unless block ~1 ~ ~ #upgradeable-spawners:upgrade_blocks run return fail
execute unless block ~ ~1 ~ #upgradeable-spawners:upgrade_blocks run return fail
execute unless block ~ ~ ~1 #upgradeable-spawners:upgrade_blocks run return fail
execute unless block ~-1 ~ ~ #upgradeable-spawners:upgrade_blocks run return fail
execute unless block ~ ~-1 ~ #upgradeable-spawners:upgrade_blocks run return fail
execute unless block ~ ~ ~-1 #upgradeable-spawners:upgrade_blocks run return fail

# Check for mix of upgrade blocks
execute unless predicate upgradeable-spawners:surrounded_by/lapis_block unless predicate upgradeable-spawners:surrounded_by/creaking_heart unless predicate upgradeable-spawners:surrounded_by/sculk_catalyst run return fail

execute align xyz positioned ~.5 ~.5 ~.5 if entity @n[type=marker,distance=..0.0001] run return run say exists!

execute align xyz if predicate upgradeable-spawners:surrounded_by/lapis_block positioned ~.5 ~.5 ~.5 run function upgradeable-spawners:create {"type": "range"}
execute align xyz if predicate upgradeable-spawners:surrounded_by/creaking_heart positioned ~.5 ~.5 ~.5 run function upgradeable-spawners:create {"type": "activation"}
execute align xyz if predicate upgradeable-spawners:surrounded_by/sculk_catalyst positioned ~.5 ~.5 ~.5 run function upgradeable-spawners:create {"type": "speed"}

function upgradeable-spawners:clear_blocks