
# 用于检测玩家下蹲
scoreboard objectives add Squat minecraft.custom:minecraft.sneak_time "下蹲时间"
scoreboard objectives add TickSquat dummy "下蹲计数"
scoreboard objectives add IsSquat dummy "是否下蹲"

# 检测玩家转圈
scoreboard objectives add Rotate dummy "方向"
scoreboard objectives add Angle dummy "角度"
scoreboard objectives add StartAngle dummy "起始角度"
scoreboard objectives add Clockwise1 dummy "顺时针进度1"
scoreboard objectives add Clockwise2 dummy "顺时针进度2"
scoreboard objectives add Clockwise3 dummy "顺时针进度3"
scoreboard objectives add Clockwise4 dummy "顺时针进度4"
scoreboard objectives add AntiClockwise1 dummy "逆时针进度1"
scoreboard objectives add AntiClockwise2 dummy "逆时针进度2"
scoreboard objectives add AntiClockwise3 dummy "逆时针进度3"
scoreboard objectives add AntiClockwise4 dummy "逆时针进度4"
scoreboard objectives add IsCircle dummy "完成转圈"

# 检测玩家是否完成动作
scoreboard objectives add IsDoggy dummy "完成全部动作"

# 随机数
scoreboard objectives add T dummy "全局变量"
scoreboard objectives add Reset minecraft.custom:minecraft.time_since_death "死亡时间"

# 开启调试
scoreboard players set Debug T 1

# op物品数量
scoreboard players set OPNUM T 50
scoreboard players set Random T 0
scoreboard players set ForTick T 0
scoreboard players set T1000 T 1000

say "Doggy survival loading success!!"