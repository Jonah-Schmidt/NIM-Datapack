# Spawn animation player
summon armor_stand ~ ~ ~ {Tags:["emote.new","emote.anim.big_wave","emote"],Marker:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b}],NoBasePlate:1b}

tellraw @s {"text": "Hello :D","color": "blue"}
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

scoreboard players set @s emote.cooldown 4

# Give items
execute if data entity @s {Inventory:[{Slot:100b}]} run item replace entity @e[tag=emote.new,limit=1,sort=nearest] armor.feet from entity @s armor.feet
execute if data entity @s {Inventory:[{Slot:101b}]} run item replace entity @e[tag=emote.new,limit=1,sort=nearest] armor.legs from entity @s armor.legs
execute if data entity @s {Inventory:[{Slot:102b}]} run item replace entity @e[tag=emote.new,limit=1,sort=nearest] armor.chest from entity @s armor.chest
loot replace entity @e[tag=emote.new,limit=1,sort=nearest] armor.head loot emotes:fill_head

# Invis management
effect give @s invisibility 5 1 true
data modify entity @e[tag=emote.new,limit=1,sort=nearest] ArmorItems[3].tag.heldItems set from entity @s Inventory
clear @s

# Rotation
execute as @e[tag=emote.new,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~

# Start animation
scoreboard players set @e[tag=emote.new,limit=1,sort=nearest] emote.playtime 1

# Finalising
tag @e[tag=emote.new,limit=1,sort=nearest] remove emote.new