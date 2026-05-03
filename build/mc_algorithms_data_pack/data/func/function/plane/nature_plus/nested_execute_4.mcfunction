fill ~ ~ ~ ~ ~4 ~ dirt
setblock ~ ~4 ~ grass_block
execute if score @s height matches 4.. run fill ~ ~ ~ ~ ~1 ~ stone
execute if score @s height matches 6.. if score @e[tag=r10, limit=1, sort=random] random matches 8.. run setblock ~ ~5 ~ short_grass
