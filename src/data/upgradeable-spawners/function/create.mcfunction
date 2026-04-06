summon marker
summon text_display ~ ~ ~ {view_range:0.02f,billboard:"vertical",default_background:1b,shadow:0b,see_through:0b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[0.99999994f,1f,0.99999994f]},text:["ꜱᴘᴀᴡɴ ꜱᴘᴇᴇᴅ ",{"color":"yellow","text":"ɪ\n"},"ꜱᴘᴀᴡɴ ʀᴀɴɢᴇ ",{"color":"yellow","text":"ɪ\n"},"ᴀᴄᴛɪᴠᴀᴛɪᴏɴ ʀᴀɴɢᴇ ",{"color":"yellow","text":"ɪ"}]}

execute as @n[type=marker,distance=..0.00001] run function upgradeable-spawners:upgrade/speed
execute as @n[type=marker,distance=..0.00001] run function upgradeable-spawners:upgrade/range
execute as @n[type=marker,distance=..0.00001] run function upgradeable-spawners:upgrade/activation