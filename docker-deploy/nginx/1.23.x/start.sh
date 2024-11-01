# This is the name of the Docker container that will be created
CONTAINER_NAME=nginx

# This is the port that the Nginx server will listen on
SERVER_PORT=80

# This is the path where Nginx configuration files will be stored
DATA_PATH=conf.d

# This determines when the Docker container should be restarted
# no - No restart
# on-failure[:max-retries] - Restart when exit code is not 0, try at most max-retries times
# unless-stopped - Always restart unless container is explicitly stopped or Docker itself is stopped or restarted.
# always - Always restart
RESTART=always

# Command to run the Docker container
docker run -d --name "$CONTAINER_NAME" \
  -p "$SERVER_PORT:80" \
  -v "$DATA_PATH:/etc/nginx/conf.d" \
  --restart="$RESTART" \
  nginx:1.23.3

# Single-line command like following:
# docker run -d --name nginx -p 80:80 -v /path/to/nginx/conf.d:/etc/nginx/conf.d --restart=always nginx:1.23.3