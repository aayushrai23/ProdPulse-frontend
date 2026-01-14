#!/bin/bash
set -e

echo "Installing Nginx if not present"

if ! command -v nginx &> /dev/null; then
  apt-get update -y
  apt-get install -y nginx
fi

systemctl start nginx
systemctl enable nginx
