# establish correct dimension advancement.  Only run this function on load and player respawn 
# because it's expensive and there's an advancement system to take care of it the rest of the time.  
# Granting these advancements should trigger the rewards for the advancements, which are functions 
# that make sure the player only has one dimension advancement at a time.  

execute as @a run advancement revoke @s from skylands:utility/root
execute as @a[nbt={Dimension:"minecraft:overworld"}] run advancement grant @s only skylands:utility/in_overworld
execute as @a[nbt={Dimension:"minecraft:the_nether"}] run advancement grant @s only skylands:utility/in_nether
execute as @a[nbt={Dimension:"minecraft:the_end"}] run advancement grant @s only skylands:utility/in_end
execute as @a[nbt={Dimension:"skylands:sky"}] run advancement grant @s only skylands:utility/in_skylands
