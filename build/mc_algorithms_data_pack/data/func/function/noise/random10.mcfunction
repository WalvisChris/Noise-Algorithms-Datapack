function func:plane/refill
execute as @e[tag=dummy] store result score @s random10 run scoreboard players get @e[tag=r10, limit=1, sort=random] random10
execute as @e[tag=dummy] at @s run function func:utils/render10
