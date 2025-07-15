#!/bin/bash
docker stop portainer
docker rm portainer
docker pull portainer/portainer-ce:latest
docker run -d \
    --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    --label traefik.enable=true \
    --label traefik.http.routers.portainer.rule=Host\(`portainer.deploypi`\) \
    --label traefik.http.routers.portainer.entrypoints=websecure \
    --label traefik.http.routers.portainer.tls=true \
    --label traefik.http.services.portainer.loadbalancer.server.port=9000 \
    portainer/portainer-ce:latest