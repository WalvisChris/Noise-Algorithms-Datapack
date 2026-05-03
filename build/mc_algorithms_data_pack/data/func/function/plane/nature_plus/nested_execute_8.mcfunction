fill ~ ~ ~ ~ ~8 ~ dirt
setblock ~ ~8 ~ grass_block
execute if score @s height matches 4.. run fill ~ ~ ~ ~ ~5 ~ stone
execute if score @s height matches 6.. if score @e[tag=r10, limit=1, sort=random] random matches 8.. run setblock ~ ~9 ~ short_grass
