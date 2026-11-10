# Minecraft Consumable Item Datapack

BOOL Pouches 10mg is a Minecraft Java Edition datapack that adds a consumable iron nugget with a custom name, lore, and food components. It grants Speed I and Haste I for 45 seconds when consumed, plays a sound, tracks remaining portions, and displays the count in the actionbar.

## Install

1. Create a folder named `bool_pouches` inside your world’s `datapacks` folder.
2. Copy the `pack.mcmeta` file and the `data` folder into it, following the layout below.
3. Run `/reload` in the world. The load function creates the scoreboard objective and initializes online players to 20 portions.

Folder layout:

```text
bool_pouches/
├── pack.mcmeta
└── data/
    ├── bool_pouches/
    │   ├── advancement/
    │   │   └── consume_pouch.json
    │   └── function/
    │       ├── consume.mcfunction
    │       ├── give_pouch.mcfunction
    │       └── setup.mcfunction
    └── minecraft/
        └── tags/
            └── function/
                └── load.json
```

Scoreboard setup commands:

```text
/scoreboard objectives add remaining_pouches dummy
/scoreboard players set @a remaining_pouches 20
```

## Use

1. Run `/function bool_pouches:give_pouch` to receive a pouch and set your remaining portions to 20.
2. Consume the iron nugget. Each consumption revokes the advancement so it can trigger again, applies the effects, plays the sound, subtracts one from your score, and displays the remaining count.
3. To give yourself a pouch directly, run:

```text
/give @s minecraft:iron_nugget[minecraft:food={can_always_eat:true,eat_seconds:0.8f,nutrition:0,saturation:0.0f},minecraft:max_stack_size=1,minecraft:max_damage=20,minecraft:damage=0,minecraft:custom_data={pouch_can:1b},minecraft:custom_name={"text":"BOOL Pouches (10mg)","color":"green","bold":true},minecraft:lore=[{"text":"Mint 10mg Extra Strong"},{"text":"Contains 20 portions"}]] 1
```

---

More Minecraft plugin projects by EnderDevelopment: https://github.com/EnderDevelopment

Project page: https://dash.enderdevelopment.com/community/c1c13296-10fa-435f-8493-12e885990bbe?utm_source=github&utm_medium=readme&utm_campaign=auto_publish&utm_content=c1c13296-10fa-435f-8493-12e885990bbe
