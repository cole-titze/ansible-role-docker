# ansible-role-docker

Ansible role that installs Docker and deploys containers on the docker host (dockerpi).

## Usage

This role is called from `ansible-setup`:

```bash
ansible-playbook -i inventories/inventory.ini raspberry-pi-playbooks/docker-machine/docker-setup.yml
```

Secrets are loaded from `~/source/ansible-files/vars/cluster_vars.yml`.

## Active services

- **Portainer** — Docker management UI (ports 8000, 9443)
- **NHL Odds** — Full-stack NHL prediction app (port 8081)
- **Unbound** — Local DNS resolver

## Inactive services (commented out in tasks/main.yml)

Uncomment in `tasks/main.yml` to re-enable:

- Traefik (reverse proxy)
- Home Assistant
- Code Space
- Minecraft Bedrock
- Pi-hole (now runs natively, not in Docker)
- ESPHome, Magic Mirror, LLM Backend, NFS
- PiVPN / Wireguard
