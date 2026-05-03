summon armor_stand 0 -63 0 {Tags: ["avg"], NoGravity: 1, Small: 0, Invisible: 0}
execute as @e[tag=dummy, limit=1, sort=random] at @s run tp @e[tag=avg] ~ ~ ~
scoreboard players set @e[tag=avg] sum 0
scoreboard players set @e[tag=avg] count 0
execute as @e[tag=avg] at @s positioned ~ ~ ~-1 if entity @e[tag=dummy, distance=..0.5] run function func:noise/average/nested_execute_0
execute as @e[tag=avg] at @s positioned ~ ~ ~1 if entity @e[tag=dummy, distance=..0.5] run function func:noise/average/nested_execute_1
execute as @e[tag=avg] at @s positioned ~1 ~ ~ if entity @e[tag=dummy, distance=..0.5] run function func:noise/average/nested_execute_2
execute as @e[tag=avg] at @s positioned ~-1 ~ ~ if entity @e[tag=dummy, distance=..0.5] run function func:noise/average/nested_execute_3
scoreboard players operation @e[tag=avg] sum /= @e[tag=avg] count
execute as @e[tag=avg] at @s run scoreboard players operation @e[tag=dummy, limit=1, sort=nearest] height = @s sum
execute as @e[scores={height=11..}] run function func:utils/round100
execute as @e[tag=dummy] at @s run function func:utils/render10
kill @e[tag=avg]
