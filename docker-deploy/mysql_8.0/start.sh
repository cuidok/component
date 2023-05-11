# Param
SERVER_PORT=3306
MYSQL_X_SERVER_PORT=33060
# Password of root
PASSWORD=Mysql@123456
# Data path
DATA_PATH=/var/lib/mysql
# no - No restart
# on-failure[:max-retries] - Restart when exit code is not 0, try at most max-retries times
# unless-stopped - Always restart unless container is explicitly stopped or Docker itself is stopped or restarted.
# always - Always restart
RESTART=always
# Container name
NAME=mysql_8

# Command
docker run -d --name $NAME \
  -p $SERVER_PORT:3306 \
  -p $MYSQL_X_SERVER_PORT:33060 \
  -e MYSQL_ROOT_PASSWORD=$PASSWORD \
  -v $DATA_PATH:/var/lib/mysql \
  --restart=$RESTART \
  mysql:8.0.33