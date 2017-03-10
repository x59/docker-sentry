# A secret key used for cryptographic functions within Sentry.
# docker run --rm sentry config generate-secret-key
SENTRY_SECRET_KEY=''

# Database credentials for your Postgres server.
# These values aren't needed if a linked postgres container exists.
SENTRY_POSTGRES_HOST=postgres
# SENTRY_POSTGRES_PORT=
# SENTRY_DB_NAME=sentry
SENTRY_DB_USER=
SENTRY_DB_PASSWORD=

# Connection information for your Redis server.
# These values aren't needed if a linked redis container exists.
SENTRY_REDIS_HOST=redis
# SENTRY_REDIS_PORT=
# SENTRY_REDIS_DB=

# Connection information for a Memcache server.
# These values aren't needed if a linked memcached container exists.
SENTRY_MEMCACHED_HOST=memcached
# SENTRY_MEMCACHED_PORT=

# Directory where uploaded files will be stored.
# This defaults to /var/lib/sentry/files and is a VOLUME for persistent data.
# SENTRY_FILESTORE_DIR=

# The email address used for From: in outbound emails. Default: root@localhost
SENTRY_SERVER_EMAIL=
# Connection information for an outbound smtp server.
# These values aren't needed if a linked smtp container exists.
SENTRY_EMAIL_HOST=
SENTRY_EMAIL_PORT=587
SENTRY_EMAIL_USER=
SENTRY_EMAIL_PASSWORD=
SENTRY_EMAIL_USE_TLS=1

# If you're using Mailgun for inbound mail, set your API key and configure a route to forward to /api/hooks/mailgun/inbound/.
# SENTRY_MAILGUN_API_KEY=
SENTRY_SINGLE_ORGANIZATION=False
SENTRY_USE_SSL=1

BITBUCKET_CONSUMER_KEY=
BITBUCKET_CONSUMER_SECRET=

ASANA_CLIENT_ID=
ASANA_CLIENT_SECRET=
