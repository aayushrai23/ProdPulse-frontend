#!/bin/sh
set -e

SECRET=$(aws secretsmanager get-secret-value \
  --secret-id task-manager/prod/mysql \
  --query SecretString \
  --output text)

export MYSQL_ROOT_PASSWORD=$(echo "$SECRET" | jq -r .MYSQL_ROOT_PASSWORD)
export MYSQL_PASSWORD=$(echo "$SECRET" | jq -r .MYSQL_PASSWORD)

exec docker-entrypoint.sh mysqld
