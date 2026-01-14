#!/bin/bash
set -e

echo "Installing and enabling Nginx"

if ! command -v nginx >/dev/null 2>&1; then
  apt-get update -y
  apt-get install -y nginx
fi

systemctl enable nginx
systemctl start nginx

