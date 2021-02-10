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
give @p minecraft:bat_spawn_egg{display:{Name:'{"text":"Warped Crafter"}'},EntityTag:{Silent:1b,CustomNameVisible:0b,Tags:["crafterspawn"],CustomName:'{"text":"Warped Crafter"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:100,ShowParticles:0b}]}} 1
