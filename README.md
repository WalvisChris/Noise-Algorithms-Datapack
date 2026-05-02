# Noise Algorithms Datapack  
## Random Noise Algorithm  
![img](images/random.png)  
**Logic**
```python
import random

# 1. generate 21x21 grid
grid = [[0 for x in range(21)] for y in range(21)]

# 2. assign random values
foreach y in range(21):
    foreach x in range(21):
        grid[y][x] = random.randint(1, 10)
```

**Commands**
```mcfunction
# 1. fill the grid with armor stands tagged "dummy"
# 2. assign random values
execute as @e[tag=dummy] store result score @s random10 run scoreboard players get @e[tag=r10,limit=1,sort=random] random10

# 3. render grayscale blocks
function func:utils/render10 # see bottom of README for the commands
```

## Voronoi Noise Algorithm  
![img](images/voronoi.png)  
**Logic**
```python
import random

# 1. generate 21x21 grid
grid = [[0 for x in range(21)] for y in range(21)]

# 2. create 12 control points
control_points = [(random.randint(0, 20), random.randint(0, 20)) for _ in range(12)]

# 3. caculate the distance to the nearest control point for each point in the grid
for y in range(21):
    for x in range(21):
        min_dist = float('inf')

        for cp_x, cp_y in control_points:
            dist = math.sqrt((cp_x - x)**2 + (cp_y - y)**2)
            
            if dist < min_dist:
                min_dist = dist
        
        grid[y][x] = min_dist
```

**Commands**
```mcfunction
# 1. fill grid with armor stands tagged "dummy"
# 2. place 12 random control points
execute at @e[tag=dummy,limit=12,sort=random] run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:["control"],Invisible:1}

# 3. calculate distance to nearest control point
execute as @e[tag=dummy] at @s run function func:utils/get_distance_to_control # see bottom of README for the commands

# 4. render grayscale blocks
function func:utils/render10 # see bottom of README for the commands
```

## Random Walker Algorithm  
![img](images/walker.png)  

## Custom Lerp Algoritm  
![img](images/custom_lerp.png)  
**Commands**
```mcfunction
# 1. fill the grid with armor stands tagged "dummy"
# 2. place 5 random walkers 
execute at @e[tag=dummy,limit=5,sort=random] run summon armor_stand ~ ~ ~ {NoGravity:1,Tags:["walker"],Invisible:1}

# 3. set steps for walkers
scoreboard players set @e[tag=walker] steps 100

# --- loop logic ---
# 4. get random direction
execute as @e[tag=walker] if score @s steps matches 1.. at @s run scoreboard players operation @s random4 = @e[tag=r4,limit=1,sort=random] random4

# 5. store x and z position
execute as @e[tag=walker] if score @s steps matches 1.. store result score @s xPos run data get entity @s Pos[0] 1
execute as @e[tag=walker] if score @s steps matches 1.. store result score @s zPos run data get entity @s Pos[2] 1

# 6. move walker
execute as @e[tag=walker] if score @s steps matches 1.. if score @s random4 matches 1 if score @s xPos matches ..19 at @s run tp @s ~1 ~ ~
execute as @e[tag=walker] if score @s steps matches 1.. if score @s random4 matches 2 if score @s xPos matches 1.. at @s run tp @s ~-1 ~ ~
execute as @e[tag=walker] if score @s steps matches 1.. if score @s random4 matches 3 if score @s zPos matches ..19 at @s run tp @s ~ ~ ~1
execute as @e[tag=walker] if score @s steps matches 1.. if score @s random4 matches 4 if score @s zPos matches 1.. at @s run tp @s ~ ~ ~-1

# 7. increase current position's value
execute as @e[tag=walker] if score @s steps matches 1.. at @s run scoreboard players add @e[tag=dummy,limit=1,sort=nearest,scores={random10=..9}] random10 1

# 8. decrement steps
scoreboard players remove @e[tag=walker,scores={steps=1..}] steps 1
```

# General commands
**Get random values**
```mcfunction
# you will need this scoreboard:
scoreboard objectives add random10 dummy

# summon armor 10 stands with random values 1 through 10:
summon armor_stand 0 0 0 {Tags:["r10"],Invisible:1}
scoreboard players add @e[tag=r10] random10 1
summon armor_stand 0 0 0 {Tags:["r10"],Invisible:1}
scoreboard players add @e[tag=r10] random10 1
summon armor_stand 0 0 0 {Tags:["r10"],Invisible:1}
scoreboard players add @e[tag=r10] random10 1
summon armor_stand 0 0 0 {Tags:["r10"],Invisible:1}
scoreboard players add @e[tag=r10] random10 1
summon armor_stand 0 0 0 {Tags:["r10"],Invisible:1}
scoreboard players add @e[tag=r10] random10 1
summon armor_stand 0 0 0 {Tags:["r10"],Invisible:1}
scoreboard players add @e[tag=r10] random10 1
summon armor_stand 0 0 0 {Tags:["r10"],Invisible:1}
scoreboard players add @e[tag=r10] random10 1
summon armor_stand 0 0 0 {Tags:["r10"],Invisible:1}
scoreboard players add @e[tag=r10] random10 1
summon armor_stand 0 0 0 {Tags:["r10"],Invisible:1}
scoreboard players add @e[tag=r10] random10 1
summon armor_stand 0 0 0 {Tags:["r10"],Invisible:1}
scoreboard players add @e[tag=r10] random10 1
```

**Render grayscale blocks**
```mcfunction
execute at @e[scores={random10=1}] run setblock ~ ~ ~ black_concrete
execute at @e[scores={random10=2}] run setblock ~ ~ ~ black_wool
execute at @e[scores={random10=3}] run setblock ~ ~ ~ gray_wool
execute at @e[scores={random10=4}] run setblock ~ ~ ~ polished_tuff
execute at @e[scores={random10=5}] run setblock ~ ~ ~ light_gray_wool
execute at @e[scores={random10=6}] run setblock ~ ~ ~ stone
execute at @e[scores={random10=7}] run setblock ~ ~ ~ smooth_stone
execute at @e[scores={random10=8}] run setblock ~ ~ ~ polished_diorite
execute at @e[scores={random10=9}] run setblock ~ ~ ~ stripped_pale_oak_wood
execute at @e[scores={random10=10}] run setblock ~ ~ ~ white_wool
```

**Round scaled numbers**
```mcfunction
scoreboard players set @s[scores={random10=11..149}] random10 1
scoreboard players set @s[scores={random10=150..249}] random10 2
scoreboard players set @s[scores={random10=250..349}] random10 3
scoreboard players set @s[scores={random10=350..449}] random10 4
scoreboard players set @s[scores={random10=450..549}] random10 5
scoreboard players set @s[scores={random10=550..649}] random10 6
scoreboard players set @s[scores={random10=650..749}] random10 7
scoreboard players set @s[scores={random10=750..849}] random10 8
scoreboard players set @s[scores={random10=850..949}] random10 9
scoreboard players set @s[scores={random10=950..1000}] random10 10
```

**Get distance to control point**
```mcfunction
execute at @s if entity @e[tag=control,distance=9..] run scoreboard players set @s random10 10
execute at @s if entity @e[tag=control,distance=8..9] run scoreboard players set @s random10 9
execute at @s if entity @e[tag=control,distance=7..8] run scoreboard players set @s random10 8
execute at @s if entity @e[tag=control,distance=6..7] run scoreboard players set @s random10 7
execute at @s if entity @e[tag=control,distance=5..6] run scoreboard players set @s random10 6
execute at @s if entity @e[tag=control,distance=4..5] run scoreboard players set @s random10 5
execute at @s if entity @e[tag=control,distance=3..4] run scoreboard players set @s random10 4
execute at @s if entity @e[tag=control,distance=2..3] run scoreboard players set @s random10 3
execute at @s if entity @e[tag=control,distance=1..2] run scoreboard players set @s random10 2
execute at @s if entity @e[tag=control,distance=0..1] run scoreboard players set @s random10 1
```