execute if entity @s[nbt={data:{spawner_levels:{range:5}}}] if predicate upgradeable-spawners:surrounded_by/lapis_block run return run function upgradeable-spawners:reject_blocks
execute if entity @s[nbt={data:{spawner_levels:{activation:5}}}] if predicate upgradeable-spawners:surrounded_by/creaking_heart run return run function upgradeable-spawners:reject_blocks
execute if entity @s[nbt={data:{spawner_levels:{speed:5}}}] if predicate upgradeable-spawners:surrounded_by/sculk_catalyst run return run function upgradeable-spawners:reject_blocks

execute if predicate upgradeable-spawners:surrounded_by/lapis_block run function upgradeable-spawners:upgrade/range
execute if predicate upgradeable-spawners:surrounded_by/creaking_heart run function upgradeable-spawners:upgrade/activation
execute if predicate upgradeable-spawners:surrounded_by/sculk_catalyst run function upgradeable-spawners:upgrade/speed

function upgradeable-spawners:clear_blocks