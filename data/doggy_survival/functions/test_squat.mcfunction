
# 检测玩家下蹲增加计数器
execute as @a run execute at @s if score @s Squat matches 1.. run scoreboard players add @s TickSquat 1

# 检测玩家站起减少计数器
execute at @s unless score @s Squat matches 1.. run scoreboard players remove @s TickSquat 1

# 限制 TickSquat 范围
execute at @s if score @s TickSquat matches 2.. run scoreboard players set @s TickSquat 2
execute at @s if score @s TickSquat matches ..0 run scoreboard players set @s TickSquat 0

# 触发下蹲事件
execute at @s if score @s TickSquat matches 1..2 if score @s IsSquat matches 0 run function doggy_survival:on_squat

# 触发站起事件
execute at @s unless score @s TickSquat matches 1..2 if score @s IsSquat matches 1 run function doggy_survival:clean_circle

# 检测下蹲状态
execute at @s if score @s TickSquat matches 1..2 run scoreboard players set @s IsSquat 1
execute at @s unless score @s TickSquat matches 1..2 run scoreboard players set @s IsSquat 0

# 清除下蹲数据
scoreboard players set @s Squat 0