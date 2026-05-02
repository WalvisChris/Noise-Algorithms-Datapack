function func:plane/clear
function func:plane/refill
execute at @e[tag=dummy, limit=12, sort=random] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["control"], Small: 0, Invisible: 0}
execute as @e[tag=dummy] at @s run function func:utils/get_distance_to_control
execute as @e[tag=dummy] at @s run function func:utils/render10
kill @e[tag=control]
