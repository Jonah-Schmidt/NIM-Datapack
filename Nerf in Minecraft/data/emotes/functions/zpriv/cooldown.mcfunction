tellraw @s ["",{"text":"Please wait ","color":"red"},{"score":{"name":"@s","objective":"emote.cooldown"},"color":"yellow"},{"text":" seconds before using this again!","color":"red"}]

playsound minecraft:block.note_block.bass master @s ~ ~ ~ 7123687123687136782163713687126

item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air