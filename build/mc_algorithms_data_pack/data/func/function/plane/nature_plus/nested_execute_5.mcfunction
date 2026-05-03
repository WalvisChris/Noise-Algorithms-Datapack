fill ~ ~ ~ ~ ~5 ~ dirt
setblock ~ ~5 ~ grass_block
execute if score @s height matches 4.. run fill ~ ~ ~ ~ ~2 ~ stone
execute if score @s height matches 6.. if score @e[tag=r10, limit=1, sort=random] random matches 8.. run setblock ~ ~6 ~ short_grass
