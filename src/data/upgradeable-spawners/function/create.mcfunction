# Create entities
summon marker ~ ~ ~ {Tags:["upgradeable-spawner"]}
summon text_display ~ ~ ~ {view_range:0.02f,billboard:"vertical",default_background:1b,shadow:0b,see_through:0b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[0.99999994f,1f,0.99999994f]},text:["ꜱᴘᴀᴡɴ ꜱᴘᴇᴇᴅ ",{"color":"yellow","text":"ɪ\n"},"ꜱᴘᴀᴡɴ ʀᴀɴɢᴇ ",{"color":"yellow","text":"ɪ\n"},"ᴀᴄᴛɪᴠᴀᴛɪᴏɴ ʀᴀɴɢᴇ ",{"color":"yellow","text":"ɪ"}]}
summon minecraft:item_display ~ ~ ~ {item: {components: {"minecraft:enchantment_glint_override": 1b}, count: 1, id: "minecraft:tinted_glass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.98999953f, 0.98999953f, 0.98999953f], translation: [0.0f, 0.0f, 0.0f]}}

# Init values
execute as @n[type=marker,distance=..0.00001] run function upgradeable-spawners:upgrade/speed
execute as @n[type=marker,distance=..0.00001] run function upgradeable-spawners:upgrade/range
execute as @n[type=marker,distance=..0.00001] run function upgradeable-spawners:upgrade/activation

# Upgrade
$execute as @n[type=marker,distance=..0.00001] run function upgradeable-spawners:upgrade/$(type)