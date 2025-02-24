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