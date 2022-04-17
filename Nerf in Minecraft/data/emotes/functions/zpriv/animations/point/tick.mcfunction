execute if entity @s[scores={emote.playtime=2}] run data merge entity @s {Pose:{RightArm:[-10f,0f,0f]}}
execute if entity @s[scores={emote.playtime=3}] run data merge entity @s {Pose:{RightArm:[-15f,0f,0f]}}
execute if entity @s[scores={emote.playtime=4}] run data merge entity @s {Pose:{RightArm:[-20f,0f,0f]}}
execute if entity @s[scores={emote.playtime=5}] run data merge entity @s {Pose:{RightArm:[-25f,0f,0f]}}
execute if entity @s[scores={emote.playtime=6}] run data merge entity @s {Pose:{RightArm:[-30f,0f,0f]}}
execute if entity @s[scores={emote.playtime=7}] run data merge entity @s {Pose:{RightArm:[-35f,0f,0f]}}
execute if entity @s[scores={emote.playtime=8}] run data merge entity @s {Pose:{RightArm:[-40f,0f,0f]}}
execute if entity @s[scores={emote.playtime=9}] run data merge entity @s {Pose:{RightArm:[-45f,0f,0f]}}
execute if entity @s[scores={emote.playtime=10}] run data merge entity @s {Pose:{RightArm:[-50f,0f,0f]}}
execute if entity @s[scores={emote.playtime=11}] run data merge entity @s {Pose:{RightArm:[-55f,0f,0f]}}
execute if entity @s[scores={emote.playtime=12}] run data merge entity @s {Pose:{RightArm:[-60f,0f,0f]}}
execute if entity @s[scores={emote.playtime=13}] run data merge entity @s {Pose:{RightArm:[-65f,0f,0f]}}
execute if entity @s[scores={emote.playtime=14}] run data merge entity @s {Pose:{RightArm:[-70f,0f,0f]}}
execute if entity @s[scores={emote.playtime=15}] run data merge entity @s {Pose:{RightArm:[-75f,0f,0f]}}
execute if entity @s[scores={emote.playtime=16}] run data merge entity @s {Pose:{RightArm:[-80f,0f,0f]}}
execute if entity @s[scores={emote.playtime=17}] run data merge entity @s {Pose:{RightArm:[-85f,0f,0f]}}
execute if entity @s[scores={emote.playtime=18}] run data merge entity @s {Pose:{RightArm:[-90f,0f,0f]}}
execute if entity @s[scores={emote.playtime=38}] run data merge entity @s {Pose:{RightArm:[-85f,0f,0f]}}
execute if entity @s[scores={emote.playtime=39}] run data merge entity @s {Pose:{RightArm:[-80f,0f,0f]}}
execute if entity @s[scores={emote.playtime=40}] run data merge entity @s {Pose:{RightArm:[-75f,0f,0f]}}
execute if entity @s[scores={emote.playtime=41}] run data merge entity @s {Pose:{RightArm:[-70f,0f,0f]}}
execute if entity @s[scores={emote.playtime=42}] run data merge entity @s {Pose:{RightArm:[-65f,0f,0f]}}
execute if entity @s[scores={emote.playtime=43}] run data merge entity @s {Pose:{RightArm:[-60f,0f,0f]}}
execute if entity @s[scores={emote.playtime=44}] run data merge entity @s {Pose:{RightArm:[-55f,0f,0f]}}
execute if entity @s[scores={emote.playtime=45}] run data merge entity @s {Pose:{RightArm:[-50f,0f,0f]}}
execute if entity @s[scores={emote.playtime=46}] run data merge entity @s {Pose:{RightArm:[-45f,0f,0f]}}
execute if entity @s[scores={emote.playtime=47}] run data merge entity @s {Pose:{RightArm:[-40f,0f,0f]}}
execute if entity @s[scores={emote.playtime=48}] run data merge entity @s {Pose:{RightArm:[-35f,0f,0f]}}
execute if entity @s[scores={emote.playtime=49}] run data merge entity @s {Pose:{RightArm:[-30f,0f,0f]}}
execute if entity @s[scores={emote.playtime=50}] run data merge entity @s {Pose:{RightArm:[-25f,0f,0f]}}
execute if entity @s[scores={emote.playtime=51}] run data merge entity @s {Pose:{RightArm:[-20f,0f,0f]}}
execute if entity @s[scores={emote.playtime=52}] run data merge entity @s {Pose:{RightArm:[-15f,0f,0f]}}
execute if entity @s[scores={emote.playtime=53}] run data merge entity @s {Pose:{RightArm:[-10f,0f,0f]}}
execute if entity @s[scores={emote.playtime=54}] run data merge entity @s {Pose:{RightArm:[-5f,0f,0f]}}

scoreboard players add @s emote.playtime 1

execute unless entity @p[distance=..0.5] run execute as @p at @s run function emotes:zpriv/animations/stop
execute if score @s emote.playtime matches 54 run execute as @p at @s run function emotes:zpriv/animations/stop