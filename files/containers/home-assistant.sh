#!/bin/bash
docker stop -t 600 home-assistant
docker rm home-assistant
docker pull ghcr.io/home-assistant/home-assistant:stable
docker run -d \
  --name home-assistant \
  --restart=always \
  --device /dev/ttyUSB0:/dev/ttyUSB0 \
  -v /var/homeassistant:/config \
  --network host \
  --label traefik.enable=true \
  --label traefik.http.routers.homeassistant.rule=Host\(`homeassistant.deploypi`\) \
  --label traefik.http.routers.homeassistant.entrypoints=websecure \
  --label traefik.http.routers.homeassistant.tls=true \
  --label traefik.http.services.homeassistant.loadbalancer.server.port=8123 \
  homeassistant/raspberrypi4-homeassistant