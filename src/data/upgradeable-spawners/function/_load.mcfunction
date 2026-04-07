# Setup scoreboards
scoreboard objectives remove spawner_levels.temp_speed
scoreboard objectives remove spawner_levels.temp_range
scoreboard objectives remove spawner_levels.temp_activation

scoreboard objectives add spawner_levels.temp_speed dummy
scoreboard objectives add spawner_levels.temp_range dummy
scoreboard objectives add spawner_levels.temp_activation dummy

# Schedule tick
function upgradeable-spawners:_tick