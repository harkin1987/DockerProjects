FROM harkin1987/steamcmd

LABEL creator="harkin1987@gmail.com"

ENV APPID 740
ENV APPNAME csgo
ENV GAMEDIR "${STEAMCMDDIR}/${APPNAME}-dedicated"
ENV USERBIN "/usr/local/bin"

RUN set -x \
    && apt-get install wget -y \
    && mkdir -p "${GAMEDIR}" \
    && wget https://raw.githubusercontent.com/harkin1987/DockerProjects/CSGOServer/CSGOServer/entrypoint.sh -O "${USERBIN}/entrypoint.sh" \
    && chmod +x "${USERBIN}/entrypoint.sh" \
    && chown -R steam:steam /home/steam
     
USER ${USER}
WORKDIR ${GAMEDIR}
ENTRYPOINT ["entrypoint.sh"]