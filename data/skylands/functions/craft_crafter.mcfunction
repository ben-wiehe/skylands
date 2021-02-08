##
 # craft_crafter.mcfunction
 # 
 # function run when crafter is crafted to give the player the custom crafter
 #
 # Created by .
##


recipe take @s skylands:crafter
advancement revoke @s only skylands:craft_crafter_adv
clear @s minecraft:knowledge_book
give @s minecraft:carrot_on_a_stick
