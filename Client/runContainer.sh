#!/usr/bin/bash

# stop the current  container
STOP =`docker ps | grep httpd-client | awk '{ print $1 }'`
if [ $STOP ]
then
        docker stop httpd-client

fi

# remove the container
RMC=`docker ps -a | grep httpd-client | awk '{ print $1 }'`
if [ $RMC ]
then
        docker rm -f httpd-client
fi
docker build -t lujainabusada/apacheclient  /home/lujainabusada/ApacheServerClient/Client
docker run -d -it  --name httpd-client lujainabusada/apacheclient
