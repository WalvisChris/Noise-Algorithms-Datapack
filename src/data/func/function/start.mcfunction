# rebuild plane
function func:reset/random
function func:plane/clear

# assign scoreboards
scoreboard objectives add binary dummy

# heightmap and randomization
scoreboard objectives add random2 dummy
scoreboard objectives add random5 dummy
scoreboard objectives add random10 dummy

# lerp
scoreboard objectives add start dummy
scoreboard objectives add end dummy

# average
scoreboard objectives add temp dummy
scoreboard objectives add sum dummy
scoreboard objectives add count dummy

# constants
scoreboard objectives add const dummy
scoreboard players set 4 const 4
scoreboard players set 100 const 100

scoreboard objectives setdisplay sidebar

# log
say OnLoad