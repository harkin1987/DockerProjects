FROM harkin1987/steamcmd

LABEL creator="harkin1987@gmail.com"

ENV APPID 740
ENV APPNAME csgo
ENV GAMEDIR "${STEAMCMDDIR}/${APPNAME}-dedicated"

RUN set -x \
    && apt-get install wget -y \
    && cd ~ \
    && wget 