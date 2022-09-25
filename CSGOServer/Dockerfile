FROM harkin1987/steamcmd

LABEL creator="harkin1987@gmail.com"

ENV APPID 740
ENV APPNAME csgo
ENV GAMEDIR "${STEAMCMDDIR}/${APPNAME}-dedicated"
ENV USERBIN "/usr/local/bin"
RUN set -x \
    && apt-get install wget htop -y \
    && mkdir -p "${GAMEDIR}" 

COPY ./entrypoint ${USERBIN}
RUN chmod +x "${USERBIN}/entrypoint.sh" \
    && chown -R steam:steam /home/steam

WORKDIR ${GAMEDIR}
ENTRYPOINT ["entrypoint.sh"]