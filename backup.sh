#!/bin/bash

# ensure to change the password

function rcon {
  /opt/minecraft/tools/mcrcon/mcrcon -H 127.0.0.1 -P 25575 -p strong-password "$1"
}

rcon "save-off"
rcon "save-all"
tar -cvpzf /opt/minecraft/backups/server-$(date +%F-%H-%M).tar.gz /opt/minecraft/server
rcon "save-on"

## Delete older backups
find /opt/minecraft/backups/ -type f -mtime +7 -name '*.gz' -delete
