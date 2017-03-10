#!/usr/bin/env bash

random-string()
{
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${1:-32} | head -n 1
}

DB_PASSWORD=`random-string`

cp sentry.env.sh `date +"%Y%m%d_%H%M%S"`_sentry.env.sh

sed -e "s/POSTGRES_PASSWORD=.*/POSTGRES_PASSWORD=${DB_PASSWORD}/" \
    -i docker-compose.yml

sed -e "s/SENTRY_DB_USER=.*/SENTRY_DB_USER=${DB_PASSWORD}/" \
    -i sentry.env.sh

SENTRY_SECRET_KEY="`docker-compose run --rm sentry config generate-secret-key | tail -n 1 | tr -d '[:space:]' | tr '\&' '\\\&' | tr '\\\' '-'`"

sed -e "s/SENTRY_SECRET_KEY=.*/SENTRY_SECRET_KEY='${SENTRY_SECRET_KEY}'/" \
    -i sentry.env.sh
