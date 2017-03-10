#!/bin/bash
docker-compose run --rm sentry upgrade
docker-compose up -d sentry
docker-compose up -d sentry-cron sentry-worker
