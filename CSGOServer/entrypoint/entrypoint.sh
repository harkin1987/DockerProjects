#!/bin/bash

#Download/Update game files
bash "${STEAMCMDDIR}/steamcmd.sh" +force_install_dir "${GAMEDIR}" +login anonymous +app_update "${APPID}" +quit
#Launch Server
./srcds_run