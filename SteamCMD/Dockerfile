FROM ubuntu:jammy

LABEL author="harkin1987@gmail.com"

ENV USER steam
ENV HOMEDIR "/home${USER}}/"
ENV STEAMCMDDIR "${HOMEDIR}/steamcmd"

RUN apt-get update && apg-get install lib32gcc-s1 -y
RUN adduser 