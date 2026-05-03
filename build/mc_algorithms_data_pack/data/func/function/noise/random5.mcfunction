function func:plane/reset
execute as @e[tag=dummy] store result score @s height run scoreboard players get @e[tag=r5, limit=1, sort=random] random
execute as @e[tag=dummy] at @s run function func:utils/render5
