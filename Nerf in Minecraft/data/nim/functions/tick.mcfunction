# start game
scoreboard players enable einfach_Zebra startGame
execute if entity @a[scores={startGame=1..}] run team join Start @a[team=!Admin,team=!Cam]
execute if entity @a[scores={startGame=1..}] run clear @a[team=Start]
execute if entity @a[scores={startGame=1..}] run scoreboard players set selectRandomTeam data 1
execute if entity @a[scores={startGame=1..}] run scoreboard players set resetGame data 1
execute if entity @a[scores={startGame=1..}] run give @a[team=Start] toyguns:defender
execute if entity @a[scores={startGame=1..}] run give @a[team=Start] toyguns:dart 128
execute if entity @a[scores={startGame=1..}] run scoreboard players set randomChest data 1
execute if entity @a[scores={startGame=1..}] run time set midnight
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
execute if score selectRandomTeam data matches 1 run scoreboard players set selectRandomTeam data 0
# team cache
scoreboard players set @a[team=Attackers] adminCache 1
scoreboard players set @a[team=Defenders] adminCache 2
scoreboard players set @a[team=Defenders] defendersCache 1
scoreboard players set @a[team=Attackers] attackersCache 1
scoreboard players reset @a[team=!Defenders,team=!Death] defendersCache
scoreboard players reset @a[team=!Attackers,team=!Death] attackersCache
# set Teams
team join Attackers @a[gamemode=adventure,team=!Attackers,scores={adminCache=1}]
team join Defenders @a[gamemode=adventure,team=!Defenders,scores={adminCache=2}]
# team join Attackers @a[gamemode=adventure,team=Admin,scores={attackersCache=1}]
# team join Defenders @a[gamemode=adventure,team=Admin,scores={defendersCache=1}]
team join Admin @a[gamemode=creative,team=!Admin,team=!Cam]
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
execute as @a[scores={hit=1..},tag=laying] at @s run setblock ~ ~1 ~ air
execute as @a[scores={hit=1..},tag=laying] run trigger standUp
execute as @a[scores={hit=1..}] run team join Death @s
execute as @a[scores={hit=1..}] run gamemode spectator @s
execute as @a[scores={hit=1..}] run tellraw @a {"selector":"@s"}
execute as @a[scores={hit=1..,tntCache=1,attackersCache=1}] run clear @a tnt
execute as @a[scores={hit=1..,tntCache=1}] at @s run summon armor_stand ~ ~-0.67 ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["bomb"],Rotation:[45F,45F],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute as @a[scores={hit=1..}] at @s run summon armor_stand ~ ~-1.37 ~ {DisabledSlots:6144,Tags:["deadbody"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:6501632}}},{id:"player_head",Count:1b}],HandItems:[{},{}],Pose:{Body:[297f,336f,0f],Head:[271f,344f,0f],LeftArm:[92f,55f,7f],RightArm:[84f,262f,3f]}}
execute as @a[scores={hit=1..}] run scoreboard players set @s hit 0
# drop tnts
execute as @e[type=minecraft:item,nbt={Item: {id: "minecraft:tnt",Count:1b},Age:6s}] at @s run summon armor_stand ~ ~-0.67 ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["bomb"],Rotation:[45F,45F],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute as @e[type=minecraft:item,nbt={Item: {id: "minecraft:tnt",Count:1b},Age:8s}] run kill @s
# all death ?
execute if entity @a[scores={defendersCache=1}] if entity @a[scores={attackersCache=1}] as @e[type=minecraft:armor_stand,tag=tntMarker] at @s unless block ~ ~ ~ minecraft:tnt unless entity @a[team=Attackers] run scoreboard players set defendersWin data 1
execute if entity @a[scores={defendersCache=1}] if entity @a[scores={attackersCache=1}] unless entity @a[team=Defenders] run scoreboard players set attackersWin data 1
# tnt cache
execute as @a[nbt={Inventory: [{id:"minecraft:tnt"}]}] run scoreboard players set @s tntCache 1
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
# attackers wins
execute if score attackersWin data matches 1 run title @a times 20 80 20
execute if score attackersWin data matches 1 run title @a[scores={attackersCache=1..}] title {"text":"You Win !","color":"dark_green"}
execute if score attackersWin data matches 1 run title @a[scores={defendersCache=1..}] title {"text":"Attackers Win !","color":"dark_red"}
execute if score attackersWin data matches 1 run scoreboard players add Attackers points 1
execute if score attackersWin data matches 1 run scoreboard players add attackers pointsCache 1
execute if score attackersWin data matches 1 run scoreboard players add Runden points 1
execute if score attackersWin data matches 1 run scoreboard players add roundsCache data 1
execute if score attackersWin data matches 1 run scoreboard players add roundsCache pointsCache 1
execute if score attackersWin data matches 1 run scoreboard players set resetGame data 1
execute if score attackersWin data matches 1 run scoreboard players set attackersWin data 0
# defenders win
execute if score defendersWin data matches 1 run title @a times 20 80 20
execute if score defendersWin data matches 1 run title @a[scores={attackersCache=1..}] title {"text":"Defenders Win !","color":"dark_red"}
execute if score defendersWin data matches 1 run title @a[scores={defendersCache=1..}] title {"text":"You Win !","color":"dark_green"}
execute if score defendersWin data matches 1 run scoreboard players add Defenders points 1
execute if score defendersWin data matches 1 run scoreboard players add defenders pointsCache 1
execute if score defendersWin data matches 1 run scoreboard players add Runden points 1
execute if score defendersWin data matches 1 run scoreboard players add roundsCache data 1
execute if score defendersWin data matches 1 run scoreboard players add roundsCache pointsCache 1
execute if score defendersWin data matches 1 run scoreboard players set resetGame data 1
execute if score defendersWin data matches 1 run scoreboard players set defendersWin data 0
# change teams at round 13
execute if score roundsCache data matches 13 as @a[team=Death] run gamemode adventure @s
execute if score roundsCache data matches 13 run team join Defenders @a[scores={attackersCache=1}]
execute if score roundsCache data matches 13 run team join Attackers @a[scores={defendersCache=1}]
execute if score roundsCache data matches 13 run scoreboard players set @a[team=Defenders] defendersCache 1
execute if score roundsCache data matches 13 run scoreboard players set @a[team=Attackers] attackersCache 1
execute if score roundsCache data matches 13 run scoreboard players reset @a[team=Defenders] attackersCache
execute if score roundsCache data matches 13 run scoreboard players reset @a[team=Attackers] defendersCache
execute if score roundsCache data matches 13 run scoreboard players operation Attackers points = defenders pointsCache
execute if score roundsCache data matches 13 run scoreboard players operation Defenders points = attackers pointsCache
execute if score roundsCache data matches 13 run scoreboard players set randomChest data 1
execute if score roundsCache data matches 13 run scoreboard players set roundsCache data 404
# reset Game
execute if score resetGame data matches 1 at @e[tag=tntMarker] run setblock ~ ~ ~ air
execute if score resetGame data matches 1 as @a[team=Death] run gamemode adventure @s
execute if score resetGame data matches 1 as @a[tag=laying] at @s run setblock ~ ~1 ~ air
execute if score resetGame data matches 1 as @a[tag=laying] run trigger standUp
execute if score resetGame data matches 1 run scoreboard objectives setdisplay sidebar points
execute if score resetGame data matches 1 as @a[scores={attackersCache=1}] run team join Attackers @s
execute if score resetGame data matches 1 as @a[scores={defendersCache=1}] run team join Defenders @s 
execute if score resetGame data matches 1 run clear @a shears
execute if score resetGame data matches 1 run give @a[team=Defenders] shears 1
execute if score resetGame data matches 1 run clear @a tnt
execute if score resetGame data matches 1 run kill @e[tag=bomb]
execute if score resetGame data matches 1 as @e[tag=tntSpawn] at @s run summon armor_stand ~ ~-0.67 ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["bomb"],Rotation:[45F,45F],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}
execute if score resetGame data matches 1 as @e[tag=roundReset] at @s run setblock ~ ~ ~ redstone_block
execute if score resetGame data matches 1 run scoreboard players set roundReset timer 1
execute if score roundReset timer matches 1..19 run scoreboard players add roundReset timer 1
execute if score roundReset timer matches 20 as @e[tag=roundReset] at @s run setblock ~ ~ ~ glass
execute if score roundReset timer matches 10 as @a[scores={defendersCache=1}] run teleport @e[tag=defendersSpawn,limit=1]
execute if score roundReset timer matches 10 as @a[scores={attackersCache=1}] run teleport @e[tag=attackersSpawn,limit=1]
execute if score roundReset timer matches 20 run scoreboard players set roundReset timer 0 
execute if score resetGame data matches 1 run kill @e[tag=deadbody]
execute if score resetGame data matches 1 if score attackers pointsCache matches 13.. run scoreboard players set attackersFinalWin data 1
execute if score resetGame data matches 1 if score defenders pointsCache matches 13.. run scoreboard players set defendersFinalWin data 1
execute if score resetGame data matches 1 run effect give @a[gamemode=adventure] saturation 4 255 true
execute if score resetGame data matches 1 run effect give @a[gamemode=adventure] regeneration 4 255 true
execute if score resetGame data matches 1 run scoreboard players set resetGame data 0
# Attackers Finalwin
execute if score attackersFinalWin data matches 1 run tellraw @a "attackers final win"
execute if score attackersFinalWin data matches 1 run scoreboard players set attackersFinalWin data 0
# Defenders Finalwin
execute if score defendersFinalWin data matches 1 run tellraw @a "defenders final win"
execute if score defendersFinalWin data matches 1 run scoreboard players set defendersFinalWin data 0
# 25th Ronud
execute if score attackers pointsCache = defenders pointsCache if score roundsChache pointsCache matches 25.. run scoreboard players set 25thRound data 1
execute if score 25thRound data matches 1 run scoreboard players set roundsChache pointsCache 404
execute if score 25thRound data matches 1 run tellraw @a "Special Round"
execute if score 25thRound data matches 1 run scoreboard players set 25thRound data 0

###########################################################################

# move Armorstands down
execute as @e[tag=bomb] at @s if block ~ ~0.6 ~ minecraft:air run teleport @s ~ ~-0.1 ~
execute as @e[tag=deadbody] at @s if block ~ ~1.25 ~ minecraft:air run teleport @s ~ ~-0.1 ~
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

#spreadplayers 0 0 20 20 true @e[tag=otze]
#/summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["bomb"],Rotation:[45F,45F],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}

# Need :
#   Dead Player not tp
#   View Armorstand when all Attacker dead and Bomb is placed
#   Swith at Round 13
#   Win when more then 13 wins
#   25th round when 12 to 12

# Maybe :
#   Improve laying engine
#   Bomb and Deadbody grass fix