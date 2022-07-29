#!/usr/bin/bash

# stop the current  container
STOP =`docker ps | grep httpd-container | awk '{ print $1 }'`
if [ $STOP ]
then
	docker stop httpd-container
	
fi

# remove the container
RMC=`docker ps -a | grep httpd-container | awk '{ print $1 }'`
if [ $RMC ]
then
	docker rm -f httpd-container
	echo "removed previous docker_server container"
fi

docker build -t lujainabusada/apacheserver  /home/lujainabusada/ApacheServerClient/Server
docker run -d -it -p 8899:80 --name httpd-container lujainabusada/apacheserver
docker cp httpd-container:/localrepo /  

