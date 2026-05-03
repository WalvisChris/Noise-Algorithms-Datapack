fill ~ ~ ~ ~ ~3 ~ dirt
setblock ~ ~3 ~ grass_block
execute if score @s height matches 4.. run fill ~ ~ ~ ~ ~ ~ stone
execute if score @s height matches 6.. if score @e[tag=r10, limit=1, sort=random] random matches 8.. run setblock ~ ~4 ~ short_grass
