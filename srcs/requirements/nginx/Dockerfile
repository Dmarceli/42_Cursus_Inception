FROM	debian:buster

RUN		apt-get update
RUN		apt-get install -y nginx \
                openssl

RUN mkdir /etc/nginx/ssl

COPY ./conf/nginx.conf /etc/nginx/conf.d


RUN mkdir -p /run/nginx

ENTRYPOINT ["nginx", "-g", "daemon off;"]