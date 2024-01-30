# This script is used to set the parameters and run a MinIO server
# CONTAINER_NAME is the name of the MinIO server container
# API_PORT is the API port of the MinIO server
# CONSOLE_PORT is the console port of the MinIO server
# DATA_PATH is the data storage path of the MinIO server
# MINIO_USER is the username of the MinIO server
# MINIO_PASSWORD is the password of the MinIO server
# MINIO_VERSION is the version of the MinIO server image
CONTAINER_NAME="minio"
API_PORT="9000"
CONSOLE_PORT="9090"
DATA_PATH="/minio/data"
MINIO_USER="minio"
MINIO_PASSWORD="Minio123456"
MINIO_VERSION="RELEASE.2023-04-20T17-56-55Z"

docker run -d --name "$CONTAINER_NAME" \
   -p "$API_PORT:9000" \
   -p "$CONSOLE_PORT:9090" \
   -v "$DATA_PATH:/data" \
   -e "MINIO_ROOT_USER=$MINIO_USER" \
   -e "MINIO_ROOT_PASSWORD=$MINIO_PASSWORD" \
   minio/minio:$MINIO_VERSION server /data --console-address ":$CONSOLE_PORT"