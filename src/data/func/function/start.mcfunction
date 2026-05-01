# rebuild plane
function func:reset/random
function func:plane/clear

# assign scoreboards
scoreboard objectives add binary dummy
scoreboard objectives add random2 dummy
scoreboard objectives add random5 dummy
scoreboard objectives add random10 dummy
scoreboard objectives add start dummy
scoreboard objectives add end dummy
scoreboard objectives setdisplay sidebar

# constants
scoreboard objectives add const dummy
scoreboard players set 4 const 4
scoreboard players set 100 const 100

# log
say OnLoad