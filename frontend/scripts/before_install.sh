#!/bin/bash
set -e

echo "Preparing frontend deployment directory"

mkdir -p /var/www/html
rm -rf /var/www/html/*

