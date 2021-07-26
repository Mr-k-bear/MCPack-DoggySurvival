scoreboard players remove @s wcraft.optime 1
execute at @e[distance=0.00001..3] facing entity @s feet run tp @e[sort=nearest,limit=1] ^ ^ ^-0.3
#execute as @e[distance=0.00001..3] at @s facing entity @p feet run tp ^ ^ ^-0.3