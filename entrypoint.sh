#!/bin/bash

# Remove the server.pid file if it exists
rm -f /app/tmp/pids/server.pid

source .env

# Start the Rails server
exec "$@"
