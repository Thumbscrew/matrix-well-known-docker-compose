#!/usr/bin/env sh
set -eu

envsubst '${ROOT_DOMAIN_NAME} ${MATRIX_URL}' < /tmp/nginx/default.conf > /etc/nginx/conf.d/default.conf

exec "$@"