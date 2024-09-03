#!/bin/bash

# docker-compose up -d

# docker container ls

# set the admin password
docker-compose run pihole pihole -a -p

echo "instance is up and running @ http://localhost:8080/admin/login.php"
