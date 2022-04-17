# Header
tellraw @s [{"text": "\u2b50 ","color":"yellow"},{"text": "Emote Selector","bold": true,"underlined": true,"color": "gold"},{"text": " \u2b50","color":"yellow"}]

# Wave
execute if entity @s[tag=emotes.unlock.wave] run tellraw @s ["",{"text":"Wave Emote - "},{"text":"[GIVE]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger emote.action set 10"}},{"text":" "},{"text":"[PLAY]","color":"green","clickEvent":{"action":"run_command","value":"/trigger emote.action set 11"}}]
execute unless entity @s[tag=emotes.unlock.wave] run tellraw @s ["",{"text":"Wave Emote - "},{"text":"Unlock at XP Level 5","color":"gray"}]

# Point
execute if entity @s[tag=emotes.unlock.point] run tellraw @s ["",{"text":"Point Emote - "},{"text":"[GIVE]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger emote.action set 20"}},{"text":" "},{"text":"[PLAY]","color":"green","clickEvent":{"action":"run_command","value":"/trigger emote.action set 21"}}]
execute unless entity @s[tag=emotes.unlock.point] run tellraw @s ["",{"text":"Point Emote - "},{"text":"Unlock at XP Level 10","color":"gray"}]

# Big Wave
execute if entity @s[tag=emotes.unlock.overhere] run tellraw @s ["",{"text":"Big Wave Emote - "},{"text":"[GIVE]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger emote.action set 30"}},{"text":" "},{"text":"[PLAY]","color":"green","clickEvent":{"action":"run_command","value":"/trigger emote.action set 31"}}]
execute unless entity @s[tag=emotes.unlock.overhere] run tellraw @s ["",{"text":"Big Wave Emote - "},{"text":"Unlock at XP Level 15","color":"gray"}]

# Clap
execute if entity @s[tag=emotes.unlock.clap] run tellraw @s ["",{"text":"Clap Emote - "},{"text":"[GIVE]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger emote.action set 40"}},{"text":" "},{"text":"[PLAY]","color":"green","clickEvent":{"action":"run_command","value":"/trigger emote.action set 41"}}]
execute unless entity @s[tag=emotes.unlock.clap] run tellraw @s ["",{"text":"Clap Emote - "},{"text":"Unlock at XP Level 20","color":"gray"}]

# Nod Head
execute if entity @s[tag=emotes.unlock.nod] run tellraw @s ["",{"text":"Nod Head Emote - "},{"text":"[GIVE]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger emote.action set 50"}},{"text":" "},{"text":"[PLAY]","color":"green","clickEvent":{"action":"run_command","value":"/trigger emote.action set 51"}}]
execute unless entity @s[tag=emotes.unlock.nod] run tellraw @s ["",{"text":"Nod Head Emote - "},{"text":"Unlock at XP Level 30","color":"gray"}]

# Shake Head
execute if entity @s[tag=emotes.unlock.shake] run tellraw @s ["",{"text":"Shake Head Emote - "},{"text":"[GIVE]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger emote.action set 60"}},{"text":" "},{"text":"[PLAY]","color":"green","clickEvent":{"action":"run_command","value":"/trigger emote.action set 61"}}]
execute unless entity @s[tag=emotes.unlock.shake] run tellraw @s ["",{"text":"Shake Head Emote - "},{"text":"Unlock at XP Level 30","color":"gray"}]