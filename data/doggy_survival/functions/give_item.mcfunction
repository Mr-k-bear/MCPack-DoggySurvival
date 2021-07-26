
# 整活
execute as @s at @s run playsound minecraft:entity.wolf.ambient player @a ~ ~ ~ 2

# 生成随机数
execute store result score Random T run time query gametime
scoreboard players operation Random T /= T1000 T
scoreboard players operation @s Reset /= T1000 T
scoreboard players operation Random T += @s Reset
scoreboard players operation Random T += ForTick T
scoreboard players operation Random T %= OPNUM T
scoreboard players add Random T 1

# 1 基岩
execute as @s at @s if score Random T matches 1 run give @s minecraft:bedrock{Enchantments:[{id:"knockback",lvl:1}],display:{Name:'{"text":"稽岩","color":"light_purple"}',Lore:['{"text":"请不要给你的队友添堵"}']},Unbreakable:1b} 12

# 2 燃烧棒
execute as @s at @s if score Random T matches 2 run give @s minecraft:stick{Enchantments:[{id:"fire_aspect",lvl:10}],display:{Name:'{"text":"燃烧棒","color":"red"}',Lore:['{"text":"燃...燃起来啦!!!"}']}} 1

# 3 cen的头
execute as @s at @s if score Random T matches 3 run give @s minecraft:player_head{SkullOwner:BadCen,display:{Name:'{"text":"BadCen"}',Lore:['{"text":"大黑曜石制造者Cen"}','{"text":"带上有惊喜!!!"}']}} 1

# 4 博人传残片
execute as @s at @s if score Random T matches 4 run give @s minecraft:netherite_scrap{Enchantments:[{id:"fire_protection",lvl:100}],display:{Name:'{"text":"博人传残页","color":"yellow"}',Lore:['{"text":"别试了,烧不着的"}']},Unbreakable:1b} 4

# 5 红叔的拐杖
execute as @s at @s if score Random T matches 5 run give @s minecraft:bamboo{Enchantments:[{id:"knockback",lvl:10}],display:{Name:'{"text":"uncle_red的拐杖","color":"yellow"}',Lore:['{"text":"老年人的愤怒"}']},Unbreakable:1b} 1

# 6 绑定南瓜头 
execute as @s at @s if score Random T matches 6 run give @s minecraft:carved_pumpkin{Enchantments:[{id:"protection",lvl:114},{id:"binding_curse",lvl:5},{id:"respiration",lvl:14}],display:{Name:'{"text":"南瓜面具","color":"yellow"}',Lore:['{"text":"下雨天南瓜与发射器更配哦"}']},Unbreakable:1b} 1

# 7 绑定乌龟壳
execute as @s at @s if score Random T matches 7 run give @s minecraft:turtle_helmet{Enchantments:[{id:"protection",lvl:114},{id:"binding_curse",lvl:5},{id:"respiration",lvl:14}],display:{Name:'{"text":"海龟头","color":"yellow"}',Lore:['{"text":"帮你的队友戴上它"}']},Unbreakable:1b} 1

# 8 落地水
execute as @s at @s if score Random T matches 8 run give @s minecraft:water_bucket{display:{Name:'{"text":"卡慕SaMa的落地水","color":"red"}',Lore:[]},Unbreakable:1b} 1

# 9 镐定了
execute as @s at @s if score Random T matches 9 run give @s minecraft:diamond_pickaxe{Enchantments:[{id:"fortune",lvl:20},{id:"loyalty",lvl:20},],display:{Name:'{"text":"搞定了"}',Lore:['{"text":"懂得都懂"}']}}

# 10 melor生成蛋
execute as @s at @s if score Random T matches 10 run give @s minecraft:panda_spawn_egg{display:{Name:'{"text":"Melor_"}'}}

# 11 卡米猫的同人文
execute as @s at @s if score Random T matches 11 run give @s book{Enchantments:[{id:"loyalty",lvl:8},{id:"knockback",lvl:8}],display:{Name:'{"text":"卡米猫的同人文"}'}}

# 12 我吐了生成蛋
execute as @s at @s if score Random T matches 12 run give @s minecraft:trader_llama_spawn_egg{display:{Name:'{"text":"我吐了"}'}}

# 13 Q3的DC
execute as @s at @s if score Random T matches 13 run give @s minecraft:light_blue_wool{Enchantments:[{id:"knockback",lvl:1}],display:{Name:'{"text":"Q3的DC","color":"blue"}',Lore:['{"text":"CPS180"}','{"text":"拿在手上你将成为速叠大师"}']},Unbreakable:1b,Q3dc:1b} 12

# 14 手榴弹
execute as @s at @s if score Random T matches 14 run give @s minecraft:snowball{SnowballBoom:1b,Enchantments:[{id:"knockback",lvl:1}],display:{Name:'{"text":"手榴弹","color":"red"}',Lore:['{"text":"Boom!!!"}','{"text":"这不是在开玩笑：)"}']},Unbreakable:1b,Q3dc:1b} 16

# 15 Cen的欧皇气运
execute as @s at @s if score Random T matches 15 run give @s minecraft:diamond_pickaxe{Enchantments:[{id:"fortune",lvl:10}],display:{Name:'{"text":"Cen的欧皇气运"}'}}

# 16 素食主义者
execute as @s at @s if score Random T matches 16 run function op_equip:vegetarian_get

# 17 喜c话,懒无下
execute as @s at @s if score Random T matches 17 run give @s minecraft:leather_boots{Enchantments:[{id:"thorns",lvl:10}],display:{Name:'{"text":"喜c话,懒无下","color":"blue"}',Lore:['{"text":"懒狗必备"}','{"text":"将脚下的石头变成钻石矿"}']},Damage:64,LazyDogDiBoot:1b}

# 18 坚硬的面包
execute as @s at @s if score Random T matches 18 run give @s minecraft:bread{Enchantments:[{id:"sharpness",lvl:10}]} 64

# 19 熟牛排12个
execute as @s at @s if score Random T matches 19 run give @s cooked_beef 12

# 20 附魔金苹果1个
execute as @s at @s if score Random T matches 20 run give @s enchanted_golden_apple 1

# 21 召唤下界传送门框架
execute as @s at @s if score Random T matches 21 run function op_equip:summon_nether_portal

# 22 天打雷劈
execute as @s at @s if score Random T matches 22 run summon lightning_bolt ~ ~ ~

# 23 干草捆24个
execute as @s at @s if score Random T matches 23 run give @s hay_block 24

# 24 脚下生成下届合金快
execute as @s at @s if score Random T matches 24 run setblock ~ ~-1 ~ netherite_block 

# 25 抗拒之环
execute as @s at @s if score Random T matches 25 run function wcraftopitem:give

# 26 太空套装 头盔
execute as @s at @s if score Random T matches 26 run give @s minecraft:chainmail_helmet{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:feather_falling",lvl:10},{id:"minecraft:respiration",lvl:10}],AstronautEqui:1b,display:{Name:'{"text":"太空人头盔","color":"blue"}',Lore:['{"text":"太空人套装:"}','{"text":"集齐太空人套装可以起飞"}','{"text":"起飞方法:"}','{"text":"跳起来在空中下蹲可以漂浮"}']}}

# 27 太空套装 胸甲
execute as @s at @s if score Random T matches 27 run give @s minecraft:chainmail_chestplate{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:feather_falling",lvl:10},{id:"minecraft:respiration",lvl:10}],AstronautEqui:1b,display:{Name:'{"text":"太空人胸甲","color":"blue"}',Lore:['{"text":"太空人套装:"}','{"text":"集齐太空人套装可以起飞"}','{"text":"起飞方法:"}','{"text":"跳起来在空中下蹲可以漂浮"}']}}

# 28 太空套装 裤子
execute as @s at @s if score Random T matches 28 run give @s minecraft:chainmail_leggings{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:feather_falling",lvl:10},{id:"minecraft:respiration",lvl:10}],AstronautEqui:1b,display:{Name:'{"text":"太空人裤子","color":"blue"}',Lore:['{"text":"太空人套装:"}','{"text":"集齐太空人套装可以起飞"}','{"text":"起飞方法:"}','{"text":"跳起来在空中下蹲可以漂浮"}']}}

# 29 太空套装 鞋子
execute as @s at @s if score Random T matches 29 run give @s minecraft:chainmail_boots{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:feather_falling",lvl:10},{id:"minecraft:respiration",lvl:10}],AstronautEqui:1b,display:{Name:'{"text":"太空人鞋子","color":"blue"}',Lore:['{"text":"太空人套装:"}','{"text":"集齐太空人套装可以起飞"}','{"text":"起飞方法:"}','{"text":"跳起来在空中下蹲可以漂浮"}']}}

# 30 真金不怕火炼 下届合金胸甲
execute as @s at @s if score Random T matches 30 run give @s netherite_chestplate{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10},{id:"minecraft:projectile_protection",lvl:10},{id:"minecraft:blast_protection",lvl:10}],display:{Name:'{"text":"真金不怕火炼"}'}}

# 31 狂战士套装 头盔
execute as @s at @s if score Random T matches 31 run give @s minecraft:netherite_helmet{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10},{id:"minecraft:projectile_protection",lvl:10}],WarriorEqui:1b,display:{Name:'{"text":"狂战士头盔","color":"blue"}',Lore:['{"text":"狂战士套装:"}','{"text":"集齐狂战士套装可以获得以下效果"}','{"text":"抗性"}','{"text":"力量"}']}}

# 32 狂战士套装 胸甲
execute as @s at @s if score Random T matches 32 run give @s minecraft:netherite_chestplate{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10},{id:"minecraft:projectile_protection",lvl:10}],WarriorEqui:1b,display:{Name:'{"text":"狂战士盔甲","color":"blue"}',Lore:['{"text":"狂战士套装:"}','{"text":"集齐狂战士套装可以获得以下效果"}','{"text":"抗性"}','{"text":"力量"}']}}

# 33 狂战士套装 裤子
execute as @s at @s if score Random T matches 33 run give @s minecraft:netherite_leggings{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10},{id:"minecraft:projectile_protection",lvl:10}],WarriorEqui:1b,display:{Name:'{"text":"狂战士战甲","color":"blue"}',Lore:['{"text":"狂战士套装:"}','{"text":"集齐狂战士套装可以获得以下效果"}','{"text":"抗性"}','{"text":"力量"}']}}

# 34 狂战士套装 鞋子
execute as @s at @s if score Random T matches 34 run give @s minecraft:netherite_boots{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10},{id:"minecraft:projectile_protection",lvl:10}],WarriorEqui:1b,display:{Name:'{"text":"狂战士战靴","color":"blue"}',Lore:['{"text":"狂战士套装:"}','{"text":"集齐狂战士套装可以获得以下效果"}','{"text":"抗性"}','{"text":"力量"}']}}

# 35 阴间人套装 头盔
execute as @s at @s if score Random T matches 35 run give @s minecraft:netherite_helmet{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10}],InsidiousEqui:1b,display:{Name:'{"text":"阴间人面具","color":"blue"}',Lore:['{"text":"阴间人套装:"}','{"text":"集齐阴间人套装可以获得以下效果"}','{"text":"附近8格内生物凋零"}']}}

# 36 阴间人套装 胸甲
execute as @s at @s if score Random T matches 36 run give @s minecraft:netherite_chestplate{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10}],InsidiousEqui:1b,display:{Name:'{"text":"阴间人上衣","color":"blue"}',Lore:['{"text":"阴间人套装:"}','{"text":"集齐阴间人套装可以获得以下效果"}','{"text":"附近8格内生物凋零"}']}}

# 37 阴间人套装 裤子
execute as @s at @s if score Random T matches 37 run give @s minecraft:netherite_leggings{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10}],InsidiousEqui:1b,display:{Name:'{"text":"阴间人裤子","color":"blue"}',Lore:['{"text":"阴间人套装:"}','{"text":"集齐阴间人套装可以获得以下效果"}','{"text":"附近8格内生物凋零"}']}}

# 38 阴间人套装 鞋子
execute as @s at @s if score Random T matches 38 run give @s minecraft:netherite_boots{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10}],InsidiousEqui:1b,display:{Name:'{"text":"阴间人拖鞋","color":"blue"}',Lore:['{"text":"阴间人套装:"}','{"text":"集齐阴间人套装可以获得以下效果"}','{"text":"附近8格内生物凋零"}']}}

# 39 矿工套装 头盔
execute as @s at @s if score Random T matches 39 run give @s minecraft:diamond_helmet{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10}],MinerEqui:1b,display:{Name:'{"text":"矿工帽","color":"blue"}',Lore:['{"text":"矿工套装:"}','{"text":"集齐矿工套装可以获得以下效果"}','{"text":"急迫"}','{"text":"夜视"}','{"text":"幸运"}']}}

# 40 矿工套装 胸甲
execute as @s at @s if score Random T matches 40 run give @s minecraft:diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10}],MinerEqui:1b,display:{Name:'{"text":"矿工上衣","color":"blue"}',Lore:['{"text":"矿工套装:"}','{"text":"集齐矿工套装可以获得以下效果"}','{"text":"急迫"}','{"text":"夜视"}','{"text":"幸运"}']}}

# 41 矿工套装 裤子
execute as @s at @s if score Random T matches 41 run give @s minecraft:diamond_leggings{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10}],MinerEqui:1b,display:{Name:'{"text":"矿工裤子","color":"blue"}',Lore:['{"text":"矿工套装:"}','{"text":"集齐矿工套装可以获得以下效果"}','{"text":"急迫"}','{"text":"夜视"}','{"text":"幸运"}']}}

# 42 矿工套装 鞋子
execute as @s at @s if score Random T matches 42 run give @s minecraft:diamond_boots{Enchantments:[{id:"minecraft:protection",lvl:10},{id:"minecraft:fire_protection",lvl:10}],MinerEqui:1b,display:{Name:'{"text":"矿工靴子","color":"blue"}',Lore:['{"text":"矿工套装:"}','{"text":"集齐矿工套装可以获得以下效果"}','{"text":"急迫"}','{"text":"夜视"}','{"text":"幸运"}']}}

# 43 洗脚水
execute as @s at @s if score Random T matches 43 run give @s minecraft:splash_potion{CustomPotionEffects:[{Id:9,Duration:400},{Id:20,Duration:400}],CustomPotionColor:750599,display:{Name:"\"洗jio水\""}}

# 44 天使的恩赐
execute as @s at @s if score Random T matches 44 run give @s minecraft:potion{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:1200},{Id:3,Duration:1200},{Id:5,Duration:1200},{Id:6},{Id:8,Amplifier:1,Duration:1200},{Id:10,Amplifier:2,Duration:1200},{Id:11,Duration:1200},{Id:12,Duration:1200},{Id:13,Duration:1200},{Id:14,Duration:1200},{Id:16,Duration:1200},{Id:21,Duration:1200},{Id:22,Duration:1200},{Id:23},{Id:26,Duration:1200},{Id:28,Duration:1200},{Id:30,Duration:1200}],CustomPotionColor:16764718,display:{Name:"\"天使的恩赐\""}}

# 45 村庄“英雄”
execute as @s at @s if score Random T matches 45 run give @s minecraft:potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:32,Duration:1200}],display:{Name:"\"村庄“英雄”\""}}

# 46 危
execute as @s at @s if score Random T matches 46 run give @s minecraft:splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:7,Amplifier:28},{Id:19,Amplifier:4,Duration:400},{Id:20,Amplifier:2,Duration:400}],display:{Name:"\"危\""}}

# 47 一个钻石能做什么呢？
execute as @s at @s if score Random T matches 47 run give @s minecraft:diamond{display:{Name:"\"一个钻石能做什么呢？\""}}

# 48 请你吃蛋
execute as @s at @s if score Random T matches 48 run give @s zoglin_spawn_egg

# 49 家乡水
execute as @s at @s if score Random T matches 49 run give @s lava_bucket{display:{Name:"\"家乡水\""}}

# 50 三连
execute as @s at @s if score Random T matches 50 run give @s minecraft:splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:1,Duration:1200},{Id:3,Duration:1200}],display:{Name:"\"三连\""}}
