fill ~ ~ ~ ~ ~6 ~ dirt
setblock ~ ~6 ~ grass_block
execute if score @s height matches 4.. run fill ~ ~ ~ ~ ~3 ~ stone
execute if score @s height matches 6.. if score @e[tag=r10, limit=1, sort=random] random matches 8.. run setblock ~ ~7 ~ short_grass
