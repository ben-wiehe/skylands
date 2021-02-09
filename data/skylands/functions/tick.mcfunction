##
 # loop.mcfunction
 # 
 #
 # Created by .
##

##### crafting table #### 
execute as @e[tag=crafter] at @s run function skylands:crafter


#### check if crafting table is being placed ####




execute as @e[type=bat, tag=crafterspawn] at @s run function skylands:summon_crafter