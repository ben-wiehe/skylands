# teleport to overworld from skylands.  This function tries to run every tick but should only 
# succeed if the player is in the skylands (i.e. has the skylands:utility/in_skylands advancement)
# AND at y <= -20  

execute at @s as @s in minecraft:overworld run tp @s ~ 256 ~
