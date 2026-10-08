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
- **Home Assistant**
- **Pi-hole** — runs natively, not in Docker
- **Unbound** — Local DNS resolver

## Inactive services (commented out in tasks/main.yml)

Uncomment in `tasks/main.yml` to re-enable:

- Code Space
- Minecraft Bedrock
- ESPHome, Magic Mirror, LLM Backend, NFS
- PiVPN / Wireguard
