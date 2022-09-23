FROM ubuntu:jammy

LABEL author="harkin1987@gmail.com"

ENV USER steam
ENV HOMEDIR "/home/${USER}"
ENV STEAMCMDDIR "${HOMEDIR}/steamcmd"
ENV STEAMCMDSCRIPT ".${STEAMCMDDIR}/steamcmd.sh"
ENV GAMEDIR "game"

RUN apt-get update && apt-get install lib32gcc-s1 curl -y
#Create steam user and download steamcmd
RUN useradd -m ${USER} && su steam && mkdir ${STEAMCMDDIR} && cd ${STEAMCMDDIR} \
    && curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
RUN mkdir /home/steam/steamcmd/${GAMEDIR}