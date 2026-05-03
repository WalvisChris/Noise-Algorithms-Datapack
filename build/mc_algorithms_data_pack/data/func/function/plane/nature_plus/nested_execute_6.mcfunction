fill ~ ~ ~ ~ ~6 ~ dirt
setblock ~ ~6 ~ grass_block
execute if score @s height matches 4.. run fill ~ ~ ~ ~ ~3 ~ stone
fill ~ ~2 ~ ~ ~4 ~ sand replace grass_block
fill ~ ~ ~ ~ ~3 ~ blue_stained_glass replace air
fill ~ ~ ~ ~ ~2 ~ stone replace dirt
fill ~ ~ ~ ~ ~2 ~ gravel replace grass_block
execute if score @s height matches 6.. if score @e[tag=r10, limit=1, sort=random] random matches 8.. run setblock ~ ~7 ~ short_grass
