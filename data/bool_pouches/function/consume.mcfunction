advancement revoke @s only bool_pouches:consume_pouch
effect give @s minecraft:speed 45 0 true
effect give @s minecraft:haste 45 0 true
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 1.2
scoreboard players remove @s remaining_pouches 1
execute store result score #left remaining_pouches run scoreboard players get @s remaining_pouches
title @s actionbar {"text":"BOOL 10mg: ","color":"green","extra":[{"score":{"name":"#left","objective":"remaining_pouches"}},{"text":"/20 pouches left"}]}
