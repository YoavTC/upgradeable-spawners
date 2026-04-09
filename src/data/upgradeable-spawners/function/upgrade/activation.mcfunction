# Score
execute store result score @s spawner_levels.temp_activation run data get entity @s data.spawner_levels.activation 1
scoreboard players add @s spawner_levels.temp_activation 1
execute store result entity @s data.spawner_levels.activation int 1 run scoreboard players get @s spawner_levels.temp_activation

scoreboard players reset @s spawner_levels.temp_activation

# Spawner
execute if entity @s[nbt={data:{spawner_levels:{activation:1}}}] run data modify block ~ ~ ~ RequiredPlayerRange set value 16s
execute if entity @s[nbt={data:{spawner_levels:{activation:2}}}] run data modify block ~ ~ ~ RequiredPlayerRange set value 18s
execute if entity @s[nbt={data:{spawner_levels:{activation:3}}}] run data modify block ~ ~ ~ RequiredPlayerRange set value 20s
execute if entity @s[nbt={data:{spawner_levels:{activation:4}}}] run data modify block ~ ~ ~ RequiredPlayerRange set value 22s
execute if entity @s[nbt={data:{spawner_levels:{activation:5}}}] run data modify block ~ ~ ~ RequiredPlayerRange set value 24s

# Final level upgrade sound
execute if entity @s[nbt={data:{spawner_levels:{activation:5}}}] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2

# Advancement
execute if entity @s[nbt={data:{spawner_levels:{activation:5}}}] run advancement grant @a[distance=..5] through upgradeable-spawners:max_activation

# Text
execute if entity @s[nbt={data:{spawner_levels:{activation:1}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[4].text set value "ɪ"
execute if entity @s[nbt={data:{spawner_levels:{activation:2}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[4].text set value "ɪɪ"
execute if entity @s[nbt={data:{spawner_levels:{activation:3}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[4].text set value "ɪɪɪ"
execute if entity @s[nbt={data:{spawner_levels:{activation:4}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[4].text set value "ɪᴠ"
execute if entity @s[nbt={data:{spawner_levels:{activation:5}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[4].text set value "ᴠ"
