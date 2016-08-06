echo using ${DOCKER_HOST?}
XX=${DOCKER_HOST%\:*}
export DOCKER_HOST_IP=${XX#tcp\:\/\/}
echo Docker host IP is $DOCKER_HOST_IP

export SPRING_DATASOURCE_URL=jdbc:mysql://${DOCKER_HOST_IP}/eventuate
export SPRING_DATASOURCE_USERNAME=mysqluser
export SPRING_DATASOURCE_PASSWORD=mysqlpw
export SPRING_DATASOURCE_DRIVER_CLASS_NAME=com.mysql.jdbc.Driver
export EVENTUATELOCAL_AGGREGATESTORE_BOOTSTRAP_SERVERS=$DOCKER_HOST_IP:9092
