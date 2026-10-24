# Wird ausgefuehrt, wenn ein Herz-Item benutzt wurde (als Spieler).
# 2 Lebenspunkte = 1 Herz. Der Basiswert wird beim Tod automatisch auf 20 zurueckgesetzt.
execute store result score #hp herzmod.tmp run attribute @s minecraft:max_health base get
scoreboard players add #hp herzmod.tmp 2
execute store result storage herzmod:tmp value int 1 run scoreboard players get #hp herzmod.tmp
function herzmod:apply with storage herzmod:tmp

effect give @s minecraft:instant_health 1 0 true
title @s actionbar {"text":"+1 Herz","color":"red","bold":true}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5

# Advancement zuruecksetzen, damit es beim naechsten Herz wieder ausloest
advancement revoke @s only herzmod:eat_heart
