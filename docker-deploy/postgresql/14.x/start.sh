# Container name, used to identify and manage the Docker container
NAME=postgres_14.2

# Main port, the PostgreSQL service will listen for connections on this port
MAIN_PORT=5432

# Password for the root user, used for authentication with the PostgreSQL service
PASSWORD=Pg@123456

# Data path, the PostgreSQL service will store its data files under this path
DATA_PATH=/data/postgres-14.2/data

# Restart policy, defines how Docker should handle the container when it exits
# "no" - This is the default setting. The container will not be automatically restarted when it exits.
# "on-failure[:max-retries]" - Docker will only try to restart the container if it exits with a non-zero status. If an optional max-retries is provided, Docker will try to restart the container until it reaches the maximum number of retries.
# "always" - Docker will always try to restart the container when it exits, regardless of the exit status.
# "unless-stopped" - Docker will always try to restart the container when it exits, regardless of the exit status, unless the user explicitly stops the container, or Docker itself is stopped or restarted.
RESTART=always

docker run -d --name $NAME \
  -p $MAIN_PORT:5432 \
  -e POSTGRES_PASSWORD=$PASSWORD \
  -v $DATA_PATH/:/var/lib/postgresql/data \
  --restart $RESTART \
  postgres:14.10