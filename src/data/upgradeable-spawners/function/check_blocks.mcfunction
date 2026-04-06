execute unless block ~ ~ ~ spawner run return fail

execute unless block ~1 ~ ~ lapis_block run return fail
execute unless block ~ ~1 ~ lapis_block run return fail
execute unless block ~ ~ ~1 lapis_block run return fail
execute unless block ~-1 ~ ~ lapis_block run return fail
execute unless block ~ ~-1 ~ lapis_block run return fail
execute unless block ~ ~ ~-1 lapis_block run return fail

execute align xyz positioned ~.5 ~.5 ~.5 if entity @n[type=marker,distance=..0.0001] run return run say exists!

execute align xyz positioned ~.5 ~.5 ~.5 run function upgradeable-spawners:create

function upgradeable-spawners:clear_blocks