#!/bin/bash

#Download/Update game files
bash "${STEAMCMDDIR}/steamcmd.sh" +force_install_dir "${GAMEDIR}" +login anonymous +app_update "${APPID}" +quit
#Launch Server
./srcds_run
#srcds -game csgo -console -usercon +game_type 0 +game_mode 0 +mapgroup mg_active +map de_dust2