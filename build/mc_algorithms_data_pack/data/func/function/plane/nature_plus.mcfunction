function func:plane/clear
execute as @e[tag=dummy] at @s if score @s height matches 1 run function func:plane/nature_plus/nested_execute_0
execute as @e[tag=dummy] at @s if score @s height matches 2 run function func:plane/nature_plus/nested_execute_1
execute as @e[tag=dummy] at @s if score @s height matches 3 run function func:plane/nature_plus/nested_execute_2
execute as @e[tag=dummy] at @s if score @s height matches 4 run function func:plane/nature_plus/nested_execute_3
execute as @e[tag=dummy] at @s if score @s height matches 5 run function func:plane/nature_plus/nested_execute_4
execute as @e[tag=dummy] at @s if score @s height matches 6 run function func:plane/nature_plus/nested_execute_5
execute as @e[tag=dummy] at @s if score @s height matches 7 run function func:plane/nature_plus/nested_execute_6
execute as @e[tag=dummy] at @s if score @s height matches 8 run function func:plane/nature_plus/nested_execute_7
execute as @e[tag=dummy] at @s if score @s height matches 9 run function func:plane/nature_plus/nested_execute_8
execute as @e[tag=dummy] at @s if score @s height matches 10 run function func:plane/nature_plus/nested_execute_9
execute as @e[tag=dummy] at @s run function func:plane/nature_plus/nested_execute_10
execute as @e[tag=dummy] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=dummy] store result score @s zPos run data get entity @s Pos[2] 1
tag @e[tag=dummy, scores={height=10, xPos=3..17, zPos=3..17}, limit=1, sort=random] add tree
execute at @e[tag=tree] run fill ~ ~8 ~ ~ ~12 ~ oak_log
execute at @e[tag=tree] run fill ~-1 ~12 ~-2 ~1 ~13 ~2 oak_leaves replace air
execute at @e[tag=tree] run fill ~-2 ~12 ~-1 ~2 ~13 ~1 oak_leaves replace air
execute at @e[tag=tree] run fill ~-1 ~14 ~-1 ~1 ~14 ~1 oak_leaves replace air
execute at @e[tag=tree] run fill ~-1 ~15 ~ ~1 ~15 ~ oak_leaves replace air
execute at @e[tag=tree] run fill ~ ~15 ~-1 ~ ~15 ~1 oak_leaves replace air
tag @e[tag=tree] remove tree
