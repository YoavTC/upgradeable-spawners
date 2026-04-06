# Score
execute store result score @s spawner_levels.temp_speed run data get entity @s data.spawner_levels.speed 1
scoreboard players add @s spawner_levels.temp_speed 1
execute store result entity @s data.spawner_levels.speed int 1 run scoreboard players get @s spawner_levels.temp_speed

scoreboard players reset @s spawner_levels.temp_speed

# Text
execute if entity @s[nbt={data:{spawner_levels:{speed:1}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[0].text set value "ɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{speed:2}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[0].text set value "ɪɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{speed:3}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[0].text set value "ɪɪɪ\n"
execute if entity @s[nbt={data:{spawner_levels:{speed:4}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[0].text set value "ɪᴠ\n"
execute if entity @s[nbt={data:{spawner_levels:{speed:5}}}] run return run data modify entity @n[type=minecraft:text_display,distance=..0.00001] text.extra[0].text set value "ᴠ\n"