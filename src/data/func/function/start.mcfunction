# Starting functions
function func:plane/kill
function func:plane/clear
function func:utils/init_random

# Scoreboards
scoreboard objectives add random dummy
scoreboard objectives add height dummy
scoreboard objectives add start dummy
scoreboard objectives add end dummy
scoreboard objectives add temp dummy
scoreboard objectives add sum dummy
scoreboard objectives add count dummy
scoreboard objectives add xPos dummy
scoreboard objectives add zPos dummy

# constants
scoreboard objectives add const dummy
scoreboard players set 4 const 4
scoreboard players set 100 const 100

# UI
scoreboard objectives setdisplay sidebar

# log
say OnLoad