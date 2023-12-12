docker run \
   -p 9000:9000 \
   -p 9090:9090 \
   -v /minio/data:/data \
   -e "MINIO_ROOT_USER=minio" \
   -e "MINIO_ROOT_PASSWORD=Minio123456" \
   minio/minio:RELEASE.2023-04-20T17-56-55Z server /data --console-address ":9090"