
# 计算玩家方向
execute as @s if score @s Rotate matches 0..89 run scoreboard players set @s Angle 1
execute as @s if score @s Rotate matches 90..179 run scoreboard players set @s Angle 2
execute as @s if score @s Rotate matches -180..-91 run scoreboard players set @s Angle 3
execute as @s if score @s Rotate matches -90..-1 run scoreboard players set @s Angle 4

# 如果起始是 1
# 顺序: 2->3->4->1
execute as @s if score @s StartAngle matches 1 if score @s Angle matches 2 run scoreboard players set @s Clockwise1 1
execute as @s if score @s StartAngle matches 1 if score @s Angle matches 3 run scoreboard players set @s Clockwise2 1
execute as @s if score @s StartAngle matches 1 if score @s Angle matches 4 run scoreboard players set @s Clockwise3 1
execute as @s if score @s StartAngle matches 1 if score @s Clockwise1 matches 1 if score @s Clockwise2 matches 1 if score @s Clockwise3 matches 1 if score @s Angle matches 1 run scoreboard players set @s Clockwise4 1

# 如果起始是 2
# 顺序: 3->4->1->2
execute as @s if score @s StartAngle matches 2 if score @s Angle matches 3 run scoreboard players set @s Clockwise1 1
execute as @s if score @s StartAngle matches 2 if score @s Angle matches 4 run scoreboard players set @s Clockwise2 1
execute as @s if score @s StartAngle matches 2 if score @s Angle matches 1 run scoreboard players set @s Clockwise3 1
execute as @s if score @s StartAngle matches 2 if score @s Clockwise1 matches 1 if score @s Clockwise2 matches 1 if score @s Clockwise3 matches 1 if score @s Angle matches 2 run scoreboard players set @s Clockwise4 1

# 如果起始是 3
# 顺序: 4->1->2->3
execute as @s if score @s StartAngle matches 3 if score @s Angle matches 4 run scoreboard players set @s Clockwise1 1
execute as @s if score @s StartAngle matches 3 if score @s Angle matches 1 run scoreboard players set @s Clockwise2 1
execute as @s if score @s StartAngle matches 3 if score @s Angle matches 2 run scoreboard players set @s Clockwise3 1
execute as @s if score @s StartAngle matches 3 if score @s Clockwise1 matches 1 if score @s Clockwise2 matches 1 if score @s Clockwise3 matches 1 if score @s Angle matches 3 run scoreboard players set @s Clockwise4 1

# 如果起始是 4
# 顺序: 1->2->3->4
execute as @s if score @s StartAngle matches 4 if score @s Angle matches 1 run scoreboard players set @s Clockwise1 1
execute as @s if score @s StartAngle matches 4 if score @s Angle matches 2 run scoreboard players set @s Clockwise2 1
execute as @s if score @s StartAngle matches 4 if score @s Angle matches 3 run scoreboard players set @s Clockwise3 1
execute as @s if score @s StartAngle matches 4 if score @s Clockwise1 matches 1 if score @s Clockwise2 matches 1 if score @s Clockwise3 matches 1 if score @s Angle matches 4 run scoreboard players set @s Clockwise4 1

# 如果起始是 1
# 逆序: 4->3->2->1
execute as @s if score @s StartAngle matches 1 if score @s Angle matches 4 run scoreboard players set @s AntiClockwise1 1
execute as @s if score @s StartAngle matches 1 if score @s Angle matches 3 run scoreboard players set @s AntiClockwise2 1
execute as @s if score @s StartAngle matches 1 if score @s Angle matches 2 run scoreboard players set @s AntiClockwise3 1
execute as @s if score @s StartAngle matches 1 if score @s AntiClockwise1 matches 1 if score @s AntiClockwise2 matches 1 if score @s AntiClockwise3 matches 1 if score @s Angle matches 1 run scoreboard players set @s AntiClockwise4 1

# 如果起始是 2
# 逆序: 1->4->3->2
execute as @s if score @s StartAngle matches 2 if score @s Angle matches 1 run scoreboard players set @s AntiClockwise1 1
execute as @s if score @s StartAngle matches 2 if score @s Angle matches 4 run scoreboard players set @s AntiClockwise2 1
execute as @s if score @s StartAngle matches 2 if score @s Angle matches 3 run scoreboard players set @s AntiClockwise3 1
execute as @s if score @s StartAngle matches 2 if score @s AntiClockwise1 matches 1 if score @s AntiClockwise2 matches 1 if score @s AntiClockwise3 matches 1 if score @s Angle matches 2 run scoreboard players set @s AntiClockwise4 1

# 如果起始是 3
# 逆序: 2->1->4->3
execute as @s if score @s StartAngle matches 3 if score @s Angle matches 2 run scoreboard players set @s AntiClockwise1 1
execute as @s if score @s StartAngle matches 3 if score @s Angle matches 1 run scoreboard players set @s AntiClockwise2 1
execute as @s if score @s StartAngle matches 3 if score @s Angle matches 4 run scoreboard players set @s AntiClockwise3 1
execute as @s if score @s StartAngle matches 3 if score @s AntiClockwise1 matches 1 if score @s AntiClockwise2 matches 1 if score @s AntiClockwise3 matches 1 if score @s Angle matches 3 run scoreboard players set @s AntiClockwise4 1

# 如果起始是 4
# 逆序: 3->2->1->4
execute as @s if score @s StartAngle matches 4 if score @s Angle matches 3 run scoreboard players set @s AntiClockwise1 1
execute as @s if score @s StartAngle matches 4 if score @s Angle matches 2 run scoreboard players set @s AntiClockwise2 1
execute as @s if score @s StartAngle matches 4 if score @s Angle matches 1 run scoreboard players set @s AntiClockwise3 1
execute as @s if score @s StartAngle matches 4 if score @s AntiClockwise1 matches 1 if score @s AntiClockwise2 matches 1 if score @s AntiClockwise3 matches 1 if score @s Angle matches 4 run scoreboard players set @s AntiClockwise4 1

# 检测是否完成旋转
execute as @s if score @s Clockwise1 matches 1 if score @s Clockwise2 matches 1 if score @s Clockwise3 matches 1 if score @s Clockwise4 matches 1 run scoreboard players set @s IsCircle 1
execute as @s if score @s AntiClockwise1 matches 1 if score @s AntiClockwise2 matches 1 if score @s AntiClockwise3 matches 1 if score @s AntiClockwise4 matches 1 run scoreboard players set @s IsCircle 1