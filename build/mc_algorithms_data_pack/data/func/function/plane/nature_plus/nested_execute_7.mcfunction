fill ~ ~ ~ ~ ~7 ~ dirt
setblock ~ ~7 ~ grass_block
execute if score @s height matches 4.. run fill ~ ~ ~ ~ ~4 ~ stone
execute if score @s height matches 6.. if score @e[tag=r10, limit=1, sort=random] random matches 8.. run setblock ~ ~8 ~ short_grass
