# Score
execute store result score @s spawner_levels.temp_speed run data get entity @s data.spawner_levels.speed 1
scoreboard players add @s spawner_levels.temp_speed 1
execute store result entity @s data.spawner_levels.speed int 1 run scoreboard players get @s spawner_levels.temp_speed

scoreboard players reset @s spawner_levels.temp_speed

# Spawner
execute if entity @s[nbt={data:{spawner_levels:{speed:1}}}] run data merge block ~ ~ ~ {MinSpawnDelay: 200s, MaxSpawnDelay: 800s}
execute if entity @s[nbt={data:{spawner_levels:{speed:2}}}] run data merge block ~ ~ ~ {MinSpawnDelay: 170s, MaxSpawnDelay: 680s}
execute if entity @s[nbt={data:{spawner_levels:{speed:3}}}] run data merge block ~ ~ ~ {MinSpawnDelay: 140s, MaxSpawnDelay: 560s}
execute if entity @s[nbt={data:{spawner_levels:{speed:4}}}] run data merge block ~ ~ ~ {MinSpawnDelay: 110s, MaxSpawnDelay: 440s}
execute if entity @s[nbt={data:{spawner_levels:{speed:5}}}] run data merge block ~ ~ ~ {MinSpawnDelay: 80s, MaxSpawnDelay: 320s}

# Final level upgrade sound
execute if entity @s[nbt={data:{spawner_levels:{speed:5}}}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2

# Advancement
execute if entity @s[nbt={data:{spawner_levels:{speed:5}}}] run advancement grant @a[distance=..5] through upgradeable-spawners:max_speed

# Text
execute if entity @s[nbt={data:{spawner_levels:{speed:1}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[0].text set value "ɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{speed:2}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[0].text set value "ɪɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{speed:3}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[0].text set value "ɪɪɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{speed:4}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[0].text set value "ɪᴠ\n"
execute if entity @s[nbt={data:{spawner_levels:{speed:5}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[0].text set value "ᴠ\n"