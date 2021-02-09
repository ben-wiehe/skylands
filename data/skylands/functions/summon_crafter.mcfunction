##
 # summon.mcfunction
 # 
 #
 # Created by .
##

playsound block.stone.place block @p
execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Pose:{Body:[0f,-1f,0f],LeftArm:[0f,-1f,0f],RightArm:[0f,-1f,0f],LeftLeg:[0f,-1f,0f],RightLeg:[0f,-1f,0f],Head:[0f,-1f,0f]},NoGravity:1b,Invulnerable:0b,Invisible:1b,Tags:["crafter"],ArmorItems:[{},{},{},{id:"minecraft:bookshelf",Count:1b}]}
setblock ~ ~ ~ minecraft:dropper{CustomName:'{"text":"Warped Crafter"}'}
tp @s 0 0 0
