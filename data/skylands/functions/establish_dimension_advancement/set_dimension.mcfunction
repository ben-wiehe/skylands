# establish correct dimension advancement.  Only run this function on load and player respawn 
# because it's expensive and there's an advancement system to take care of it the rest of the time.  
# Granting these advancements should trigger the rewards for the advancements, which are functions 
# that make sure the player only has one dimension advancement at a time.  

execute as @a run advancement revoke @s from skylands:utility/root
execute as @a[nbt={Dimension:"minecraft:overworld"}] run advancement grant @s only skylands:utility/in_overworld
execute as @a[nbt={Dimension:"minecraft:the_nether"}] run advancement grant @s only skylands:utility/in_nether
execute as @a[nbt={Dimension:"minecraft:the_end"}] run advancement grant @s only skylands:utility/in_end
execute as @a[nbt={Dimension:"skylands:sky"}] run advancement grant @s only skylands:utility/in_skylands
# the below should probably be a new predicate or something instead of one really really long 
# target selector but here we are.  It grants skylands:utility/in_other if the player still 
# didn't get any of the other advancements prior AND doesn't already have skylands:utility/in_other
execute as @a if entity @s[advancements={skylands:utility/in_overworld=false, skylands:utility/in_nether=false, skylands:utility/in_end=false, skylands:utility/in_skylands=false, skylands:utility/in_other=false}, y=-20, dy=-1000] run advancement grant @s only skylands:utility/in_other
# tl;dr the line immediately above this one handles players in other unlisted dimensions from other datapacks
