#!/bin/bash
docker stop portainer
docker rm portainer
docker pull portainer/portainer-ce:latest
docker run -d \
    --name portainer \
    -p 9443:9443 \
    -p 9000:9000 \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /opt/portainer:/data \
    portainer/portainer-ce:latest