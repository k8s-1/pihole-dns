#!/bin/bash

# docker-compose up -d

# docker container ls

# set the admin password
# docker-compose run pihole pihole -a -p
docker-compose up -d

DNS_SERVER_IP=$(docker inspect pihole | jq -r '.[0].NetworkSettings.Networks.pihole_default.IPAddress')
dig @"$DNS_SERVER_IP"

echo "pihole url:"
echo "http://localhost:8080/admin/login.php"
