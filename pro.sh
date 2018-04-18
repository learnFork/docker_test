#/bin/bash
docker stop shijh.nginx
docker rm shijh.nginx
docker rmi shijh.nginx

docker build -t shijh.nginx  .

docker run -d --name shijh.nginx -p 8888:80 shijh.nginx
