# teleport to skylands from overworld.  This function tries to run every tick but should only 
# succeed if the player is in the overworld (i.e. has the skylands:utility/in_overworld advancement)
# AND at y >= 320  

execute at @s as @s in skylands:sky run tp @s ~ 256 ~
