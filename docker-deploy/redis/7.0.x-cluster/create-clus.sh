# REDIS_CLUSTER_ENTRYPOINT is the name of the container where you want to execute the redis-cli command
REDIS_CLUSTER_ENTRYPOINT=redis-c-7000

# REDIS_1 to REDIS_6 are the addresses of your Redis cluster nodes
REDIS_1=172.17.0.1:7000
REDIS_2=172.17.0.1:7001
REDIS_3=172.17.0.1:7002
REDIS_4=172.17.0.1:7003
REDIS_5=172.17.0.1:7004
REDIS_6=172.17.0.1:7005

docker exec -it $REDIS_CLUSTER_ENTRYPOINT \
 redis-cli --cluster create $REDIS_1 $REDIS_2 $REDIS_3 $REDIS_4 $REDIS_5 $REDIS_6 --cluster-replicas 1