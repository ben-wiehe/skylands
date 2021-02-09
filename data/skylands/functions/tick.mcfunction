##
 # loop.mcfunction
 # 
 #
 # Created by .
##

##### crafting table #### 
execute as @e[tag=crafter] at @s run function skylands:crafter


#### check if crafting table is being placed ####

execute as @e[type=minecraft:snowball, nbt={Item:{tag:{crafter:1b}}}] at @s unless block ^ ^ ^1 air run function skylands:summon_crafter 
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{crafter:1b}}}] at @s unless block ^ ^-1 ^1 air run function skylands:summon_crafter 
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{crafter:1b}}}] at @s unless block ~ ~-1 ~ air run function skylands:summon_crafter 

execute as @e[type=minecraft:snowball, nbt={Item:{tag:{crafter:1b}}}] at @s unless block ^ ^ ^1 air run kill @s
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{crafter:1b}}}] at @s unless block ^ ^ ^1 air run kill @s
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{crafter:1b}}}] at @s unless block ^ ^ ^1 air run kill @s
