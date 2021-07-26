
# 太空人
execute as @a[nbt={OnGround:0b,Inventory:[{Slot:100b,tag:{AstronautEqui:1b}},{Slot:101b,tag:{AstronautEqui:1b}},{Slot:102b,tag:{AstronautEqui:1b}},{Slot:103b,tag:{AstronautEqui:1b}}]}] run execute as @s if score @s IsSquat matches 1..10 run effect give @s minecraft:levitation 1 5 true

# 狂战士
execute as @a[nbt={Inventory:[{Slot:100b,tag:{WarriorEqui:1b}},{Slot:101b,tag:{WarriorEqui:1b}},{Slot:102b,tag:{WarriorEqui:1b}},{Slot:103b,tag:{WarriorEqui:1b}}]}] run effect give @s strength 1 4 true
execute as @a[nbt={Inventory:[{Slot:100b,tag:{WarriorEqui:1b}},{Slot:101b,tag:{WarriorEqui:1b}},{Slot:102b,tag:{WarriorEqui:1b}},{Slot:103b,tag:{WarriorEqui:1b}}]}] run effect give @s resistance 1 4 true

# 阴间人
execute as @a[nbt={Inventory:[{Slot:100b,tag:{InsidiousEqui:1b}},{Slot:101b,tag:{InsidiousEqui:1b}},{Slot:102b,tag:{InsidiousEqui:1b}},{Slot:103b,tag:{InsidiousEqui:1b}}]}] at @s run effect give @e[nbt=!{Inventory:[{Slot:100b,tag:{InsidiousEqui:1b}},{Slot:101b,tag:{InsidiousEqui:1b}},{Slot:102b,tag:{InsidiousEqui:1b}},{Slot:103b,tag:{InsidiousEqui:1b}}]},distance=0..8] wither 1 1 true

# 矿工
execute as @a[nbt={Inventory:[{Slot:100b,tag:{MinerEqui:1b}},{Slot:101b,tag:{MinerEqui:1b}},{Slot:102b,tag:{MinerEqui:1b}},{Slot:103b,tag:{MinerEqui:1b}}]}] run effect give @s luck 1 9 true
execute as @a[nbt={Inventory:[{Slot:100b,tag:{MinerEqui:1b}},{Slot:101b,tag:{MinerEqui:1b}},{Slot:102b,tag:{MinerEqui:1b}},{Slot:103b,tag:{MinerEqui:1b}}]}] run effect give @s haste 1 9 true
execute as @a[nbt={Inventory:[{Slot:100b,tag:{MinerEqui:1b}},{Slot:101b,tag:{MinerEqui:1b}},{Slot:102b,tag:{MinerEqui:1b}},{Slot:103b,tag:{MinerEqui:1b}}]}] run effect give @s night_vision 12 1 true