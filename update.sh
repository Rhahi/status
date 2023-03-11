#!/bin/sh
#run this at the root of the hugo project

date=$(date --rfc-3339=s)
temp=$(sensors)
sys=$(./sysinfo.sh)

jq -n \
    --arg d "$date" \
    --arg t "$temp" \
    --arg s "$sys" \
    '{date: $d, temp: $t, system: $s}' \
    > ./data/data.json
