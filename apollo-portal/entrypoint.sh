#!/bin/sh
echo $DATASOURCE_URL
echo $USERNAME
echo $PASSWORD
echo $JAVA_OPTS
echo $DEV_META
echo $FAT_META
echo $UAT_META
echo $PRO_META
java $JAVA_OPTS -jar -Dspring.datasource.url=$DATASOURCE_URL -Dspring.datasource.username=$USERNAME -Dspring.datasource.password=$PASSWORD -Ddev_meta=$DEV_META -Dfat_meta=$FAT_META -Duat_meta=$UAT_META -Dpro_meta=$PRO_META apollo-portal-0.10.3.jar