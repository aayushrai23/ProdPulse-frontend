#!/bin/sh
set -e

SECRET=$(aws secretsmanager get-secret-value \
  --secret-id task-manager/prod/mysql \
  --query SecretString \
  --output text)

export DB_PASSWORD=$(echo "$SECRET" | jq -r .MYSQL_PASSWORD)

exec "$@"
