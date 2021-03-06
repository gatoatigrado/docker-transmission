FROM lsiobase/alpine.arm64:3.8

# set version label
ARG BUILD_DATE
ARG VERSION

RUN \
 echo "**** install packages ****" && \
 apk add --no-cache \
	curl \
	jq \
	openssl \
	p7zip \
	rsync \
	tar \
	transmission-cli \
	transmission-daemon \
	unrar \
	unzip

# copy local files
COPY root/ /

# ports and volumes
EXPOSE 9091 51413
VOLUME /config /downloads /watch
