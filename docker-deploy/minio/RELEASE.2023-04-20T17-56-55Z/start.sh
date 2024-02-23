# Container name, used to identify and manage the Docker container
CONTAINER_NAME=minio

# API port, the MinIO service will listen for API connections on this port
API_PORT=9000

# Console port, the MinIO service will listen for console connections on this port
CONSOLE_PORT=9090

# Data path, the MinIO service will store its data files under this path
DATA_PATH=/minio/data

# Username for the root user, used for authentication with the MinIO service
MINIO_USER=minio

# Password for the root user, used for authentication with the MinIO service
MINIO_PASSWORD=Minio@123456

# Version of the MinIO service Docker image
MINIO_VERSION=RELEASE.2023-04-20T17-56-55Z

# Restart policy, defines how Docker should handle the container when it exits
# "no" - This is the default setting. The container will not be automatically restarted when it exits.
# "on-failure[:max-retries]" - Docker will only try to restart the container if it exits with a non-zero status. If an optional max-retries is provided, Docker will try to restart the container until it reaches the maximum number of retries.
# "always" - Docker will always try to restart the container when it exits, regardless of the exit status.
# "unless-stopped" - Docker will always try to restart the container when it exits, regardless of the exit status, unless the user explicitly stops the container, or Docker itself is stopped or restarted.
RESTART=always

docker run -d --name "$CONTAINER_NAME" \
   -p "$API_PORT:9000" \
   -p "$CONSOLE_PORT:9090" \
   -v "$DATA_PATH:/data" \
   -e "MINIO_ROOT_USER=$MINIO_USER" \
   -e "MINIO_ROOT_PASSWORD=$MINIO_PASSWORD" \
   --restart="$RESTART" \
   minio/minio:$MINIO_VERSION server /data --console-address ":$CONSOLE_PORT"