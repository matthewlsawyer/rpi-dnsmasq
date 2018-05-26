FROM resin/rpi-raspbian

RUN apt-get -q update \
    && apt-get -qy install dnsmasq
ADD ./etc/ /etc
CMD dnsmasq -k

VOLUME /var/log/dnsmasq
VOLUME /etc/dnsmasq.conf

EXPOSE 53/udp