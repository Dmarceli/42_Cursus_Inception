FROM	debian:buster

RUN		apt-get update
RUN     apt install wget php php-fpm php-mysqli php-common net-tools vim -y

#get WordPress
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz

COPY ./conf/start.sh /
RUN chmod +x start.sh

ENTRYPOINT [ "bash", "start.sh" ]