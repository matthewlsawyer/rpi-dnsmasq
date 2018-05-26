FROM resin/rpi-raspbian

RUN apt-get -qy update \
    && apt-get -qy install dnsmasq \
    && mkdir -p /etc/dnsmasq/config

ADD ./etc/ /etc/

# Run dnsmasq with custom conf locations
CMD dnsmasq -k --conf-dir=/etc/dnsmasq/config,*.conf

VOLUME ["/etc/dnsmasq"]

EXPOSE 53/udp