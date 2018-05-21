#!/usr/bin/env bash

docker run -d \
--name="home-assistant" \
-volume <path_to_configfiles>:/config \
-volume /etc/localtime:/etc/localtime:ro \
-volume /etc/letsencrypt:/etc/letsencrypt:ro \
-volume /usr/bin/ssl-cert-check:/usr/bin/ssl-cert-check:ro \
--device /dev/ttyACM0:/dev/ttyACM0 \
--network rpi-net \
--rm \
homeassistant/raspberrypi3-homeassistant
