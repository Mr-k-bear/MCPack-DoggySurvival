execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~ ~ ~ air run tag @s add snowball_boom


execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~ ~-1 ~ air run tag @s add snowball_boom

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~ ~1 ~ air run tag @s add snowball_boom

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~1 ~ ~ air run tag @s add snowball_boom

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~-1 ~ ~ air run tag @s add snowball_boom

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~ ~ ~1 air run tag @s add snowball_boom

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~ ~ ~-1 air run tag @s add snowball_boom


execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~-1 ~1 ~1 air run tag @s add snowball_boom

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~-1 ~1 ~-1 air run tag @s add snowball_boom

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~1 ~1 ~-1 air run tag @s add snowball_boom

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~1 ~1 ~1 air run tag @s add snowball_boom


execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~-1 ~-1 ~1 air run tag @s add snowball_boom

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~-1 ~-1 ~-1 air run tag @s add snowball_boom

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~1 ~-1 ~-1 air run tag @s add snowball_boom

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{SnowballBoom:1b}}}] at @s unless block ~1 ~-1 ~1 air run tag @s add snowball_boom

execute as @e[type=snowball,tag=snowball_boom] at @s run summon tnt ~ ~ ~

execute as @e[type=snowball,tag=snowball_boom] at @s run kill @s
