function func:plane/refill
execute as @e[tag=dummy] store result score @s binary run scoreboard players get @e[tag=r2, limit=1, sort=random] random2
execute as @e[tag=dummy] at @s run function func:noise/render2
