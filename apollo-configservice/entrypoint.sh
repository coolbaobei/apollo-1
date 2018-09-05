#!/bin/sh
echo $DATASOURCE_URL
echo $USERNAME
echo $PASSWORD
echo $JAVA_OPTS
echo $EURAKE_IP
echo $EURAKE_NONSECUREPORT
java $JAVA_OPTS -jar -Dspring.datasource.url=$DATASOURCE_URL -Dspring.datasource.username=$USERNAME -Dspring.datasource.password=$PASSWORD -Deureka.instance.ip-address=$EURAKE_IP -Deureka.instance.nonSecurePort=$EURAKE_NONSECUREPORT  apollo-configservice-0.11.0.jar