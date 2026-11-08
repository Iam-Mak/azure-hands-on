#!/bin/bash
set -e

apt -qq update

# Install troubleshooting tools
apt -qq install curl traceroute iputils-ping jq -y

# Install NGINX
apt -qq install nginx -y

IP=$(hostname -i)

echo "Hello from virtual machine: $HOSTNAME, with IP address: $IP" > /var/www/html/index.html

systemctl enable nginx
systemctl start nginx
