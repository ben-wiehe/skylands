##
 # crafter.mcfunction
 # 
 #
 # Created by .
##


##### recipe 1 test ######
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:warped_stem",Count:1b}]} run function skylands:crafter/recipe1




####### drop spawn egg and delete dropper when destroyed ######
execute if block ~ ~ ~ air run give @p minecraft:bat_spawn_egg{display:{Name:'{"text":"Warped Crafter"}'},EntityTag:{Silent:1b,CustomNameVisible:0b,Tags:["crafterspawn"],CustomName:'{"text":"Warped Crafter"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:100,ShowParticles:0b}]}} 1
execute if block ~ ~ ~ cave_air run give @p minecraft:bat_spawn_egg{display:{Name:'{"text":"Warped Crafter"}'},EntityTag:{Silent:1b,CustomNameVisible:0b,Tags:["crafterspawn"],CustomName:'{"text":"Warped Crafter"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:100,ShowParticles:0b}]}} 1
execute if block ~ ~ ~ air run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dropper",Count:1b}}]
execute if block ~ ~ ~ cave_air run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dropper",Count:1b}}]



##### kill armour stand if dropper destroyed #####
execute if block ~ ~ ~ air run kill @s[tag=crafter]
execute if block ~ ~ ~ cave_air run kill @s[tag=crafter]


