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

##################################################################################

# set tnt Marker
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ bedrock run data merge entity @s {Tags:[tntMarker],Invisible:1b,Marker:1b,LootTable:"nim:loot"}
# Kirchensitze
effect give @e[type=pig,tag=sitz_kirche] minecraft:invisibility 999999 255 true
# join start when no team
team join Start @a[team=!Admin,team=!Attackers,team=!Cam,team=!Death,team=!Defenders,team=!Start]
# place chest at chestMarker if not
execute as @e[tag=chestMarker] at @s unless block ~ ~ ~ barrel run setblock ~ ~ ~ barrel[facing=up]
# center armorstand
execute as @e[type=minecraft:armor_stand,tag=!bomb,tag=!deadbody] at @s align xyz run teleport @s ~0.5 ~ ~0.5
# clear infested
function nim:dev/infested_blocks_clear
# NVGS
execute as @a[nbt={Inventory: [{Slot: 103b, id: "minecraft:leather_helmet", tag: {display:{Name:'{"text":"Nachtsichtgerät","color":"aqua","bold":true}',color:340736},Unbreakable:1b}}]}] run effect give @s night_vision 2 1 true
# enable layDown
scoreboard players enable @a[tag=!laying] layDown
# loop
schedule function nim:1s 1s
# Set xp
xp set @a 0 levels
xp set @a 0 points
# Change chest Marker
execute as @e[tag=chestMarker,nbt=!{Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}] run data merge entity @s {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}