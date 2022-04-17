# Run Tick Functions
execute as @e[tag=emote.anim.wave] at @s run function emotes:zpriv/animations/wave/tick
execute as @e[tag=emote.anim.big_wave] at @s run function emotes:zpriv/animations/overhere/tick
execute as @e[tag=emote.anim.clap] at @s run function emotes:zpriv/animations/clap/tick
execute as @e[tag=emote.anim.nod] at @s run function emotes:zpriv/animations/nod/tick
execute as @e[tag=emote.anim.shake] at @s run function emotes:zpriv/animations/shake/tick
execute as @e[tag=emote.anim.point] at @s run function emotes:zpriv/animations/point/tick

# Check F clicks
execute as @a[scores={emote.cooldown=0}] if data entity @s Inventory[{Slot:-106b,tag:{emotes:1b}}] run function emotes:zpriv/offhand_check

# Cooldown
execute as @a[scores={emote.cooldown=1..}] if data entity @s Inventory[{Slot:-106b,tag:{emotes:1b}}] run function emotes:zpriv/cooldown
execute as @a unless score @s emote.cooldown matches 1.. run scoreboard players set @s emote.cooldown 0

# Unlocking
execute as @a run execute store result score @s emote.xpquery run xp query @s levels
# Wave
execute as @a[scores={emote.xpquery=5..},tag=!emotes.unlock.wave] at @s run function emotes:zpriv/unlock/wave
execute as @a[tag=emotes.unlock.all,tag=!emotes.unlock.wave] at @s run function emotes:zpriv/unlock/wave
# Point Forwards
execute as @a[scores={emote.xpquery=10..},tag=!emotes.unlock.point] at @s run function emotes:zpriv/unlock/point
execute as @a[tag=emotes.unlock.all,tag=!emotes.unlock.point] at @s run function emotes:zpriv/unlock/point
# Big Wave
execute as @a[scores={emote.xpquery=15..},tag=!emotes.unlock.overhere] at @s run function emotes:zpriv/unlock/overhere
execute as @a[tag=emotes.unlock.all,tag=!emotes.unlock.overhere] at @s run function emotes:zpriv/unlock/overhere
# Clap
execute as @a[scores={emote.xpquery=20..},tag=!emotes.unlock.clap] at @s run function emotes:zpriv/unlock/clap
execute as @a[tag=emotes.unlock.all,tag=!emotes.unlock.clap] at @s run function emotes:zpriv/unlock/clap
# Nod/Shake Head
execute as @a[scores={emote.xpquery=30..},tag=!emotes.unlock.nod] at @s run function emotes:zpriv/unlock/nod_or_shake_head
execute as @a[tag=emotes.unlock.all,tag=!emotes.unlock.nod] at @s run function emotes:zpriv/unlock/nod_or_shake_head

# Triggers
scoreboard players enable @a emote
execute as @a[scores={emote=1..}] at @s run function emotes:zpriv/selector
scoreboard players set @a[scores={emote=1..}] emote 0

scoreboard players enable @a emote.action
execute as @a[scores={emote.action=1..}] at @s run function emotes:zpriv/action
scoreboard players set @a[scores={emote.action=1..}] emote.action 0

# Blacklist
function emotes:zpriv/blacklist

# Item Killing
kill @e[type=item,nbt={Item:{tag:{emotes:1b}}}]