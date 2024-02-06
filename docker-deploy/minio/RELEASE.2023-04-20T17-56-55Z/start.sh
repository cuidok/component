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

docker run -d --name "$CONTAINER_NAME" \
   -p "$API_PORT:9000" \
   -p "$CONSOLE_PORT:9090" \
   -v "$DATA_PATH:/data" \
   -e "MINIO_ROOT_USER=$MINIO_USER" \
   -e "MINIO_ROOT_PASSWORD=$MINIO_PASSWORD" \
   minio/minio:$MINIO_VERSION server /data --console-address ":$CONSOLE_PORT"