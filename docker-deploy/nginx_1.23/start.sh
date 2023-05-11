# Container name
NAME=nginx
# Server port
SERVER_PORT=80

docker run -d --name $NAME \
  -p $SERVER_PORT:80 \
  -v ./conf.d:/etc/nginx/conf.d \
  nginx:1.23.3
