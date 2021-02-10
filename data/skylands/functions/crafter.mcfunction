##
 # crafter.mcfunction
 # 
 #
 # Created by .
##


##### Antanium Ingot ######
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot",Count:1b},{Slot:1b,id:"minecraft:gold_ingot",Count:1b}]} run function skylands:antanium_ingot


###### Antanium pickaxe #####
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:brick",Count:1b,tag:{antanium_ingot:1b,Enchantments:[{}]}},{Slot:1b,id:"minecraft:brick",Count:1b,tag:{antanium_ingot:1b,Enchantments:[{}]}},{Slot:2b,id:"minecraft:brick",Count:1b,tag:{antanium_ingot:1b,Enchantments:[{}]}},{Slot:4b,id:"minecraft:stick",Count:1b},{Slot:7b,id:"minecraft:stick",Count:1b}]} run function skylands:antanium_pick





####### drop spawn egg and delete dropper when destroyed ######
execute if block ~ ~ ~ air run give @p minecraft:bat_spawn_egg{display:{Name:'{"text":"Warped Crafter"}'},EntityTag:{Silent:1b,CustomNameVisible:0b,Tags:["crafterspawn"],CustomName:'{"text":"Warped Crafter"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:100,ShowParticles:0b}]}} 1
execute if block ~ ~ ~ cave_air run give @p minecraft:bat_spawn_egg{display:{Name:'{"text":"Warped Crafter"}'},EntityTag:{Silent:1b,CustomNameVisible:0b,Tags:["crafterspawn"],CustomName:'{"text":"Warped Crafter"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:100,ShowParticles:0b}]}} 1
execute if block ~ ~ ~ air run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dropper",Count:1b}}]
execute if block ~ ~ ~ cave_air run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dropper",Count:1b}}]



##### kill armour stand if dropper destroyed #####
execute if block ~ ~ ~ air run kill @s[tag=crafter]
execute if block ~ ~ ~ cave_air run kill @s[tag=crafter]


