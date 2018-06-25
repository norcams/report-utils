#!/bin/bash
set -e

ip=$(ip route get 8.8.8.8 | awk 'NR==1 {print $7}')
hostname=$(hostname -f)
uptime=$(awk '{printf("%d",($1/60/60/24))}' /proc/uptime)

curl -k -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d "{ \
   \"ip\": \"$ip\", \
   \"name\": \"$hostname\", \
   \"uptime\": $uptime  \
 }" 'https://report.uh-iaas.no/api/v1/instance'

exit 0
