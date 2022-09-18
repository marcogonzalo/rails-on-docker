#!/bin/bash
set -e

echo "ENVIRONMENT: $RAILS_ENV"

# Remove a potentially pre-existing server.pid from previous session.
if [ -f $APP_PATH/tmp/pids/server.pid ]; then
    rm -f $APP_PATH/tmp/pids/server.pid
fi

echo "bundle install..."
bundle check || bundle install --jobs $BUNDLE_JOBS

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
