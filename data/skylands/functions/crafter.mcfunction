##
 # crafter.mcfunction
 # 
 #
 # Created by .
##


##### recipe 1 test ######
execute if block ~ ~ ~ dropper{Items:[{Slot:0b,id:"minecraft:warped_stem",Count:1b},{Slot:1b,id:"minecraft:diamond",Count:1b}]} run function skylands:recipe1







##### kill armour stand if dropper destroyed #####
execute if block ~ ~ ~ air run kill @s[tag=crafter]
execute if block ~ ~ ~ cave_air run kill @s[tag=crafter]