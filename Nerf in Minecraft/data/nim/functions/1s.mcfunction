# mange explode timer
execute as @e[tag=tntMarker] at @s if block ~ ~ ~ air unless score explode timer matches 41 run scoreboard players set explode timer 41
execute as @e[tag=tntMarker] at @s if block ~ ~ ~ tnt run scoreboard players remove explode timer 1
# Bomb Plant
execute if score explode timer matches 40 run title @a times 0 30 15
execute if score explode timer matches 40 run title @a title "Bomb has been planted!"
execute as @a at @s if score explode timer matches 40 run playsound entity.tnt.primed master @s ~ ~ ~ 10
# Last 5 Sec & explode
execute if score explode timer matches 8 run title @a times 0 20 0
execute as @a at @s if score explode timer matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 10
execute if score explode timer matches 5 run title @a title "5"
execute as @a at @s if score explode timer matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 10
execute if score explode timer matches 4 run title @a title "4"
execute as @a at @s if score explode timer matches 3 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 10
execute if score explode timer matches 3 run title @a title "3"
execute as @a at @s if score explode timer matches 2 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 10
execute if score explode timer matches 2 run title @a title "2"
execute as @a at @s if score explode timer matches 1 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 10
execute if score explode timer matches 1 run title @a title "1"
# Bomb explode 
execute if score explode timer matches 0 run scoreboard players set attackersWin data 1
execute as @a at @s if score explode timer matches 0 run playsound entity.generic.explode master @s ~ ~ ~ 10
execute as @a at @s if score explode timer matches 0 run particle explosion_emitter ~ ~ ~
execute if score explode timer matches ..0 run scoreboard players set explode timer 404
execute if score explode timer matches ..0 run scoreboard players set defuse timer 404
# Defuse
execute at @e[tag=tntMarker] unless entity @p[distance=..4,team=Defenders,nbt={SelectedItem: {"id":"minecraft:shears"}}] run scoreboard players set defuse timer 16
execute at @e[tag=tntMarker] if entity @p[distance=..4,team=Defenders,nbt={SelectedItem: {"id":"minecraft:shears"}}] if score explode timer matches 0..40 run scoreboard players remove defuse timer 1
execute as @e[tag=tntMarker] at @s if score defuse timer matches ..0 run setblock ~ ~ ~ air
execute if score defuse timer matches ..0 run scoreboard players set defendersWin data 1
execute if score defuse timer matches ..0 run scoreboard players set explode timer 404
execute if score defuse timer matches ..0 run scoreboard players set defuse timer 404
# loop
schedule function nim:1s 1s



scoreboard objectives setdisplay sidebar data