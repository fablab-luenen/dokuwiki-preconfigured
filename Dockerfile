FROM ghcr.io/linuxserver/dokuwiki

ARG plugindir=/app/dokuwiki/lib/plugins/

RUN \
 echo "Dokuwiki Plugins folder: " && ls /app/dokuwiki/lib/plugins/ && \
 echo "**** install build packages 2 ****" && \ 
 echo "**** install build packages ****" && \
 apk add --no-cache --virtual=build-dependencies2 \
	unzip && \
 echo "**** Downloading plugins ****" && \
 curl -Ls https://github.com/Chris--S/dokuwiki-plugin-iframe/archive/master.zip --output /tmp/iframe.zip && \
 echo "**** Extracting plugins ****" && \
 unzip /tmp/*.zip -d /tmp/plugins && \
 echo "Tmp plugin dir: " && ls /tmp/plugins && \
 echo "DW plugin dir: " && ls /app/dokuwiki/lib/plugins/ && \
 echo "**** Moving plugins ****" && \
 mv /tmp/plugins/dokuwiki-plugin-iframe-master $plugindir/iframe && \
 echo "Dokuwiki Plugins folder after move: " && ls $plugindir && \
 echo "**** Downloading theme ****" && \
 curl -Ls https://github.com/FabLab-Luenen/dokuwiki-krypton/archive/master.zip --output /tmp/theme.zip && \
 echo "**** Extracting theme ****" && \
 unzip /tmp/theme.zip -d /tmp/theme && \
 echo "theme dir: " && ls /tmp/theme && \
 echo "**** Moving theme ****" && \
 mv /tmp/theme/*/ /app/dokuwiki/lib/tpl/krypton && \
 echo "Dokuwiki themes folder: " && ls /app/dokuwiki/lib/tpl/ && \
 echo "**** cleanup ****" && \
 apk del --purge \
	build-dependencies2 && \
 rm -rf \
	/root/.cache \
	/tmp/*

# ports and volumes
EXPOSE 80 443
VOLUME /config
