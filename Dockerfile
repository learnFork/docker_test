FROM nginx
MAINTAINER 755836844@qq.com
# RUN apt-get update -y
# RUN apt-get upgrade -y

ADD dist/ /usr/share/nginx/html

RUN rm -f /etc/nginx/conf.d/default.conf
ADD vhost.conf /etc/nginx/conf.d

EXPOSE 80
