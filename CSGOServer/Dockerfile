FROM harkin1987/steamcmd

LABEL creator="harkin1987@gmail.com"

ENV APPID 896660
ENV APPNAME valheim
ENV GAMEDIR "${STEAMCMDDIR}/${APPNAME}-dedicated"
ENV USERBIN "/usr/local/bin"

RUN set -x \
    && apt-get install wget -y \
    && mkdir -p "${GAMEDIR}" \
    && wget https://raw.githubusercontent.com/harkin1987/DockerProjects/CSGOServer/CSGOServer/entrypoint.sh -O "${GAMEDIR}/entrypoint.sh" \
    && chmod +x "${GAMEDIR}/entrypoint.sh" \
    && mv "${GAMEDIR}/entrypoint.sh" "${USERBIN}/entrypoint.sh" \
    && chown -R steam:steam /home/steam
     
USER ${USER}
WORKDIR ${GAMEDIR}
ENTRYPOINT ["entrypoint.sh"]