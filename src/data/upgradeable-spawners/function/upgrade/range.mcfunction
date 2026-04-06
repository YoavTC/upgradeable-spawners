# Score
execute store result score @s spawner_levels.temp_range run data get entity @s data.spawner_levels.range 1
scoreboard players add @s spawner_levels.temp_range 1
execute store result entity @s data.spawner_levels.range int 1 run scoreboard players get @s spawner_levels.temp_range

scoreboard players reset @s spawner_levels.temp_range

# Spawner
execute if entity @s[nbt={data:{spawner_levels:{range:1}}}] run data modify block ~ ~ ~ SpawnRange set value 4s
execute if entity @s[nbt={data:{spawner_levels:{range:2}}}] run data modify block ~ ~ ~ SpawnRange set value 5s
execute if entity @s[nbt={data:{spawner_levels:{range:3}}}] run data modify block ~ ~ ~ SpawnRange set value 6s
execute if entity @s[nbt={data:{spawner_levels:{range:4}}}] run data modify block ~ ~ ~ SpawnRange set value 7s
execute if entity @s[nbt={data:{spawner_levels:{range:5}}}] run data modify block ~ ~ ~ SpawnRange set value 8s

# Text
execute if entity @s[nbt={data:{spawner_levels:{range:1}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[2].text set value "ɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{range:2}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[2].text set value "ɪɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{range:3}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[2].text set value "ɪɪɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{range:4}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[2].text set value "ɪᴠ\n"
execute if entity @s[nbt={data:{spawner_levels:{range:5}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[2].text set value "ᴠ\n"