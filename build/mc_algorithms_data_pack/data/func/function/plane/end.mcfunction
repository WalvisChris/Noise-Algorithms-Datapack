function func:plane/clear
execute as @e[tag=dummy] at @s if score @s height matches 1 run fill ~ ~ ~ ~ ~ ~ end_stone
execute as @e[tag=dummy] at @s if score @s height matches 2 run fill ~ ~ ~ ~ ~1 ~ end_stone
execute as @e[tag=dummy] at @s if score @s height matches 3 run fill ~ ~ ~ ~ ~2 ~ end_stone
execute as @e[tag=dummy] at @s if score @s height matches 4 run fill ~ ~ ~ ~ ~3 ~ end_stone
execute as @e[tag=dummy] at @s if score @s height matches 5 run fill ~ ~ ~ ~ ~4 ~ end_stone
execute as @e[tag=dummy] at @s if score @s height matches 6 run fill ~ ~ ~ ~ ~5 ~ end_stone
execute as @e[tag=dummy] at @s if score @s height matches 7 run fill ~ ~ ~ ~ ~6 ~ end_stone
execute as @e[tag=dummy] at @s if score @s height matches 8 run fill ~ ~ ~ ~ ~7 ~ end_stone
execute as @e[tag=dummy] at @s if score @s height matches 9 run fill ~ ~ ~ ~ ~8 ~ end_stone
execute as @e[tag=dummy] at @s if score @s height matches 10 run fill ~ ~ ~ ~ ~9 ~ end_stone
execute as @e[tag=dummy] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=dummy] store result score @s zPos run data get entity @s Pos[2] 1
tag @e[tag=dummy, scores={height=..5, xPos=4..16, zPos=4..16}, limit=1, sort=random] add pillar
execute if score @e[tag=r2, limit=1, sort=random] random matches 1 run tag @e[tag=pillar] add caged
execute at @e[tag=pillar] run fill ~-1 ~ ~-3 ~1 ~20 ~3 obsidian
execute at @e[tag=pillar] run fill ~-3 ~ ~-1 ~3 ~20 ~1 obsidian
execute at @e[tag=pillar] run fill ~-2 ~ ~-2 ~2 ~20 ~2 obsidian
execute at @e[tag=caged] run fill ~-2 ~21 ~-2 ~2 ~23 ~2 iron_bars
execute at @e[tag=caged] run fill ~-1 ~21 ~-1 ~1 ~22 ~1 air
execute at @e[tag=pillar] run setblock ~ ~21 ~ beacon
execute at @e[tag=pillar] run tag @e[tag=dummy, tag=!pillar, scores={xPos=1..19, zPos=1..19}, limit=1, sort=random, distance=7..] add portal
execute at @e[tag=portal] run fill ~-1 ~16 ~ ~1 ~18 ~ bedrock
execute at @e[tag=portal] run fill ~ ~16 ~-1 ~ ~18 ~1 bedrock
execute at @e[tag=portal] run fill ~ ~15 ~ ~ ~19 ~ bedrock
execute at @e[tag=portal] run fill ~-1 ~17 ~-1 ~1 ~17 ~1 air replace bedrock
execute at @e[tag=portal] run setblock ~ ~17 ~ black_concrete
tag @e[tag=pillar] remove pillar
tag @e[tag=caged] remove caged
tag @e[tag=portal] remove portal
