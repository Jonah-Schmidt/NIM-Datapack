# start game
scoreboard players enable @a[team=Admin] startGame
execute if entity @a[scores={startGame=1..}] run team join Start @a[team=!Admin,team=!Cam]
execute if entity @a[scores={startGame=1..}] run scoreboard players set selectRandomTeam data 1
execute if entity @a[scores={startGame=1..}] run scoreboard players reset @s startGame
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
execute if score roundsCache data matches 13 run team join Defenders @a[scores={attackersCache=1}]
execute if score roundsCache data matches 13 run team join Attackers @a[scores={defendersCache=1}]
execute if score roundsCache data matches 13 run scoreboard players set roundsCache data 20
# team cache
scoreboard players set @a[team=Defenders] defendersCache 1
scoreboard players set @a[team=Attackers] attackersCache 1
scoreboard players reset @a[team=!Defenders,team=!Death,team=!Admin] defendersCache
scoreboard players reset @a[team=!Attackers,team=!Death,team=!Admin] attackersCache
# death
execute as @a[scores={hit=1..}] run team join Death @s
execute as @a[scores={hit=1..}] run gamemode spectator @s
execute as @a[scores={hit=1..,defendersCache=1}] run tellraw @a[team=Defenders] {"selector":"@s"}
execute as @a[scores={hit=1..,attackersCache=1}] run tellraw @a[team=Attackers] {"selector":"@s"}
execute as @a[scores={hit=1..}] run scoreboard players set @s hit 0
# all death ?
execute if entity @e[scores={defendersCache=1},type=player] if entity @e[scores={attackersCache=1},type=player] as @e[type=minecraft:armor_stand,tag=tntMarker] at @s unless block ~ ~ ~ minecraft:tnt unless entity @e[team=Attackers,type=player,gamemode=adventure] run scoreboard players set defendersWin data 1
execute if entity @e[scores={defendersCache=1},type=player] if entity @e[scores={attackersCache=1},type=player] unless entity @e[type=player,gamemode=adventure,team=Defenders] run scoreboard players set attackersWin data 1
# tnt cache
execute as @a[nbt={Inventory: [{id: "minecraft:tnt"}]}] run scoreboard players set @s tntCache 1
execute as @a[nbt=!{Inventory:[{id:"minecraft:tnt"}]}] run scoreboard players reset @s tntCache
# move tnt
execute as @a[team=Death,scores={attackersCache=1,tntCache=1}] run give @r[team=Attackers,scores={attackersCache=1}] minecraft:tnt{CanPlaceOn:["bedrock"]}
execute as @a[team=Death,scores={attackersCache=1,tntCache=1}] run scoreboard players set @s tntCache 0
execute as @a[team=Death,scores={attackersCache=1,tntCache=0}] run clear @s minecraft:tnt
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
execute if score defendersWin data matches 1 run scoreboard players add Attackers points 1
execute if score defendersWin data matches 1 run scoreboard players add Runden points 1
execute if score defendersWin data matches 1 run scoreboard players add roundsCache data 1
execute if score defendersWin data matches 1 run scoreboard players set resetGame data 1
execute if score defendersWin data matches 1 run scoreboard players set defendersWin data 0

###########################################################################################

# kirche sitze
effect give @e[type=pig,tag=sitz_kirche1] minecraft:invisibility 999999 255 true
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
clear @a tnt
clear @a tnt_minecart
clear @a end_crystal
clear @a cgm:bazooka
clear @a flint_and_steel
# einhorn
function nim:dev/einhorn
# center armorstand
execute as @e[type=minecraft:armor_stand] at @s align xyz run teleport @s ~0.5 ~ ~0.5
# clear infested
function nim:dev/infested_blocks_clear