# start game
scoreboard players enable einfach_Zebra startGame
execute if entity @a[scores={startGame=1..}] run team join Start @a[team=!Admin,team=!Cam]
execute if entity @a[scores={startGame=1..}] run scoreboard players set selectRandomTeam data 1
execute if entity @a[scores={startGame=1..}] run tellraw @a "Nutze /trigger layDown um dich hinzulegen"
execute if entity @e[scores={startGame=1..}] run scoreboard players set resetGame data 1
execute if entity @a[scores={startGame=1..}] run scoreboard players reset @a startGame
# select random team
execute if score selectRandomTeam data matches 1 run team join Attackers @r[team=Start]
execute if score selectRandomTeam data matches 1 run team join Defenders @r[team=Start]
execute if score selectRandomTeam data matches 1 run team join Attackers @r[team=Start]
execute if score selectRandomTeam data matches 1 run team join Defenders @r[team=Start]
execute if score selectRandomTeam data matches 1 run team join Attackers @r[team=Start]
execute if score selectRandomTeam data matches 1 run team join Defenders @r[team=Start]
execute if score selectRandomTeam data matches 1 run team join Attackers @r[team=Start]
execute if score selectRandomTeam data matches 1 run team join Defenders @r[team=Start]
execute if score selectRandomTeam data matches 1 run team join Attackers @r[team=Start]
execute if score selectRandomTeam data matches 1 run team join Defenders @r[team=Start]
execute if score selectRandomTeam data matches 1 run team join Attackers @r[team=Start]
execute if score selectRandomTeam data matches 1 run team join Defenders @r[team=Start]
# change teams at round 13
# execute if score roundsCache data matches 13 run team join Defenders @a[scores={attackersCache=1}]
# execute if score roundsCache data matches 13 run team join Attackers @a[scores={defendersCache=1}]
# execute if score roundsCache data matches 13 run scoreboard players set roundsCache data 20
# team cache
scoreboard players set @a[team=Defenders] defendersCache 1
scoreboard players set @a[team=Attackers] attackersCache 1
scoreboard players reset @a[team=!Defenders,team=!Death,team=!Admin] defendersCache
scoreboard players reset @a[team=!Attackers,team=!Death,team=!Admin] attackersCache
# standUp
execute as @a[scores={standUp=1..}] at @s if block ~ ~1 ~ barrier run setblock ~ ~1 ~ air
execute as @a[scores={standUp=1..}] run tag @s remove laying
execute as @a[scores={standUp=1..}] run tellraw @s "Du bist aufgestanden!"
execute as @a[scores={standUp=1..}] run scoreboard players enable @s layDown
execute as @a[scores={standUp=1..}] run scoreboard players reset @s standUp
# layDown
execute as @a[scores={layDown=1..}] at @s if block ~ ~1 ~ air run setblock ~ ~1 ~ barrier
execute as @a[scores={layDown=1..}] run tag @s add laying
execute as @a[scores={layDown=1..}] run tellraw @s "Du hast dich hingelegt! Nutze /trigger standUp zu aufstehen!"
execute as @a[scores={layDown=1..}] run scoreboard players enable @s standUp
execute as @a[scores={layDown=1..}] run scoreboard players reset @s layDown
# center laying 
execute as @a[tag=laying] at @s align xyz run teleport @s ~0.5 ~ ~0.5
# death
execute as @a[scores={hit=1..,tntCache=1}] at @s run summon armor_stand ~ ~-0.67 ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["bomb"],Rotation:[45F,45F],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute as @a[scores={hit=1..}] run team join Death @s
execute as @a[scores={hit=1..}] run gamemode spectator @s
execute as @a[scores={hit=1..}] run tellraw @a {"selector":"@s"}
execute as @a[scores={hit=1..,tntCache=1,attackersCache=1}] run clear @a tnt
execute as @a[scores={hit=1..}] run scoreboard players set @s hit 0
# all death ?
execute if entity @a[scores={defendersCache=1}] if entity @a[scores={attackersCache=1}] as @e[type=minecraft:armor_stand,tag=tntMarker] at @s unless block ~ ~ ~ minecraft:tnt unless entity @a[team=Attackers,gamemode=adventure] run scoreboard players set defendersWin data 1
execute if entity @a[scores={defendersCache=1}] if entity @a[scores={attackersCache=1}] unless entity @a[gamemode=adventure,team=Defenders] run scoreboard players set attackersWin data 1
# tnt cache
execute as @a[nbt={Inventory: [{id: "minecraft:tnt"}]}] run scoreboard players set @s tntCache 1
execute as @a[nbt=!{Inventory:[{id:"minecraft:tnt"}]}] run scoreboard players reset @s tntCache
# pick up tnt
execute as @e[tag=bomb] at @s if entity @p[team=Attackers,distance=..1] run give @p[team=Attackers] minecraft:tnt{CanPlaceOn:["bedrock"]}
execute as @e[tag=bomb] at @s if entity @p[team=Attackers,distance=..1] run kill @s
# view mates
execute as @a[team=Death,gamemode=spectator,scores={attackersCache=1}] at @s run spectate @p[team=Attackers]
execute as @a[team=Death,gamemode=spectator,scores={defendersCache=1}] at @s run spectate @p[team=Defenders]
# random Chest
execute if score randomChest data matches 1 as @e[tag=chestMarker,type=armor_stand] at @s run setblock ~ ~ ~ air
execute if score randomChest data matches 1 run kill @e[type=item]
execute if score randomChest data matches 1 as @e[tag=chestMarker,type=armor_stand] at @s run setblock ~ ~ ~ barrel[facing=up]{LootTable:"nim:loot"}
execute if score randomChest data matches 1 run tellraw @a ["",{"text":"[","color":"dark_purple"},{"text":"INFO","color":"yellow"},{"text":"]","color":"dark_purple"},{"text":" -> ","color":"blue"},{"text":"Chests have been refilled!","color":"dark_green"}]
execute if score randomChest data matches 1 run scoreboard players set randomChest data 0
# attackers win
execute if score attackersWin data matches 1 run title @a times 20 80 20
execute if score attackersWin data matches 1 run title @a[scores={attackersCache=1..}] title {"text":"You Win !","color":"dark_green"}
execute if score attackersWin data matches 1 run title @a[scores={defendersCache=1..}] title {"text":"Attackers Win !","color":"dark_red"}
execute if score attackersWin data matches 1 run scoreboard players add Attackers points 1
execute if score attackersWin data matches 1 run scoreboard players add Runden points 1
execute if score attackersWin data matches 1 run scoreboard players add roundsCache data 1
execute if score attackersWin data matches 1 run scoreboard players set resetGame data 1
execute if score attackersWin data matches 1 run scoreboard players set attackersWin data 0
# defenders win
execute if score defendersWin data matches 1 run title @a times 20 80 20
execute if score defendersWin data matches 1 run title @a[scores={attackersCache=1..}] title {"text":"Defenders Win !","color":"dark_red"}
execute if score defendersWin data matches 1 run title @a[scores={defendersCache=1..}] title {"text":"You Win !","color":"dark_green"}
execute if score defendersWin data matches 1 run scoreboard players add Defenders points 1
execute if score defendersWin data matches 1 run scoreboard players add Runden points 1
execute if score defendersWin data matches 1 run scoreboard players add roundsCache data 1
execute if score defendersWin data matches 1 run scoreboard players set resetGame data 1
execute if score defendersWin data matches 1 run scoreboard players set defendersWin data 0
# reset Game
execute if score resetGame data matches 1.. run say reset
execute if score resetGame data matches 1.. at @e[tag=tntMarker] run setblock ~ ~ ~ air
execute if score resetGame data matches 1.. as @a[team=Death,scores={attackersCache=1}] run team join Attackers @s
execute if score resetGame data matches 1.. as @a[team=Death,scores={defendersCache=1}] run team join Defenders @s 
execute if score resetGame data matches 1.. as @a[team=Death] run gamemode adventure @s
execute if score resetGame data matches 1.. as @a[team=Defenders] run teleport @s @e[tag=defendersSpan,limit=1]
execute if score resetGame data matches 1.. as @a[team=Attackers] run teleport @s @e[tag=attackersSpan,limit=1]
execute if score resetGame data matches 1.. run scoreboard players set resetGame data 0

##################################################################################

# set tnt Marker
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ bedrock run data merge entity @s {Tags:[tntMarker],Invisible:1b,Marker:1b}
# Kirchensitze
effect give @e[type=pig,tag=sitz_kirche] minecraft:invisibility 999999 255 true
# join start when no team
team join Start @a[team=!Admin,team=!Attackers,team=!Cam,team=!Death,team=!Defenders,team=!Start]
# place chest at chestMarker if not
execute as @e[tag=chestMarker] at @s unless block ~ ~ ~ barrel run setblock ~ ~ ~ barrel[facing=up]
# save kill
kill @e[type=tnt]
kill @e[type=cgm:missile]
kill @e[type=tnt_minecart]
kill @e[type=end_crystal]
# clear
clear @a tnt_minecart
clear @a end_crystal
clear @a cgm:bazooka
clear @a flint_and_steel
# center armorstand
execute as @e[type=minecraft:armor_stand,tag=!bomb] at @s align xyz run teleport @s ~0.5 ~ ~0.5
# einhorn
function nim:dev/einhorn
# clear infested
function nim:dev/infested_blocks_clear
# NVGS
execute as @a[nbt={Inventory: [{Slot: 103b, id: "minecraft:leather_helmet", tag: {display:{Name:'{"text":"Nachtsichtgerät","color":"aqua","bold":true}',color:340736},Unbreakable:1b}}]}] run effect give @s night_vision 2 1 true
#/summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["bomb"],Rotation:[45F,45F],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}