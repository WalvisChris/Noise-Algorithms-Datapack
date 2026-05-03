function func:plane/reset
scoreboard players set @e[tag=dummy] height 1
execute at @e[tag=dummy, limit=10, sort=random] run summon armor_stand ~ ~ ~ {Tags: ["walker"], NoGravity: 1, Small: 0, Invisible: 0}
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=walker] run scoreboard players operation @s random = @e[tag=r4, limit=1, sort=random] random
execute as @e[tag=walker] store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] store result score @s zPos run data get entity @s Pos[2] 1
execute as @e[tag=walker] if score @s random matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s random matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s random matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s random matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1
execute as @e[tag=walker] at @s run scoreboard players add @e[tag=dummy, limit=1, sort=nearest, scores={height=..9}] height 1
execute as @e[tag=dummy] at @s run function func:utils/render10
kill @e[tag=walker]
