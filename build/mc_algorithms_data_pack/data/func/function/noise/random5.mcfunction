function func:plane/refill
execute as @e[tag=dummy] store result score @s random5 run scoreboard players get @e[tag=r5, limit=1, sort=random] random5
execute as @e[tag=dummy] at @s run function func:utils/render5
