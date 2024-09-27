#!/bin/bash

# This is the name of the Docker container that will be created
CONTAINER_NAME="mongodb"

# This is the port that the MongoDB server will listen on
PORT_MAPPING=27017

# This is the username for the root user of the MongoDB server
USERNAME="admin"

# This is the password for the root user of the MongoDB server
PASSWORD="Mongo654321"

# This is the path where MongoDB data will be stored
DATA_PATH="/data/mongodb/db"

# Restart policy, defines how Docker should handle the container when it exits
# "no" - This is the default setting. The container will not be automatically restarted when it exits.
# "on-failure[:max-retries]" - Docker will only try to restart the container if it exits with a non-zero status. If an optional max-retries is provided, Docker will try to restart the container until it reaches the maximum number of retries.
# "always" - Docker will always try to restart the container when it exits, regardless of the exit status.
# "unless-stopped" - Docker will always try to restart the container when it exits, regardless of the exit status, unless the user explicitly stops the container, or Docker itself is stopped or restarted.
RESTART="always"

# Command
docker run -d --name "$CONTAINER_NAME" \
  -p "$PORT_MAPPING:27017" \
  -e "MONGODB_INITDB_ROOT_USERNAME=$USERNAME" \
  -e "MONGODB_INITDB_ROOT_PASSWORD=$PASSWORD" \
  -v "$DATA_PATH:/data/db" \
  --restart="$RESTART" \
  mongodb/mongodb-community-server:6.0-ubi8

# Simple command like following:
# docker run --name mongodb -d -p 27017:27017 -e MONGODB_INITDB_ROOT_USERNAME=admin -e MONGODB_INITDB_ROOT_PASSWORD=Mongo654321 -v /data/mongodb/db:/data/db --restart=always mongodb/mongodb-community-server:6.0-ubi8