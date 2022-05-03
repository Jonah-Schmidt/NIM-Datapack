# set spawn point
execute as @a at @s run spawnpoint @s
# mange explode timer
execute as @e[tag=tntMarker] at @s if block ~ ~ ~ air unless score explode timer matches 61 run scoreboard players set explode timer 61
execute as @e[tag=tntMarker] at @s if block ~ ~ ~ tnt run scoreboard players remove explode timer 1
# Bomb Plant
execute if score explode timer matches 60 run title @a times 0 30 15
execute if score explode timer matches 60 run title @a title {"text":"Bomb has been planted!","color":"dark_red"}
execute as @a at @s if score explode timer matches 60 run playsound entity.tnt.primed master @s ~ ~ ~ 10
execute if score explode timer matches 0..60 run title @a actionbar ["",{"text":"Bomb explodes in ","color":"dark_red"},{"score":{"name":"explode","objective":"timer"},"bold":true,"color":"dark_red"},{"text":" second","color":"dark_red"}]
# Last 5 Sec & explode
execute if score explode timer matches 8 run title @a times 0 20 0
execute as @a at @s if score explode timer matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 10
execute if score explode timer matches 5 run title @a title {"text":"5","bold":true,"color":"dark_red"}
execute as @a at @s if score explode timer matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 10
execute if score explode timer matches 4 run title @a title {"text":"4","bold":true,"color":"dark_red"}
execute as @a at @s if score explode timer matches 3 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 10
execute if score explode timer matches 3 run title @a title {"text":"3","bold":true,"color":"dark_red"}
execute as @a at @s if score explode timer matches 2 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 10
execute if score explode timer matches 2 run title @a title {"text":"2","bold":true,"color":"dark_red"}
execute as @a at @s if score explode timer matches 1 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 10
execute if score explode timer matches 1 run title @a title {"text":"1","bold":true,"color":"dark_red"}
# Bomb explode 
execute if score explode timer matches 0 run scoreboard players set attackersWin data 1
execute as @a at @s if score explode timer matches 0 run playsound entity.generic.explode master @s ~ ~ ~ 10
execute as @a at @s if score explode timer matches 0 run particle explosion_emitter ~ ~ ~
execute if score explode timer matches ..0 run scoreboard players set explode timer 404
execute if score explode timer matches ..0 run scoreboard players set defuse timer 404
# Defuse
execute at @e[tag=tntMarker] unless entity @p[distance=..4,team=Defenders,nbt={SelectedItem: {"id":"minecraft:shears"}}] run scoreboard players set defuse timer 16
execute at @e[tag=tntMarker] if entity @p[distance=..4,team=Defenders,nbt={SelectedItem: {"id":"minecraft:shears"}}] if score explode timer matches 1..60 run scoreboard players remove defuse timer 1
execute at @e[tag=tntMarker] as @p[distance=..4,team=Defenders,nbt={SelectedItem: {"id":"minecraft:shears"}}] if score explode timer matches 1..60 run title @s subtitle ["",{"text":"Bomb defused in ","color":"green"},{"score":{"name":"defuse","objective":"timer"},"bold":true,"color":"green"},{"text":" second","color":"green"}]
execute at @e[tag=tntMarker] as @p[distance=..4,team=Defenders,nbt={SelectedItem: {"id":"minecraft:shears"}}] if score explode timer matches 1..60 run title @s title ""
execute if score defuse timer matches ..0 run title @a actionbar ""
execute if score defuse timer matches ..0 run title @a subtitle ""
execute if score defuse timer matches ..0 run title @a title ""
execute if score defuse timer matches ..0 run scoreboard players set defendersWin data 1
execute if score defuse timer matches ..0 run scoreboard players set explode timer 404
execute if score defuse timer matches ..0 run scoreboard players set defuse timer 404
# loop
schedule function nim:1s 1s



# scoreboard objectives setdisplay sidebar timers