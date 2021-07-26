
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"BadCen"}}}]}] run execute as @s at @s if score @s cen_header matches 0 run fill ~1 ~2 ~1 ~-1 ~ ~-1 minecraft:glass

execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"BadCen"}}}]}] run execute as @s at @s if score @s cen_header matches 0 run fill ~1 ~1 ~0 ~-1 ~ ~0 minecraft:obsidian

execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"BadCen"}}}]}] run execute as @s at @s if score @s cen_header matches 0 run fill ~0 ~1 ~1 ~0 ~ ~-1 minecraft:obsidian

# 清除数据
scoreboard players set @a cen_header 0

# 检测玩家带上 cen 头
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"BadCen"}}}]}] run scoreboard players set @s cen_header 1

execute as @a if score @s cen_header matches 1 run effect give @s minecraft:strength 2 1 true
execute as @a if score @s cen_header matches 1 run effect give @s minecraft:jump_boost 1 1 true
execute as @a if score @s cen_header matches 1 run effect give @s minecraft:speed 1 1 true