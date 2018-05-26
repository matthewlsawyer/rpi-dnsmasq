# Overview

This project is designed to run dnsmasq on a raspberry pi, specifically on something like Portainer.

## What is does

The `Dockerfile` installs `dnsmasq` and copies over the `/etc/dnsmasq.conf`. It will also set up a volume
where the configuration file will be stored that will allow the user to make modifications after creating
the container.

## Influences

This project is based on the following repository: 

* https://github.com/jasjeev4/rpi-docker-dnsmasq