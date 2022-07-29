docker build -t lujainabusada/apacheclient  /home/lujainabusada/ApacheServerClient/Client
docker run -d -it  --name httpd-client lujainabusada/apacheclient
