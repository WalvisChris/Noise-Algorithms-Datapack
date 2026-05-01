fill ~ ~ ~ ~ ~8 ~ dirt
setblock ~ ~8 ~ grass_block
execute if score @s random10 matches 4.. run fill ~ ~ ~ ~ ~5 ~ stone
fill ~ ~2 ~ ~ ~4 ~ sand replace grass_block
fill ~ ~ ~ ~ ~3 ~ blue_stained_glass replace air
fill ~ ~ ~ ~ ~2 ~ stone replace dirt
fill ~ ~ ~ ~ ~2 ~ gravel replace grass_block
execute if score @s random10 matches 6.. if score @e[tag=r10, limit=1, sort=random] random10 matches 8.. run setblock ~ ~9 ~ short_grass
