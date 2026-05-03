function func:plane/clear
function func:plane/kill
summon armor_stand 0 -63 0 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 0 -63 5 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 0 -63 10 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 0 -63 15 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 0 -63 20 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 5 -63 0 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 5 -63 5 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 5 -63 10 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 5 -63 15 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 5 -63 20 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 10 -63 0 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 10 -63 5 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 10 -63 10 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 10 -63 15 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 10 -63 20 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 15 -63 0 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 15 -63 5 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 15 -63 10 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 15 -63 15 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 15 -63 20 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 20 -63 0 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 20 -63 5 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 20 -63 10 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 20 -63 15 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
summon armor_stand 20 -63 20 {Tags: ["grid", "dummy"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=grid] store result score @s height run scoreboard players get @e[tag=r10, limit=1, sort=random] random
execute as @e[tag=grid] at @s run function func:utils/render10
summon armor_stand 0 -63 0 {Tags: ["lerp", "dummy"], NoGravity: 1, Small: 0, Invisible: 1}
tp @e[tag=lerp] 0 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
tp @e[tag=lerp] 5 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
tp @e[tag=lerp] 10 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
tp @e[tag=lerp] 15 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
tp @e[tag=lerp] 20 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=grid] at @s run function func:utils/render10
tp @e[tag=lerp] 0 -63 0
tp @e[tag=lerp] 0 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 2
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 3
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 4
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 5
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 6
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 7
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 8
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 9
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 10
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 11
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 12
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 13
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 14
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 15
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 16
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 17
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 18
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 19
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 20
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] height
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] height
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {Tags: ["grid", "dummy", "new"], NoGravity: 1, Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] height = @s start
execute as @e[tag=new] run function func:utils/round100
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=grid] at @s run function func:utils/render10
tp @e[tag=lerp] 0 -63 0
