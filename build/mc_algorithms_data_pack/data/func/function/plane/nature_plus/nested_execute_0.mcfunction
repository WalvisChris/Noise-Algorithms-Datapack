fill ~ ~ ~ ~ ~ ~ dirt
setblock ~ ~ ~ grass_block
execute if score @s height matches 4.. run fill ~ ~ ~ ~ ~-3 ~ stone
execute if score @s height matches 6.. if score @e[tag=r10, limit=1, sort=random] random matches 8.. run setblock ~ ~1 ~ short_grass
