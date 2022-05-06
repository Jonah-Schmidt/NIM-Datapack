# chat logs
tellraw @a ["",{"text":"a - [","color":"dark_purple"},{"text":"INFO","color":"yellow"},{"text":"]","color":"dark_purple"},{"text":" -> ","color":"blue"},{"text":"Server reloaded!","color":"dark_green"}]
# remove schores
scoreboard objectives remove startGame
scoreboard objectives remove data
scoreboard objectives remove leave
scoreboard objectives remove hit
scoreboard objectives remove attackersCache
scoreboard objectives remove defendersCache
scoreboard objectives remove tntCache
scoreboard objectives remove points
scoreboard objectives remove standUp
scoreboard objectives remove layDown
scoreboard objectives remove timer
# create scores
scoreboard objectives add startGame trigger
scoreboard objectives add data dummy
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add hit deathCount
scoreboard objectives add attackersCache dummy
scoreboard objectives add defendersCache dummy
scoreboard objectives add tntCache dummy
scoreboard objectives add points dummy
scoreboard objectives add standUp trigger
scoreboard objectives add layDown trigger
scoreboard objectives add timer dummy
# team remove
team remove Admin
team remove Cam
team remove Attackers
team remove Defenders
team remove Death
team remove Start
# team add
team add Admin
team add Cam
team add Attackers
team add Defenders
team add Death
team add Start
# modify teams
team modify Admin color light_purple
team modify Admin prefix "Admin : "
team modify Admin nametagVisibility never
team modify Admin friendlyFire false
team modify Cam color gold
team modify Cam prefix "Cam : "
team modify Cam nametagVisibility never
team modify Cam friendlyFire false
team modify Attackers color dark_red
team modify Attackers prefix "Attackers : "
team modify Attackers nametagVisibility hideForOtherTeams
team modify Attackers friendlyFire false
team modify Defenders color aqua
team modify Defenders prefix "Defenders : "
team modify Defenders nametagVisibility hideForOtherTeams
team modify Defenders friendlyFire false
team modify Death color gray
team modify Death prefix "Death : "
team modify Death nametagVisibility never
team modify Death friendlyFire false
team modify Start color blue
team modify Start prefix "Start : "
team modify Start nametagVisibility always
team modify Start friendlyFire false
# gamerule
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule doDaylightCycle true
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage true
gamerule fireDamage true
gamerule keepInventory true
gamerule logAdminCommands true
gamerule maxEntityCramming 64
gamerule mobGriefing false
gamerule sendCommandFeedback true
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
# give all advancements
advancement grant @a everything
# join team
team join Admin @a[gamemode=creative]
team join Admin @a[gamemode=spectator]
team join Start @a[gamemode=adventure]
# start 1s function
schedule function nim:1s 1s
# enable lay Down
scoreboard players enable @a layDown
# give
#/give @p diamond_chestplate{display:{Name:'{"text":"Kugelsichere Weste","color":"#FF0000","bold":true}'},Damage:488} 
#/give @p leather_helmet{display:{Name:'{"text":"Nachtsichtgerät","color":"aqua","bold":true}',color:340736},Unbreakable:1b} 1

execute if entity @a[nbt={Inventory: [{Slot: 103b, id: "minecraft:leather_helmet", tag: {display:{Name:'{"text":"Nachtsichtgerät","color":"aqua","bold":true}',color:340736},Unbreakable:1b}}]}]