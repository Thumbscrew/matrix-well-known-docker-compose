#!/usr/bin/env sh
set -eu

envsubst '${ROOT_DOMAIN_NAME} ${MATRIX_DOMAIN} ${MATRIX_FED_PORT}' < /tmp/nginx/default.conf > /etc/nginx/conf.d/default.conf

exec "$@"