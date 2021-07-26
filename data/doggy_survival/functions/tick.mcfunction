
# 获取玩家朝向
execute as @a run execute as @s store result score @s Rotate run data get entity @s Rotation[0]

# 检测玩家下蹲
execute as @a run function doggy_survival:test_squat

# 清除转圈完成状态
scoreboard players set @a IsCircle 0

# 检测玩家转圈
execute as @a run execute as @s if score @s IsSquat matches 1 run function doggy_survival:test_circle

# 走 Tick
scoreboard players add ForTick T 1
execute if score ForTick T matches 100.. run scoreboard players set ForTick T 1

# 检测玩家完成动作
execute as @a[nbt={OnGround:0b}] at @s run execute as @s if score @s IsCircle matches 1 if score @s IsDoggy matches 0 run function doggy_survival:give_item

# 检测玩家完成动作
execute as @a[nbt={OnGround:0b}] at @s run execute as @s if score @s IsCircle matches 1 if score @s IsDoggy matches 0 run function doggy_survival:clean_circle

# 检测玩家完成全部动作
scoreboard players set @a IsDoggy 0
execute as @a[nbt={OnGround:0b}] run execute as @s if score @s IsCircle matches 1 run scoreboard players set @s IsDoggy 1