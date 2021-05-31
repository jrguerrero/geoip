FROM ubuntu
RUN apt update && apt install -y geoip-bin
COPY docker-entrypoint.sh /
COPY geoip.sh /tmp/geoip.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
