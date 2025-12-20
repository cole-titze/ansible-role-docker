#!/bin/bash
docker stop minecraft-bedrock
docker rm minecraft-bedrock
docker pull itzg/minecraft-bedrock-server:latest
docker run -d \
  --name minecraft-bedrock \
  --restart unless-stopped \
  -p 19132:19132/udp \
  -v /opt/minecraft-bedrock:/data \
  -e EULA=TRUE \
  -e SERVER_NAME="Bedrock Server" \
  -e GAMEMODE=survival \
  -e DIFFICULTY=easy \
  -e LEVEL_NAME=Ipad \
  -e ONLINE_MODE=true \
  -e ALLOW_CHEATS=false \
  -e MAX_PLAYERS=10 \
  -e VIEW_DISTANCE=10 \
  -e SIMULATION_DISTANCE=6 \
  --user 1000:1000 \
  itzg/minecraft-bedrock-server:latest