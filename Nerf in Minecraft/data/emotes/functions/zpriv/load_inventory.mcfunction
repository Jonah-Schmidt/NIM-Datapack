data modify storage emotes:inv heldItems set from entity @e[type=armor_stand,tag=emote,limit=1,sort=nearest] ArmorItems[3].tag.heldItems

execute if data storage emotes:inv heldItems[{Slot:103b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:103b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:103b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:103b}].Count
item replace entity @s armor.head from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:102b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:102b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:102b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:102b}].Count
item replace entity @s armor.chest from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:101b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:101b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:101b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:101b}].Count
item replace entity @s armor.legs from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:100b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:100b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:100b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:100b}].Count
item replace entity @s armor.feet from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:0b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:0b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:0b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:0b}].Count
item replace entity @s hotbar.0 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:1b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:1b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:1b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:1b}].Count
item replace entity @s hotbar.1 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:2b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:2b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:2b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:2b}].Count
item replace entity @s hotbar.2 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:3b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:3b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:3b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:3b}].Count
item replace entity @s hotbar.3 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:4b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:4b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:4b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:4b}].Count
item replace entity @s hotbar.4 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:5b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:5b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:5b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:5b}].Count
item replace entity @s hotbar.5 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:6b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:6b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:6b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:6b}].Count
item replace entity @s hotbar.6 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:7b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:7b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:7b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:7b}].Count
item replace entity @s hotbar.7 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:8b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:8b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:8b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:8b}].Count
item replace entity @s hotbar.8 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:9b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:9b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:9b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:9b}].Count
item replace entity @s inventory.0 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:10b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:10b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:10b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:10b}].Count
item replace entity @s inventory.1 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:11b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:11b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:11b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:11b}].Count
item replace entity @s inventory.2 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:12b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:12b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:12b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:12b}].Count
item replace entity @s inventory.3 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:13b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:13b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:13b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:13b}].Count
item replace entity @s inventory.4 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:14b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:14b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:14b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:14b}].Count
item replace entity @s inventory.5 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:15b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:15b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:15b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:15b}].Count
item replace entity @s inventory.6 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:16b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:16b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:16b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:16b}].Count
item replace entity @s inventory.7 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:17b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:17b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:17b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:17b}].Count
item replace entity @s inventory.8 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:18b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:18b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:18b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:18b}].Count
item replace entity @s inventory.9 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:19b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:19b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:19b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:19b}].Count
item replace entity @s inventory.10 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:20b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:20b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:20b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:20b}].Count
item replace entity @s inventory.11 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:21b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:21b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:21b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:21b}].Count
item replace entity @s inventory.12 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:22b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:22b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:22b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:22b}].Count
item replace entity @s inventory.13 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:23b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:23b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:23b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:23b}].Count
item replace entity @s inventory.14 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:24b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:24b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:24b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:24b}].Count
item replace entity @s inventory.15 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:25b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:25b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:25b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:25b}].Count
item replace entity @s inventory.16 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:26b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:26b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:26b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:26b}].Count
item replace entity @s inventory.17 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:27b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:27b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:27b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:27b}].Count
item replace entity @s inventory.18 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:28b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:28b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:28b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:28b}].Count
item replace entity @s inventory.19 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:29b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:29b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:29b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:29b}].Count
item replace entity @s inventory.20 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:30b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:30b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:30b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:30b}].Count
item replace entity @s inventory.21 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:31b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:31b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:31b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:31b}].Count
item replace entity @s inventory.22 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:32b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:32b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:32b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:32b}].Count
item replace entity @s inventory.23 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:33b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:33b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:33b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:33b}].Count
item replace entity @s inventory.24 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:34b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:34b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:34b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:34b}].Count
item replace entity @s inventory.25 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

execute if data storage emotes:inv heldItems[{Slot:35b}] run item replace block ~ ~ ~ container.0 with stone
data modify block ~ ~ ~ Items[0].id set from storage emotes:inv heldItems[{Slot:35b}].id
data modify block ~ ~ ~ Items[0].tag set from storage emotes:inv heldItems[{Slot:35b}].tag
data modify block ~ ~ ~ Items[0].Count set from storage emotes:inv heldItems[{Slot:35b}].Count
item replace entity @s inventory.26 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with air

setblock ~ ~ ~ air
kill @e[type=armor_stand,tag=emote,limit=1,sort=nearest]