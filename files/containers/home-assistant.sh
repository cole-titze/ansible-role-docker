#!/bin/bash
docker stop -t 600 home-assistant
docker rm home-assistant
docker pull ghcr.io/home-assistant/home-assistant:stable
docker run -d \
  --name home-assistant \
  --restart=always \
  --network host \
  --device /dev/ttyUSB0:/dev/ttyUSB0 \
  -v /var/homeassistant:/config \
  ghcr.io/home-assistant/home-assistant:stable

