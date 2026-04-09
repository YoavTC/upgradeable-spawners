setblock ~1 ~ ~ air
setblock ~ ~1 ~ air
setblock ~ ~ ~1 air
setblock ~-1 ~ ~ air
setblock ~ ~-1 ~ air
setblock ~ ~ ~-1 air

playsound minecraft:block.spawner.place master @a ~ ~ ~ 1 .2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.5
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 0.5

particle block{block_state:"minecraft:spawner"} ~ ~ ~ 0.5 0.5 0.5 2 100 normal