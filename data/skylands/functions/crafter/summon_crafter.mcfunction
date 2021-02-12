##
 # summon.mcfunction
 # 
 #
 # Created by .
##

stopsound @p neutral entity.bat.ambient 
playsound block.stone.place block @p
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Pose:{Body:[0f,-1f,0f],LeftArm:[0f,-1f,0f],RightArm:[0f,-1f,0f],LeftLeg:[0f,-1f,0f],RightLeg:[0f,-1f,0f],Head:[0f,-1f,0f]},NoGravity:1b,Invulnerable:0b,Invisible:1b,Tags:["crafter"],ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b}]}
setblock ~ ~ ~ minecraft:dropper{CustomName:'{"text":"Warped Crafter"}'}
tp @s 0 0 0
