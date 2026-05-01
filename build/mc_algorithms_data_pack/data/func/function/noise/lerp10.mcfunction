function func:plane/clear
summon armor_stand 0 -63 0 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 0 -63 5 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 0 -63 10 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 0 -63 15 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 0 -63 20 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 5 -63 0 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 5 -63 5 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 5 -63 10 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 5 -63 15 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 5 -63 20 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 10 -63 0 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 10 -63 5 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 10 -63 10 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 10 -63 15 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 10 -63 20 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 15 -63 0 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 15 -63 5 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 15 -63 10 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 15 -63 15 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 15 -63 20 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 20 -63 0 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 20 -63 5 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 20 -63 10 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 20 -63 15 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
summon armor_stand 20 -63 20 {NoGravity: 1, Tags: ["grid", "dummy"], Small: 1, Invisible: 1}
execute as @e[tag=grid] store result score @s random10 run scoreboard players get @e[tag=r10, limit=1, sort=random] random10
execute as @e[tag=grid] at @s run function func:noise/render10
summon armor_stand 0 -63 0 {NoGravity: 1, Tags: ["lerp", "dummy"], Small: 0, Invisible: 1}
tp @e[tag=lerp] 0 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
tp @e[tag=lerp] 5 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
tp @e[tag=lerp] 10 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
tp @e[tag=lerp] 15 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
tp @e[tag=lerp] 20 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~ ~ ~5 run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~ ~ ~1
execute as @e[tag=grid] at @s run function func:noise/render10
tp @e[tag=lerp] 0 -63 0
tp @e[tag=lerp] 0 -63 0
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 1
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 2
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 3
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 4
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 5
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 6
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 7
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 8
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 9
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 10
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 11
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 12
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 13
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 14
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 15
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 16
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 17
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 18
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 19
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
tp @e[tag=lerp] 0 -63 20
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=lerp] at @s run tag @e[tag=grid, limit=1, sort=nearest] add start
execute as @e[tag=lerp] at @s positioned ~5 ~ ~ run tag @e[tag=grid, limit=1, sort=nearest] add end
execute as @e[tag=lerp] store result score @s start run scoreboard players get @e[tag=start, limit=1] random10
scoreboard players operation @e[tag=lerp] start *= 100 const
execute as @e[tag=lerp] store result score @s end run scoreboard players get @e[tag=end, limit=1] random10
scoreboard players operation @e[tag=lerp] end *= 100 const
scoreboard players operation @e[tag=lerp] end -= @e[tag=lerp] start
scoreboard players operation @e[tag=lerp] end /= 4 const
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
scoreboard players operation @e[tag=lerp] start += @e[tag=lerp] end
scoreboard players set @e[tag=lerp, scores={start=..149}] random10 1
scoreboard players set @e[tag=lerp, scores={start=150..249}] random10 2
scoreboard players set @e[tag=lerp, scores={start=250..349}] random10 3
scoreboard players set @e[tag=lerp, scores={start=350..449}] random10 4
scoreboard players set @e[tag=lerp, scores={start=450..549}] random10 5
scoreboard players set @e[tag=lerp, scores={start=550..649}] random10 6
scoreboard players set @e[tag=lerp, scores={start=650..749}] random10 7
scoreboard players set @e[tag=lerp, scores={start=750..849}] random10 8
scoreboard players set @e[tag=lerp, scores={start=850..949}] random10 9
scoreboard players set @e[tag=lerp, scores={start=950..1000}] random10 10
execute at @e[tag=lerp] run summon armor_stand ~ ~ ~ {NoGravity: 1, Tags: ["grid", "dummy", "new"], Small: 1, Invisible: 1}
execute as @e[tag=lerp] run scoreboard players operation @e[tag=new] random10 = @s random10
tag @e[tag=new] remove new
tag @e[tag=start] remove start
tag @e[tag=end] remove end
execute as @e[tag=lerp] at @s run tp @s ~1 ~ ~
execute as @e[tag=grid] at @s run function func:noise/render10
tp @e[tag=lerp] 0 -63 0
