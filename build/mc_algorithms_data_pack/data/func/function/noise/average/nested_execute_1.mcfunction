execute store result score @s temp run scoreboard players get @e[tag=dummy, limit=1, sort=nearest] height
scoreboard players operation @s temp *= 100 const
scoreboard players operation @s sum += @s temp
scoreboard players add @s count 1
