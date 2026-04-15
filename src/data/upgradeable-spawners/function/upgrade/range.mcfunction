# Score
execute store result score @s upgradeable_spawners.spawner_levels.temp_range run data get entity @s data.spawner_levels.range 1
scoreboard players add @s upgradeable_spawners.spawner_levels.temp_range 1
execute store result entity @s data.spawner_levels.range int 1 run scoreboard players get @s upgradeable_spawners.spawner_levels.temp_range

scoreboard players reset @s upgradeable_spawners.spawner_levels.temp_range

# Spawner
execute if entity @s[nbt={data:{spawner_levels:{range:1}}}] run data merge block ~ ~ ~ {SpawnRange: 4s, SpawnCount: 4s, MaxNearbyEntities: 6s}
execute if entity @s[nbt={data:{spawner_levels:{range:1}}}] run data merge block ~ ~ ~ {SpawnRange: 5s, SpawnCount: 8s, MaxNearbyEntities: 10s}
execute if entity @s[nbt={data:{spawner_levels:{range:1}}}] run data merge block ~ ~ ~ {SpawnRange: 6s, SpawnCount: 12s, MaxNearbyEntities: 14s}
execute if entity @s[nbt={data:{spawner_levels:{range:1}}}] run data merge block ~ ~ ~ {SpawnRange: 7s, SpawnCount: 16s, MaxNearbyEntities: 18s}
execute if entity @s[nbt={data:{spawner_levels:{range:1}}}] run data merge block ~ ~ ~ {SpawnRange: 8s, SpawnCount: 20s, MaxNearbyEntities: 22s}

# Final level upgrade sound
execute if entity @s[nbt={data:{spawner_levels:{range:5}}}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2

# Advancement
execute if entity @s[nbt={data:{spawner_levels:{range:5}}}] run advancement grant @a[distance=..5] through upgradeable-spawners:max_range

# Text
execute if entity @s[nbt={data:{spawner_levels:{range:1}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[2].text set value "ɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{range:2}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[2].text set value "ɪɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{range:3}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[2].text set value "ɪɪɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{range:4}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[2].text set value "ɪᴠ\n"
execute if entity @s[nbt={data:{spawner_levels:{range:5}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[2].text set value "ᴠ\n"