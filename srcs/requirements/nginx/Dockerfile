FROM	debian:buster

RUN		apt-get update
RUN		apt-get install -y nginx \
                openssl

RUN mkdir /etc/nginx/ssl

COPY ./conf/default /etc/nginx/sites-available

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=42Lisboa/OU=student/CN=dmarceli.42.fr"

RUN mkdir -p /run/nginx

ENTRYPOINT ["nginx", "-g", "daemon off;"]