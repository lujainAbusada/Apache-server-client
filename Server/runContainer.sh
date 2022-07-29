docker build -t lujainabusada/apacheserver  /home/lujainabusada/ApacheServerClient/Server
docker run -d -it -p 8899:80 --name httpd-container lujainabusada/apacheserver
