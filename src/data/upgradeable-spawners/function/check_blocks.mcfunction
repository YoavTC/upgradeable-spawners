execute unless block ~ ~ ~ spawner run return fail

execute unless block ~1 ~ ~ lapis_block run return fail
execute unless block ~ ~1 ~ lapis_block run return fail
execute unless block ~ ~ ~1 lapis_block run return fail
execute unless block ~-1 ~ ~ lapis_block run return fail
execute unless block ~ ~-1 ~ lapis_block run return fail
execute unless block ~ ~ ~-1 lapis_block run return fail

execute align xyz positioned ~.5 ~.5 ~.5 run summon marker
execute align xyz positioned ~.5 ~.5 ~.5 run summon text_display ~ ~ ~ {view_range:0.02f,billboard:"vertical",default_background:1b,shadow:0b,see_through:0b,alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[0.99999994f,1f,0.99999994f]},text:["ꜱᴘᴀᴡɴ ꜱᴘᴇᴇᴅ ",{"color":"yellow","text":"ɪ\n"},"ꜱᴘᴀᴡɴ ʀᴀɴɢᴇ ",{"color":"yellow","text":"ɪᴠ\n"},"ᴀᴄᴛɪᴠᴀᴛɪᴏɴ ʀᴀɴɢᴇ ",{"color":"yellow","text":"ɪɪɪ"}]}

function upgradeable-spawners:clear_blocks