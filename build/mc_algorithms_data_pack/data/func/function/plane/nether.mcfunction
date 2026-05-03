function func:plane/clear
execute as @e[tag=dummy] at @s if score @s height matches 1 run function func:plane/nether/nested_execute_0
execute as @e[tag=dummy] at @s if score @s height matches 2 run function func:plane/nether/nested_execute_1
execute as @e[tag=dummy] at @s if score @s height matches 3 run function func:plane/nether/nested_execute_2
execute as @e[tag=dummy] at @s if score @s height matches 4 run function func:plane/nether/nested_execute_3
execute as @e[tag=dummy] at @s if score @s height matches 5 run function func:plane/nether/nested_execute_4
execute as @e[tag=dummy] at @s if score @s height matches 6 run function func:plane/nether/nested_execute_5
execute as @e[tag=dummy] at @s if score @s height matches 7 run function func:plane/nether/nested_execute_6
execute as @e[tag=dummy] at @s if score @s height matches 8 run function func:plane/nether/nested_execute_7
execute as @e[tag=dummy] at @s if score @s height matches 9 run function func:plane/nether/nested_execute_8
execute as @e[tag=dummy] at @s if score @s height matches 10 run function func:plane/nether/nested_execute_9
execute as @e[tag=dummy] at @s run fill ~ ~ ~ ~ ~3 ~ orange_stained_glass replace air
execute as @e[tag=dummy] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=dummy] store result score @s zPos run data get entity @s Pos[2] 1
tag @e[tag=dummy, scores={height=10, xPos=4..16, zPos=4..16}, limit=1, sort=random] add fortress
execute at @e[tag=fortress] run fill ~-2 ~ ~-2 ~2 ~15 ~2 nether_bricks replace air
execute as @e[tag=fortress] if score @s xPos >= @s zPos at @s run function func:plane/nether/nested_execute_10
execute as @e[tag=fortress] unless score @s xPos >= @s zPos at @s run function func:plane/nether/nested_execute_11
tag @e[tag=fortress] remove fortress
