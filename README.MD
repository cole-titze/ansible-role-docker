# [Setup VPN](https://www.duckdns.org/)

- Login to get easy install directions (github)
- Follow the steps under "Install"
- Port forward pi's ip (10.0.0.19:51820)
- Download and run pivpn setup
```
curl -L https://install.pivpn.io | bash
```
- Add to crontab
```
# Constant updates
# VPN setup will add script here, an example:
*/5 * * * * ~/duckdns/duck.sh >/dev/null 2>&1
```

## During Install
- Use pi ip (10.0.0.61) for DNS ip
- Use the duckdns domain instead of an ip (<domain>.duckdns.org)
- Download wireguard app and scan qr from

```
pivpn add
pivpn -qr
```

- [Pivpn Docs](https://docs.pivpn.io/wireguard)
# Home Assistant

## [Backup HomeAssistant](https://www.home-assistant.io/integrations/backup/)
- Note: Once you have backups running you no longer need to do these steps you just run the ansible playbook and it will handle restoring
- To get backups to another computer (run from computer with cloud backups):

```
scp pi@10.0.0.19:"~/backups/homeassistant/*" ~/Desktop/HA_Backups
```

- If you already have backups running you can skip to the Restore section
- Add the automation (Settings -> Automations & Scenes -> Create Automation -> <Three dots> -> Edit in yaml
- Add the automation:

```
trigger:
  platform: time
  at: "03:00:00"
action:
  alias: "Create backup now"
  service: backup.create
```

- This saves files to the homeAssistant config folder (/var/homeassistant/backups/)
