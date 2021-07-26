
# 计算玩家初始方向
execute as @a run execute as @s if score @s Rotate matches 0..89 run scoreboard players set @s StartAngle 1
execute as @a run execute as @s if score @s Rotate matches 90..179 run scoreboard players set @s StartAngle 2
execute as @a run execute as @s if score @s Rotate matches -180..-91 run scoreboard players set @s StartAngle 3
execute as @a run execute as @s if score @s Rotate matches -90..-1 run scoreboard players set @s StartAngle 4