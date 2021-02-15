##
 # loop.mcfunction
 # 
 #
 # Created by .
##

##### crafting table #### 
execute as @e[tag=crafter] at @s run function skylands:crafter/crafter


#### check if crafting table is being placed ####
execute as @e[type=bat, tag=crafterspawn] at @s run function skylands:crafter/summon_crafter

##### teleport to sky islands if y - 256 #####

execute as @a at @s if entity @s[ y= 200, dy=1000] run execute in skylands:sky run tp @p ~ 20 ~
execute as @a at @s if entity @s[ y= -20, dy=-1000] run execute in minecraft:overworld run tp @p ~ 180 ~
#create armor stand and spawn town on it but only once
