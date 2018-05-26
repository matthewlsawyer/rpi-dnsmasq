FROM resin/rpi-raspbian

RUN apt-get update
RUN apt-get -q -y install dnsmasq
ADD ./etc/ /etc
CMD dnsmasq -k

VOLUME /var/log/dnsmasq
VOLUME /etc/dnsmasq.conf

EXPOSE 53/udp