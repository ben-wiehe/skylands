# this function should only run when the player gets the advancement skylands:utility/in_nether, 
# so all I'm concerned with here is revoking the other dimension advancements so that if the player 
# has a given dimension advancement, it is always true that they are in that dimension and don't have 
# other dimension advancements.  

execute as @s run advancement revoke @s only skylands:utility/in_overworld
execute as @s run advancement revoke @s only skylands:utility/in_end
execute as @s run advancement revoke @s only skylands:utility/in_skylands
execute as @s run advancement revoke @s only skylands:utility/in_other
