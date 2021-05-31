FROM alpine:3
ADD https://github.com/just-containers/s6-overlay/releases/download/v2.2.0.3/s6-overlay-amd64-installer /tmp/
RUN chmod +x /tmp/s6-overlay-amd64-installer && /tmp/s6-overlay-amd64-installer / && rm /tmp/s6-overlay-amd64-installer

RUN \
 apk add --no-cache \
	bash \
	curl \
	tzdata \
	xz

ENTRYPOINT [ "/init" ]