FROM debian:buster

RUN apt-get update && \
    apt-get -y install  php \
                        php-fpm\
                        php-mysql \
                        mariadb-client \
                        wget

COPY ./conf/ .
COPY ./tools/ .

RUN chmod +777 start.sh

ENTRYPOINT [ "bash", "start.sh" ]
