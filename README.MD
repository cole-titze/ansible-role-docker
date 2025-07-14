# ansible-role-docker
+ This repo will setup docker and the containers I run at home. You can find more information under each containers directory

## Current setup
```
curl -sSL https://install.pi-hole.net | bash
curl -L https://install.pivpn.io | bash
```
+ Restore backup in settings > teleporter > add the backup file
+ DNS Name: perkaholic.duckdns.org

## Port map
+ 6052, 6123 - Esphome
+ 8123 - Home Assistant
+ 8083 - LLM Backend
+ 8000, 9443 - Portainer
+ 8090 - Code Spaces (code.deploypi)
+ 22 - ssh
+ 53, 8001, 4430 - PiHole
+ 51820 - Wireguard
