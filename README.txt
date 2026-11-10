BOOL Pouches 10mg datapack

Folder layout
==============
pack.mcmeta
data/
  bool_pouches/
    advancement/
      consume_pouch.json
    function/
      consume.mcfunction
      give_pouch.mcfunction
      setup.mcfunction
  minecraft/
    tags/
      function/
        load.json

Install
=======
Copy the folder containing pack.mcmeta and data into the world's datapacks folder. Run /reload.
The load function creates the remaining_pouches dummy objective and sets every online player's counter to 20.

Exact scoreboard setup commands
===============================
/scoreboard objectives add remaining_pouches dummy
/scoreboard players set @a remaining_pouches 20

Give command
============
/give @s minecraft:iron_nugget[minecraft:food={can_always_eat:true,eat_seconds:0.8f,nutrition:0,saturation:0.0f},minecraft:max_stack_size=1,minecraft:max_damage=20,minecraft:damage=0,minecraft:custom_data={pouch_can:1b},minecraft:custom_name={"text":"BOOL Pouches (10mg)","color":"green","bold":true},minecraft:lore=[{"text":"Mint 10mg Extra Strong"},{"text":"Contains 20 portions"}]] 1

Datapack function commands
==========================
/function bool_pouches:setup
/function bool_pouches:give_pouch

Each successful consumption revokes the advancement, applies Speed I and Haste I for 45 seconds with hidden particles, plays minecraft:entity.item.pickup at pitch 1.2, subtracts one from remaining_pouches, and displays the remaining count in the actionbar.
