#!/bin/bash

httpd=$(docker exec  httpd-client sh -c "rpm -qa"| grep httpd | head -1)

if [ $httpd ]
then
echo "httpd is installed on client container"
else
echo "httpd is not installed on client container"
fi

