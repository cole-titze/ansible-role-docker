#!/bin/bash
mkdir -p ~/Backups
docker exec nhl-odds-database-1 pg_dump -U postgres -Fc nhl > ~/Backups/nhl-$(date +%Y%m%d).dump 2>> /var/log/nhl-odds-backup.log
find ~/Backups -name "nhl-*.dump" -mtime +7 -delete
