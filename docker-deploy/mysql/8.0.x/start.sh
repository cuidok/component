# This is the name of the Docker container that will be created
CONTAINER_NAME=mysql_8

# This is the port that the MySQL server will listen on
SERVER_PORT=3306

# This is the port that the MySQL X Server will listen on
MYSQL_X_SERVER_PORT=33060

# This is the password for the root user of the MySQL server
PASSWORD=Mysql@123456

# This is the path where MySQL data will be stored
DATA_PATH=/var/lib/mysql

# Restart policy, defines how Docker should handle the container when it exits
# "no" - This is the default setting. The container will not be automatically restarted when it exits.
# "on-failure[:max-retries]" - Docker will only try to restart the container if it exits with a non-zero status. If an optional max-retries is provided, Docker will try to restart the container until it reaches the maximum number of retries.
# "always" - Docker will always try to restart the container when it exits, regardless of the exit status.
# "unless-stopped" - Docker will always try to restart the container when it exits, regardless of the exit status, unless the user explicitly stops the container, or Docker itself is stopped or restarted.
RESTART=always

# Command
docker run -d --name "$CONTAINER_NAME" \
  -p "$SERVER_PORT:3306" \
  -p "$MYSQL_X_SERVER_PORT:33060" \
  -e "MYSQL_ROOT_PASSWORD=$PASSWORD" \
  -v "$DATA_PATH:/var/lib/mysql" \
  --restart="$RESTART" \
  mysql:8.0.33