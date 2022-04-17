execute if score @s emote.action matches 1..9 run tellraw @s {"text": "You shouldn't be doing this...","color": "red"}

# Wave
execute if score @s emote.action matches 10 if entity @s[tag=emotes.unlock.wave] run give @s red_dye{display:{Name:'{"text":"Wave","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"A simple wave to say hi","color":"red","italic":false}','{"text":"⌚ Cooldown: 10s","color":"yellow","italic":false}','[{"text":" "}]','[{"text":"Hold and press ","color":"aqua","italic":false},{"keybind":"key.swapOffhand","italic":false},{"text":" to use","italic":false}]']},emote:wave,emotes:1b} 1
execute if entity @s[tag=emotes.unlock.wave] if score @s emote.action matches 10 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown

execute if entity @s[tag=emotes.unlock.wave] if score @s emote.action matches 11 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown
execute if entity @s[tag=emotes.unlock.wave] if score @s emote.action matches 11 if score @s emote.cooldown matches 0 run function emotes:zpriv/animations/wave/start

# Point
execute if score @s emote.action matches 20 if entity @s[tag=emotes.unlock.point] run give @s purple_dye{display:{Name:'{"text":"Point Forwards","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Point your hand in front of you","color":"red","italic":false}','{"text":"⌚ Cooldown: 5s","color":"yellow","italic":false}','[{"text":" "}]','[{"text":"Hold and press ","color":"aqua","italic":false},{"keybind":"key.swapOffhand","italic":false},{"text":" to use","italic":false}]']},emote:point,emotes:1b} 1
execute if entity @s[tag=emotes.unlock.point] if score @s emote.action matches 20 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown

execute if entity @s[tag=emotes.unlock.point] if score @s emote.action matches 21 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown
execute if entity @s[tag=emotes.unlock.point] if score @s emote.action matches 21 if score @s emote.cooldown matches 0 run function emotes:zpriv/animations/point/start

# Big Wave
execute if score @s emote.action matches 30 if entity @s[tag=emotes.unlock.overhere] run give @p orange_dye{display:{Name:'{"text":"Big Wave","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Wave to your friends for a nice greeting","color":"red","italic":false}','{"text":"⌚ Cooldown: 15s","color":"yellow","italic":false}','[{"text":" "}]','[{"text":"Hold and press ","color":"aqua","italic":false},{"keybind":"key.swapOffhand","italic":false},{"text":" to use","italic":false}]']},emote:big_wave,emotes:1b} 1
execute if entity @s[tag=emotes.unlock.overhere] if score @s emote.action matches 30 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown

execute if entity @s[tag=emotes.unlock.overhere] if score @s emote.action matches 31 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown
execute if entity @s[tag=emotes.unlock.overhere] if score @s emote.action matches 31 if score @s emote.cooldown matches 0 run function emotes:zpriv/animations/overhere/start

# Clap
execute if score @s emote.action matches 40 if entity @s[tag=emotes.unlock.clap] run give @p yellow_dye{display:{Name:'{"text":"Clap","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Congratulate people with a round of applause!","color":"red","italic":false}','{"text":"⌚ Cooldown: 20s","color":"yellow","italic":false}','[{"text":" "}]','[{"text":"Hold and press ","color":"aqua","italic":false},{"keybind":"key.swapOffhand","italic":false},{"text":" to use","italic":false}]']},emote:clap,emotes:1b} 1
execute if entity @s[tag=emotes.unlock.clap] if score @s emote.action matches 40 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown

execute if entity @s[tag=emotes.unlock.clap] if score @s emote.action matches 41 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown
execute if entity @s[tag=emotes.unlock.clap] if score @s emote.action matches 41 if score @s emote.cooldown matches 0 run function emotes:zpriv/animations/clap/start

# Nod Head
execute if score @s emote.action matches 50 if entity @s[tag=emotes.unlock.nod] run give @p lime_dye{display:{Name:'{"text":"Nod Head","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Nod your head to agree to a statement :D","color":"red","italic":false}','{"text":"⌚ Cooldown: 5s","color":"yellow","italic":false}','[{"text":" "}]','[{"text":"Hold and press ","color":"aqua","italic":false},{"keybind":"key.swapOffhand","italic":false},{"text":" to use","italic":false}]']},emote:nod,emotes:1b} 1
execute if entity @s[tag=emotes.unlock.nod] if score @s emote.action matches 50 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown

execute if entity @s[tag=emotes.unlock.nod] if score @s emote.action matches 51 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown
execute if entity @s[tag=emotes.unlock.nod] if score @s emote.action matches 51 if score @s emote.cooldown matches 0 run function emotes:zpriv/animations/nod/start

# Shake Head
execute if score @s emote.action matches 60 if entity @s[tag=emotes.unlock.shake] run give @p light_blue_dye{display:{Name:'{"text":"Shake Head","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Shake your head to say \'No\'!","color":"red","italic":false}','{"text":"⌚ Cooldown: 5s","color":"yellow","italic":false}','[{"text":" "}]','[{"text":"Hold and press ","color":"aqua","italic":false},{"keybind":"key.swapOffhand","italic":false},{"text":" to use","italic":false}]']},emote:shake,emotes:1b} 1
execute if entity @s[tag=emotes.unlock.shake] if score @s emote.action matches 60 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown

execute if entity @s[tag=emotes.unlock.shake] if score @s emote.action matches 61 if score @s emote.cooldown matches 1.. run function emotes:zpriv/cooldown
execute if entity @s[tag=emotes.unlock.shake] if score @s emote.action matches 61 if score @s emote.cooldown matches 0 run function emotes:zpriv/animations/shake/start