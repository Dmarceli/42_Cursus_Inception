FROM debian:buster

RUN apt-get update && \
    apt-get -y install  php \
                        php-fpm\
                        php-mysql \
                        vim \
                        wget

# Install WordPress
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz

RUN mkdir -p /var/www/wordpress && \
        cp -r /wordpress/* /var/www/wordpress/

#COPY ./conf/wp-config.php /var/www/html/wp-config.php

#COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
#EXPOSE 9000

RUN mkdir /run/php
COPY ./conf/* .

RUN chmod +777 start.sh

ENTRYPOINT [ "bash", "start.sh" ]



